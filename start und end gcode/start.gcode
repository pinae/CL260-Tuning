M140 S{material_bed_temperature}
M140 S{material_bed_temperature_layer_0}
M104 S{material_print_temperature}
M109 S{material_print_temperature_layer_0}
G28 ;Home
G1 Z15.0 F400 ;Move the platform down 15mm
G92 E0
G0 X18 Y20 Z0.3 F3500
G1 F400 X19 E1 ;extrude 1mm of feed stock
G1 F400 Z0.6 E5 ;extrude 4mm of feed stock and move a tiny bit up
G1 F300 Z1 E12 ;extrude 7mm while moving up
G1 F300 Z3 E25 ;extrude 13mm while moving up
G0 Z15 ;move up
G92 E0
