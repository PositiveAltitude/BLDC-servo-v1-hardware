kikit panelize -p kikit_preset.json bldc_servo_v1.kicad_pcb panel.kicad_pcb
kikit fab jlcpcb --assembly --schematic bldc_servo_v1.kicad_sch panel.kicad_pcb fabrication
kicad-cli sch export bom --fields 'LCSC,${QUANTITY}' --group-by 'LCSC' bldc_servo_v1.kicad_sch -o fabrication/LCSC-bom.csv