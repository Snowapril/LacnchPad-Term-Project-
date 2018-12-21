
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LaunchPad -dir "C:/Users/cse/Desktop/LaunchPad-Term-Project-/ISE/LaunchPad/planAhead_run_5" -part xc6slx45fgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LaunchPad.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_XOR2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_OR3.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_OR2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_NOT.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_NOR4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_DFF.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_AND3.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_AND2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Counter10.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_NOR2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/eight_counter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Decoder2bit.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Counter100.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_ZERO.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_MUX8.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_MUX2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/PNU_CLK_DIV.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/OR_7_7bits.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Mux12bit_4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_9.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_8.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_7.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_5.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_3.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_12.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_11.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_10.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_1.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Decoder3bit.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Counter10000.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/AND_7bit.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_OR4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/ToneConverter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Segments8_Handler.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/RGB_Handler.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/LED_Handler.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/event_6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Counter20000.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_OR8.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../../../Program Files/System Centroid/Flowrian R7/Library/PNULib/sources/PNU_DFF_Ce.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/register.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/PriorityEncoder3.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/PianoPlay.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/mod_converter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/EventHandler.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/encoder_12_to_4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/Accumulator.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../Flowrian/LaunchPad.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top LaunchPad $srcset
add_files [list {LaunchPad.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45fgg484-3
