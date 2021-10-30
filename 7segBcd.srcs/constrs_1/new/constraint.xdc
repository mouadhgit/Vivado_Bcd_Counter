create_clock -period 80.000 -name clk -waveform {0.000 40.000} [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" }]
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {outseg[5]}]
set_property PACKAGE_PIN Y18 [get_ports {outseg[0]}]
set_property PACKAGE_PIN Y19 [get_ports {outseg[1]}]
set_property PACKAGE_PIN Y16 [get_ports {outseg[2]}]
set_property PACKAGE_PIN Y17 [get_ports {outseg[3]}]
set_property PACKAGE_PIN U18 [get_ports {outseg[4]}]
set_property PACKAGE_PIN U19 [get_ports {outseg[5]}]
set_property PACKAGE_PIN W18 [get_ports {outseg[6]}]
