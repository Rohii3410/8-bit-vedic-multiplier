set_db init_lib_search_path /home/cad/digital/180nm/dig/lib/
     
set_db library  ./lib/slow.lib
set_db library  ./lib/typical.lib
set_db library  ./lib/fast.lib
   
read_hdl {./vedic8bit.v}

elaborate vedic8bit

read_sdc ./vedic8bit.sdc


set_db syn_generic_effort medium
set_db syn_map_effort  medium
set_db syn_opt_effort  medium

syn_generic
syn_map
syn_opt

write_hdl > vedic8bit_netlist.v
write_sdc  > vedic8bit_output.sdc
   
gui_show

report timing -unconstrained > vedic8bit_timing_uncon.rpt
report timing > vedic8bit_timing.rpt
report power > vedic8bit_power.rpt
report area > vedic8bit_area.rpt
report gates > vedic8bit_gates.rpt

