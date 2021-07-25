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
--  with Ada.Numerics;               use Ada.Numerics;

with Ada.Numerics.Long_Elementary_Functions; use Ada.Numerics.Long_Elementary_Functions;

package body Vehicle_Task_Type is

   task body Vehicle_Task is

      Vehicle_No               : Positive;
      Has_Globe_Info           : Boolean := False;          -- Identifies if the vehicle has found the Globe

      Vehicle_Message          : Inter_Vehicle_Messages;    -- Vehicle's actual local and most updated Message
      Vehicle_Message_Receiver : Inter_Vehicle_Messages;    -- Vehicle's temporary message for comparison use only with the vehicle's actual message

      Radius : constant Long_Float := 0.2;                  -- Radius discribes the distance kept between the Globe and the vehicle
      Axis   : Natural;                                     -- Decision maker to keep vehicle circulate at a fixed axis of either x, y or z
      Angle  : Long_Float;                                  -- Records Vehicle's Turning Angle

      -- Gets the Distance Between two points
      function Distance_Between (C : Positions; P : Positions) return Long_Float is
         (Sqrt (((C (x) - P (x))**2 + (C (y) - P (y))**2 + (C (z) - P (z))**2)));

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

      Axis  := Natural (Vehicle_No) mod 3;                  -- Choosing Axis accoriding to Vehicle's Number
      Angle := Long_Float (Vehicle_No);                     -- Initial Angle according to Vehicle's Number
      Set_Throttle (1.0);

      select

         Flight_Termination.Stop;

      then abort

         Outer_task_loop : loop

            Wait_For_Next_Physics_Update;
            -- Your vehicle should respond to the world here: sense, listen, talk, act?

            declare
               Globe_Found : constant Energy_Globes := Energy_Globes_Around;    -- Looking for Globe around on every loop
            begin

               -- If a message was sent, then the message will be compared by the vehicle's message and the latest message will be kept.
               if Messages_Waiting then
                  Receive (Vehicle_Message_Receiver);

                  if Vehicle_Message_Receiver.Globe_Found_At > Vehicle_Message.Globe_Found_At then
                     Has_Globe_Info                 := True;
                     Vehicle_Message.Globe_Found_At := Vehicle_Message_Receiver.Globe_Found_At;
                     Vehicle_Message.Globe_Position := Vehicle_Message_Receiver.Globe_Position;
                  end if;

                  Send (Vehicle_Message);
               end if;

               -- If the Globe was found then it's information will be sent to other Vehicles
               if Globe_Found'Length > 0 then
                  Has_Globe_Info                 := True;                       -- Stating Globe had been found
                  Vehicle_Message.Globe_Found_At := Clock;                      -- Store the Time for keeping track of the latest message
                  Vehicle_Message.Globe_Position := Globe_Found (1).Position;   -- Storing the Globe's Position
                  Send (Vehicle_Message);

                  -- If the vehicle fuel isn't close to full, then re-fuel
                  if Current_Charge < 0.9 then
                     Set_Throttle (1.0);
                     Set_Destination (Vehicle_Message.Globe_Position);
                     goto End_of_Loop;                                          -- "Continue" the "Outer_task_loop" Loop
                  end if;
                  Angle := Long_Float (Vehicle_No);                             -- Assigning the Initial Angle again, just to reset the counter
               end if;

               if Has_Globe_Info and then (Current_Charge <= 0.25) then         -- If the Charge is low then rush to the Globe for refill

                  Set_Throttle (1.0);
                  Set_Destination (Vehicle_Message.Globe_Position);

               elsif Has_Globe_Info and then (Current_Charge > 0.25) then       -- To circulate around the globe

                  Angle := Angle + 0.02;                                        -- Incrementing the Angle by a small amount

                  -- Set a faster Throttle to move away from Globe if its closer to the Globe
                  Set_Throttle (if Distance_Between (Position, Vehicle_Message.Globe_Position) >= 0.2 then 0.5 else 1.0);

                  if Axis = 0 then
                     -- Swarm at the constant of Globe's x Axis
                     Set_Destination (Vehicle_Message.Globe_Position + (
                                      0.0,
                                      Radius * Real_Elementary_Functions.Cos (Angle),
                                      Radius * Real_Elementary_Functions.Sin (Angle)));
                  elsif Axis = 1 then
                     -- Swarm at the constant of Globe's y Axis
                     Set_Destination (Vehicle_Message.Globe_Position + (
                                      Radius * Real_Elementary_Functions.Cos (Angle),
                                      0.0,
                                      Radius * Real_Elementary_Functions.Sin (Angle)));
                  elsif Axis = 2 then
                     -- Swarm at the constant of Globe's z Axis
                     Set_Destination (Vehicle_Message.Globe_Position + (
                                      Radius * Real_Elementary_Functions.Cos (Angle),
                                      Radius * Real_Elementary_Functions.Sin (Angle),
                                      0.0));
                  end if;
               end if;

               << End_of_Loop >>
            end;

         end loop Outer_task_loop;

      end select;

   exception

      when E : others => Show_Exception (E);

   end Vehicle_Task;

end Vehicle_Task_Type;
