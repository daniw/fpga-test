
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name demo -dir "/home/daniw/data/ele/prj/fpga-test/sp605/demo/planAhead_run_2" -part xc6slx45tfgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "demo.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {inv.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk_div.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {blink.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {demo.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top demo $srcset
add_files [list {demo.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45tfgg484-3
