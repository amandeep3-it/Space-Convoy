pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__swarm.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__swarm.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E068 : Short_Integer; pragma Import (Ada, E068, "system__os_lib_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exception_table_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__io_exceptions_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__strings_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "ada__containers_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__secondary_stack_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "interfaces__c_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings__maps_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps__constants_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "system__object_reader_E");
   E043 : Short_Integer; pragma Import (Ada, E043, "system__dwarf_lines_E");
   E035 : Short_Integer; pragma Import (Ada, E035, "system__traceback__symbolic_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__numerics_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "interfaces__c__strings_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "system__task_info_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "ada__tags_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "ada__streams_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "system__file_control_block_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "system__finalization_root_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "ada__finalization_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "system__file_io_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "ada__streams__stream_io_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "system__storage_pools_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "system__finalization_masters_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "system__storage_pools__subpools_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "ada__strings__unbounded_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__calendar_E");
   E326 : Short_Integer; pragma Import (Ada, E326, "ada__calendar__delays_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "ada__real_time_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__text_io_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "system__assertions_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "system__pool_global_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "system__random_seed_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "system__tasking__initialization_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__tasking__protected_objects_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "system__tasking__protected_objects__entries_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "system__tasking__queuing_E");
   E403 : Short_Integer; pragma Import (Ada, E403, "system__tasking__stages_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "system__tasking__async_delays_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "barrier_type_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "bzip2_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "exceptions_E");
   E381 : Short_Integer; pragma Import (Ada, E381, "generic_protected_E");
   E198 : Short_Integer; pragma Import (Ada, E198, "gl_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "gl__buffer_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "gl__io_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "gl__materials_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "gl__math_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "gl__geometry_E");
   E314 : Short_Integer; pragma Import (Ada, E314, "gl__frustums_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "glu_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "gl__errors_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "gl__textures_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "gl__buffer__texture_coords_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "gl__skins_E");
   E316 : Short_Integer; pragma Import (Ada, E316, "gl__skinned_geometry_E");
   E320 : Short_Integer; pragma Import (Ada, E320, "glut_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "glut_2d_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "generic_sliding_statistics_E");
   E324 : Short_Integer; pragma Import (Ada, E324, "graphics_framerates_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "matrices_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "quaternions_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "screenshots_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "vectors_3d_E");
   E411 : Short_Integer; pragma Import (Ada, E411, "vectors_3d_lf_E");
   E413 : Short_Integer; pragma Import (Ada, E413, "vectors_conversions_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "zip_streams_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "zip_E");
   E300 : Short_Integer; pragma Import (Ada, E300, "zip__headers_E");
   E304 : Short_Integer; pragma Import (Ada, E304, "zip__crc_E");
   E290 : Short_Integer; pragma Import (Ada, E290, "unzip_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "unzip__decompress_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "unzip__decompress__huffman_E");
   E306 : Short_Integer; pragma Import (Ada, E306, "unzip__streams_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "globe_3d_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "globe_3d__textures_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "globe_3d__portals_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "globe_3d__options_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "globe_3d__math_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "globe_3d__software_anti_aliasing_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "glut__devices_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "game_control_E");
   E366 : Short_Integer; pragma Import (Ada, E366, "actors_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "glut__windows_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "graphics_structures_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "graphics_configuration_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "keyboard_E");
   E349 : Short_Integer; pragma Import (Ada, E349, "spaceship_p_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "sphere_p_E");
   E347 : Short_Integer; pragma Import (Ada, E347, "models_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "graphics_data_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "graphics_setup_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "graphics_opengl_E");
   E379 : Short_Integer; pragma Import (Ada, E379, "swarm_structures_base_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "swarm_configurations_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "swarm_configuration_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "vehicle_task_type_E");
   E405 : Short_Integer; pragma Import (Ada, E405, "vehicle_interface_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "swarm_structures_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "swarm_data_E");
   E389 : Short_Integer; pragma Import (Ada, E389, "swarm_control_E");
   E418 : Short_Integer; pragma Import (Ada, E418, "swarm_control_concurrent_generic_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "callback_procedures_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E405 := E405 - 1;
      E389 := E389 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "swarm_control__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "swarm_data__finalize_spec");
      begin
         E390 := E390 - 1;
         F2;
      end;
      E392 := E392 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "swarm_structures__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "vehicle_interface__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "swarm_structures_base__finalize_spec");
      begin
         E379 := E379 - 1;
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "graphics_structures__finalize_spec");
      begin
         E327 := E327 - 1;
         F6;
      end;
      E364 := E364 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "glut__windows__finalize_spec");
      begin
         F7;
      end;
      E201 := E201 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "globe_3d__textures__finalize_body");
      begin
         E281 := E281 - 1;
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "globe_3d__finalize_spec");
      begin
         F9;
      end;
      E306 := E306 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "unzip__streams__finalize_spec");
      begin
         F10;
      end;
      E302 := E302 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "zip_streams__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "glut__finalize_body");
      begin
         E320 := E320 - 1;
         F12;
      end;
      E213 := E213 - 1;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gl__skins__finalize_spec");
      begin
         F13;
      end;
      E263 := E263 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gl__textures__finalize_spec");
      begin
         F14;
      end;
      E238 := E238 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gl__geometry__finalize_spec");
      begin
         F15;
      end;
      E230 := E230 - 1;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gl__buffer__finalize_spec");
      begin
         F16;
      end;
      E394 := E394 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "barrier_type__finalize_spec");
      begin
         F17;
      end;
      E167 := E167 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F18;
      end;
      E216 := E216 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "system__pool_global__finalize_spec");
      begin
         F19;
      end;
      E178 := E178 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "ada__text_io__finalize_spec");
      begin
         F20;
      end;
      E240 := E240 - 1;
      declare
         procedure F21;
         pragma Import (Ada, F21, "ada__strings__unbounded__finalize_spec");
      begin
         F21;
      end;
      E222 := E222 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "system__storage_pools__subpools__finalize_spec");
      begin
         F22;
      end;
      E224 := E224 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "system__finalization_masters__finalize_spec");
      begin
         F23;
      end;
      E269 := E269 - 1;
      declare
         procedure F24;
         pragma Import (Ada, F24, "ada__streams__stream_io__finalize_spec");
      begin
         F24;
      end;
      declare
         procedure F25;
         pragma Import (Ada, F25, "system__file_io__finalize_body");
      begin
         E182 := E182 - 1;
         F25;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           False, False, False, True, True, False, True, True, 
           False, True, True, True, True, False, True, True, 
           False, False, True, False, True, True, False, True, 
           True, True, True, False, True, True, True, True, 
           False, False, True, False, True, True, False, True, 
           False, False, True, True, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           True, False, False, False, True, True, True, True, 
           True, True, False),
         Count => (0, 0, 0, 1, 2, 1, 3, 2, 7, 0),
         Unknown => (False, False, False, False, False, False, True, True, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E021 := E021 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E064 := E064 + 1;
      Ada.Strings'Elab_Spec;
      E048 := E048 + 1;
      Ada.Containers'Elab_Spec;
      E036 := E036 + 1;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.Soft_Links'Elab_Body;
      E011 := E011 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E068 := E068 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E054 := E054 + 1;
      System.Secondary_Stack'Elab_Body;
      E015 := E015 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E043 := E043 + 1;
      E074 := E074 + 1;
      E050 := E050 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E035 := E035 + 1;
      E076 := E076 + 1;
      Ada.Numerics'Elab_Spec;
      E096 := E096 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E119 := E119 + 1;
      System.Task_Info'Elab_Spec;
      E129 := E129 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E141 := E141 + 1;
      Ada.Streams'Elab_Spec;
      E172 := E172 + 1;
      System.File_Control_Block'Elab_Spec;
      E183 := E183 + 1;
      System.Finalization_Root'Elab_Spec;
      E174 := E174 + 1;
      Ada.Finalization'Elab_Spec;
      E170 := E170 + 1;
      System.File_Io'Elab_Body;
      E182 := E182 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E269 := E269 + 1;
      System.Storage_Pools'Elab_Spec;
      E220 := E220 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E224 := E224 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E222 := E222 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E240 := E240 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E104 := E104 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E326 := E326 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E113 := E113 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E178 := E178 + 1;
      System.Assertions'Elab_Spec;
      E192 := E192 + 1;
      System.Pool_Global'Elab_Spec;
      E216 := E216 + 1;
      System.Random_Seed'Elab_Body;
      E102 := E102 + 1;
      System.Tasking.Initialization'Elab_Body;
      E153 := E153 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E163 := E163 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E167 := E167 + 1;
      System.Tasking.Queuing'Elab_Body;
      E161 := E161 + 1;
      System.Tasking.Stages'Elab_Body;
      E403 := E403 + 1;
      System.Tasking.Async_Delays'Elab_Body;
      E407 := E407 + 1;
      Barrier_Type'Elab_Spec;
      E394 := E394 + 1;
      E294 := E294 + 1;
      E147 := E147 + 1;
      E381 := E381 + 1;
      E198 := E198 + 1;
      GL.BUFFER'ELAB_SPEC;
      E230 := E230 + 1;
      GL.IO'ELAB_SPEC;
      GL.IO'ELAB_BODY;
      E265 := E265 + 1;
      E273 := E273 + 1;
      GL.MATH'ELAB_BODY;
      E248 := E248 + 1;
      GL.GEOMETRY'ELAB_SPEC;
      E238 := E238 + 1;
      E314 := E314 + 1;
      E209 := E209 + 1;
      GL.ERRORS'ELAB_SPEC;
      E207 := E207 + 1;
      GL.TEXTURES'ELAB_SPEC;
      GL.TEXTURES'ELAB_BODY;
      E263 := E263 + 1;
      GL.BUFFER.TEXTURE_COORDS'ELAB_SPEC;
      E234 := E234 + 1;
      GL.SKINS'ELAB_SPEC;
      GL.SKINS'ELAB_BODY;
      E213 := E213 + 1;
      E316 := E316 + 1;
      GLUT'ELAB_BODY;
      E320 := E320 + 1;
      E318 := E318 + 1;
      E185 := E185 + 1;
      Graphics_Framerates'Elab_Body;
      E324 := E324 + 1;
      E331 := E331 + 1;
      E333 := E333 + 1;
      E374 := E374 + 1;
      E335 := E335 + 1;
      E411 := E411 + 1;
      E413 := E413 + 1;
      Zip_Streams'Elab_Spec;
      Zip'Elab_Spec;
      Zip_Streams'Elab_Body;
      E302 := E302 + 1;
      Zip.Headers'Elab_Spec;
      E300 := E300 + 1;
      E298 := E298 + 1;
      E304 := E304 + 1;
      Unzip'Elab_Spec;
      Unzip.Decompress.Huffman'Elab_Spec;
      E296 := E296 + 1;
      E290 := E290 + 1;
      E292 := E292 + 1;
      Unzip.Streams'Elab_Spec;
      Unzip.Streams'Elab_Body;
      E306 := E306 + 1;
      GLOBE_3D'ELAB_SPEC;
      GLOBE_3D.TEXTURES'ELAB_SPEC;
      E277 := E277 + 1;
      GLOBE_3D.MATH'ELAB_BODY;
      E275 := E275 + 1;
      GLOBE_3D.TEXTURES'ELAB_BODY;
      E281 := E281 + 1;
      GLOBE_3D'ELAB_BODY;
      E201 := E201 + 1;
      E279 := E279 + 1;
      E370 := E370 + 1;
      GLUT.DEVICES'ELAB_SPEC;
      Game_Control'Elab_Spec;
      E368 := E368 + 1;
      E366 := E366 + 1;
      GLUT.WINDOWS'ELAB_SPEC;
      GLUT.WINDOWS'ELAB_BODY;
      E364 := E364 + 1;
      E362 := E362 + 1;
      Graphics_Structures'Elab_Spec;
      E327 := E327 + 1;
      Graphics_Configuration'Elab_Spec;
      E196 := E196 + 1;
      Keyboard'Elab_Spec;
      E372 := E372 + 1;
      E349 := E349 + 1;
      E351 := E351 + 1;
      Models'Elab_Spec;
      Models'Elab_Body;
      E347 := E347 + 1;
      Graphics_Data'Elab_Spec;
      E345 := E345 + 1;
      E358 := E358 + 1;
      Graphics_Opengl'Elab_Body;
      E354 := E354 + 1;
      Swarm_Structures_Base'Elab_Spec;
      E379 := E379 + 1;
      Swarm_Configurations'Elab_Spec;
      E378 := E378 + 1;
      Swarm_Configuration'Elab_Spec;
      E376 := E376 + 1;
      Vehicle_Interface'Elab_Spec;
      Swarm_Structures'Elab_Spec;
      E392 := E392 + 1;
      Swarm_Data'Elab_Spec;
      E390 := E390 + 1;
      Swarm_Control'Elab_Spec;
      E389 := E389 + 1;
      E405 := E405 + 1;
      Vehicle_Task_Type'Elab_Body;
      E399 := E399 + 1;
      E418 := E418 + 1;
      Callback_Procedures'Elab_Body;
      E095 := E095 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_swarm");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\barrier_type.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\bzip2.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\exceptions.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\generic_protected.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\generic_realtime_buffer.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-extended.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-buffer.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-io.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-materials.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-math.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-geometry.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-frustums.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\glu.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-errors.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-buffer-general.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-textures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-buffer-texture_coords.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-skins.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\gl-skinned_geometry.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\glut.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\glut_2d.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\real_type.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\generic_sliding_statistics.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\graphics_framerates.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\matrices.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\quaternions.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\screenshots.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_xd.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_2d.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_3d.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\rotations.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_3d_lf.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_4d.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_xd_i.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_2d_i.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_2d_n.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_2d_p.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vectors_conversions.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\zip_streams.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\zip-headers.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\zip.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\zip-crc.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\unzip-decompress-huffman.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\unzip.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\unzip-decompress.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\unzip-streams.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d-options.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d-math.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d-textures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d-portals.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d-software_anti_aliasing.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\globe_3d-stars_sky.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\game_control.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\actors.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\glut-windows.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\glut-devices.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\graphics_structures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\graphics_configuration.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\keyboard.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\spaceship_p.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\sphere_p.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\models.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\graphics_data.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\graphics_setup.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\graphics_opengl.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_structures_base.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_configurations.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_configuration.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vehicle_message_type.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_structures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_data.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_control.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vehicle_interface.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\vehicle_task_type.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm_control_concurrent_generic.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\callback_procedures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\swarm.o
   --   -LC:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\
   --   -LC:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 1\Assignment_1_template_0.93\Assignment_1_template\Build\for_development\
   --   -LC:/gnat/2017/lib/gcc/i686-pc-mingw32/6.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
