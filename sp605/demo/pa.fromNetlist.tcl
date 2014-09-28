
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name demo -dir "/home/daniw/data/ele/prj/fpga-test/sp605/demo/planAhead_run_1" -part xc6slx45tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/daniw/data/ele/prj/fpga-test/sp605/demo/demo.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/daniw/data/ele/prj/fpga-test/sp605/demo} }
set_property target_constrs_file "demo.ucf" [current_fileset -constrset]
add_files [list {demo.ucf}] -fileset [get_property constrset [current_run]]
link_design
