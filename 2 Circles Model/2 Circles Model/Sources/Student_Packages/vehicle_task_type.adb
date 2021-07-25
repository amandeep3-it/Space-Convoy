-- Suggestions for packages which might be useful:

with Ada.Real_Time;              use Ada.Real_Time;
--  with Ada.Text_IO;                use Ada.Text_IO;
with Exceptions;                 use Exceptions;
with Real_Type;                  use Real_Type;
--  with Generic_Sliding_Statistics;
--  with Rotations;                  use Rotations;
with Vectors_3D;                 use Vectors_3D;
with Vehicle_Interface;          use Vehicle_Interface;
with Vehicle_Message_Type;       use Vehicle_Message_Type;
with Swarm_Structures;           use Swarm_Structures;
with Swarm_Structures_Base;      use Swarm_Structures_Base;

with Ada.Numerics.Long_Elementary_Functions; use Ada.Numerics.Long_Elementary_Functions;

package body Vehicle_Task_Type is

   task body Vehicle_Task is

      Vehicle_No : Positive;
      Has_Globe_Info           : Boolean := False;          -- Identifies if the vehicle has found the Globe

      Vehicle_Message          : Inter_Vehicle_Messages;    -- Vehicle's actual local and most updated Message
      Vehicle_Message_Receiver : Inter_Vehicle_Messages;    -- Vehicle's temporary message for comparison use only with the vehicle's actual message

      Radius : Long_Float;                                  -- Radius discribes the distance kept between the Globe and the vehicle
      Axis   : Natural;                                     -- Decisions maker to keeping vehicles at a specific axis of either x, y or
      Angle  : Long_Float;                                  -- Record's Vehicle's Turning Angle

      -- Check if two points are close to each other
      function Around_Position (C : Positions; P : Positions) return Boolean is
        (Sqrt (((C (x) - P (x))**2 + (C (y) - P (y))**2 + (C (z) - P (z))**2)) <= 0.1);

      -- Indicate the state of the Vehicle
      At_Point   : Integer := 0;
      At_Point_X : Long_Float := 0.0;

   begin

      -- You need to react to this call and provide your task_id.
      -- You can e.g. employ the assigned vehicle number (Vehicle_No)
      -- in communications with other vehicles.

      accept Identify (Set_Vehicle_No : Positive; Local_Task_Id : out Task_Id) do
         Vehicle_No     := Set_Vehicle_No;
         Local_Task_Id  := Current_Task;
      end Identify;

      -- Replace the rest of this task with your own code.
      -- Maybe synchronizing on an external event clock like "Wait_For_Next_Physics_Update",
      -- yet you can synchronize on e.g. the real-time clock as well.

      -- Without control this vehicle will go for its natural swarming instinct.
      Vehicle_Message.Max_Vehicle_No := Vehicle_No;         -- Initally set the Max ID as its own
      Radius := (Long_Float (Vehicle_No) * 0.25) / 100.0;
      Axis   := Natural (Vehicle_No) mod 2;                 -- Choosing Axis accoriding to Vehicle's Number
      Angle  := Long_Float (Vehicle_No);                    -- Initial Angle according to Vehicle's Number

      select

         Flight_Termination.Stop;

      then abort

         Outer_task_loop : loop

            Wait_For_Next_Physics_Update;

            -- Your vehicle should respond to the world here: sense, listen, talk, act?

            declare
               Globe_Found : constant Energy_Globes := Energy_Globes_Around;    -- Looking for Globe around on every loop
            begin

               Set_Throttle (if At_Point = 1 then 1.0 else 0.5);

               -- If a message was sent, then the message will be compared by the vehicle's message and the latest data will be kept.
               if Messages_Waiting then
                  Receive (Vehicle_Message_Receiver);

                  -- Check and keep the most latest data of the Globe
                  if Vehicle_Message_Receiver.Globe_Found_At > Vehicle_Message.Globe_Found_At then
                     Has_Globe_Info                 := True;
                     Vehicle_Message.Globe_Found_At := Vehicle_Message_Receiver.Globe_Found_At;
                     Vehicle_Message.Globe_Position := Vehicle_Message_Receiver.Globe_Position;
                  end if;

                  -- Get the Maximum ID found
                  if Vehicle_Message_Receiver.Max_Vehicle_No > Vehicle_Message.Max_Vehicle_No then
                     Vehicle_Message.Max_Vehicle_No := Vehicle_Message_Receiver.Max_Vehicle_No;
                     Radius := (Long_Float (Vehicle_Message.Max_Vehicle_No) * 0.25) / 100.0;        -- Modify the Radius accordngly to the Max ID found
                  end if;

                  Send (Vehicle_Message);
               end if;

               -- If the Globe was found then it's information will be sent to other Vehicles
               if Globe_Found'Length > 0 then
                  Has_Globe_Info                 := True;                       -- Stating Globe had been found
                  Vehicle_Message.Globe_Found_At := Clock;                      -- Store the Time for keeping track of the latest message
                  Vehicle_Message.Globe_Position := Globe_Found (1).Position;
                  Send (Vehicle_Message);

                  -- If the Vehicle has re-fueled then set its state to point "Point from"
                  if At_Point = 1 and then Current_Charge > 0.9 then
                     At_Point := 2;
                  -- Go towards the Globe for re-fuel
                  elsif At_Point = 1 then
                     Set_Destination (Vehicle_Message.Globe_Position);
                     goto End_of_Loop;
                  end if;
               end if;

               Angle := Angle + 0.02;                                           -- Incrementing the Angle by a small amount
               if At_Point = 2 then

                  declare
                     ChP : constant Positions := (At_Point_X, Vehicle_Message.Globe_Position (y), Vehicle_Message.Globe_Position (z) - (Radius * 4.0));
                  begin
                     -- Check if Vehicle has finished reaching the point "Point from"
                     if Around_Position (Position, ChP) then
                        At_Point := 0;
                        At_Point_X := 0.0;
                     end if;
                     Set_Destination (ChP);
                  end;

               -- If the Charge is low then rush to the Globe for refill
               elsif Has_Globe_Info and then (At_Point = 0 or else At_Point = 1) and then (Current_Charge <= 0.5) then

                  if At_Point_X = 0.0 then
                     At_Point_X := Position (x);
                  end if;

                  declare
                     ChP : constant Positions := (At_Point_X, Vehicle_Message.Globe_Position (y), Vehicle_Message.Globe_Position (z) + (Radius * 4.0));
                  begin
                     -- Check if Vehicle has finsihed reaching the point "Point to"
                     if At_Point = 0 and then Around_Position (Position, ChP) then
                        At_Point := 1;
                     elsif At_Point = 0 then
                        Set_Destination (ChP);
                     elsif At_Point = 1 then
                        Set_Destination (Vehicle_Message.Globe_Position);
                     end if;
                  end;

               elsif Has_Globe_Info and then (Current_Charge > 0.25) then

                  Set_Destination (Vehicle_Message.Globe_Position + (
                                   (Radius * 2.0) * Real_Elementary_Functions.Cos (Angle) + (if Axis = 0 then -((Radius * 2.0) + 0.05) else (Radius + 0.3)),
                                   Radius * Real_Elementary_Functions.Sin (Angle),
                                   0.0));

               end if;

               << End_of_Loop >>

            end;

         end loop Outer_task_loop;

      end select;

   exception
      when E : others => Show_Exception (E);

   end Vehicle_Task;

end Vehicle_Task_Type;

--                    Set_Destination (Vehicle_Message.Globe_Position - (0.0, 0.0, (Radius * 2.0)));
--
--                    if Around_Position (Position, Vehicle_Message.Globe_Position - (0.0, 0.0, (Radius * 2.0))) then
--                       At_Point := 0;
--                    end if;

--                    if At_Point = 0 and then Around_Position (Position, Vehicle_Message.Globe_Position + (0.0, 0.0, (Radius * 2.0))) then
--                       At_Point := 1;
--                    end if;
--                    Set_Destinationet_Destination (Vehicle_Message.Globe_Position + (0.0, 0.0, (if At_Point = 0 then (Radius * 2.0) else 0.0)));
