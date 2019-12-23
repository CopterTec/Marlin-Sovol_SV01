;FLAVOR:Marlin
;PID AUTOTUNE
M140 S60                        ; Bed temperature 60°C
M105                            ; Report Temperatures
M190 S60                        ; Wait for Bed Temperature
G28                             ; Auto Home
G92 E0                          ; Reset Extruder
G0 F3000 X145.0 Y127.5 Z25.0    ; Park extruder at the middle
M106 S100                       ; Turn-on fan
M303 C10 S200 U                 ; Autotune 200°C 10x and save
M140 S0                         ; Turn-off bed
M106 S0                         ; Turn-off fan
M84 E X Y Z                     ; Disable all steppers
