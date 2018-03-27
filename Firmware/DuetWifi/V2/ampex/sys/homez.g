; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool on Fri Nov 24 2017 21:32:58 GMT+0100 (Mitteleuropäische Zeit)

; Lift Z relatively to current position
G91
G1 Z15 F2000 S2

; Back to absolute positioning
G90

; Activate the z switch
M98 P"/macros/probe_scripts/activate_z_switch.g"

; Go to first bed probe point and home the Z axis
G1 X322.4 Y317.3 F9000
M98 P"/macros/print_scripts/z_current_low.g"
G30 Z-99999
M98 P"/macros/print_scripts/z_current_high.g"

; Lift Z to 5mm
G0 Z5 F3000