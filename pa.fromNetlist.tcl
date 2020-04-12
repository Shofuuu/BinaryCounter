
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name BinaryCounter -dir "/home/sfn/Documents/xilinx/project/BinaryCounter/planAhead_run_3" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/sfn/Documents/xilinx/project/BinaryCounter/top_vhdl.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/sfn/Documents/xilinx/project/BinaryCounter} }
set_property target_constrs_file "pinmap.ucf" [current_fileset -constrset]
add_files [list {pinmap.ucf}] -fileset [get_property constrset [current_run]]
link_design
