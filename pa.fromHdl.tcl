
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BinaryCounter -dir "/home/sfn/Documents/xilinx/project/BinaryCounter/planAhead_run_5" -part xc6slx9tqg144-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "pinmap.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ClockDivider.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {top_vhdl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top top_vhdl $srcset
add_files [list {pinmap.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-2
