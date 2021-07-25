-- Suggestions for packages which might be useful:

with Ada.Real_Time;         use Ada.Real_Time;
--  with Swarm_Size;            use Swarm_Size;
--  with Vectors_3D;            use Vectors_3D;
with Swarm_Structures_Base;     use Swarm_Structures_Base;

package Vehicle_Message_Type is

   -- Replace this record definition by what your vehicles need to communicate.
   type Inter_Vehicle_Messages is record

      -- Globe
      Globe_Position : Positions;            -- Keep track of the latest Globe Position
      Globe_Found_At : Time     := Clock;    -- Keep track of the latest Globe Found Time for comparison purposes

   end record;

end Vehicle_Message_Type;
