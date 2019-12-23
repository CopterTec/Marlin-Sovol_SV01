; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: NaN mm
; Filament: NaN mm
; Created: Mon Dec 23 2019 01:20:29 GMT+0100 (Mitteleuropäische Normalzeit)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 200 °C
; Bed Temperature = 60 °C
; Retraction Distance = 3 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 280 mm
; Bed Size Y = 255 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 6000 mm/min
; Retract Speed = 3000 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0.1
; Ending Value Factor = 0.2
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = M420 L0 S1;
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S200 ; set nozzle temperature but do not wait
M190 S60 ; set bed temperature and wait
M109 S200 ; block waiting for nozzle temp
G28 ; home all axes with heated bed
M420 L0 S1;; Activate bed leveling compensation
G21 ; set units to millimeters
M204 P500 ; set acceleration
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X140 Y127.5 F6000 ; move to start
G1 Z0.2 F1200 ; move to layer height
;
; prime nozzle
;
G1 X91 Y90 F6000 ; move to start
G1 X91 Y165 E7.4835 F1800 ; print line
G1 X91.72 Y165 F6000 ; move to start
G1 X91.72 Y90 E7.4835 F1800 ; print line
G1 E-3 F3000 ; retract
;
; print anchor frame
;
G1 X101 Y87 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X101 Y143 E2.4586 F1200 ; print line
G1 X101.48 Y143 F6000 ; move to start
G1 X101.48 Y87 E2.4586 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X181 Y87 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X181 Y143 E2.4586 F1200 ; print line
G1 X180.52 Y143 F6000 ; move to start
G1 X180.52 Y87 E2.4586 F1200 ; print line
G1 E-3 F3000 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X101 Y90 F6000 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y90 E0.7982 F1200 ; print line
G1 X161 Y90 E1.5965 F4200 ; print line
G1 X181 Y90 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y95 F6000 ; move to start
M900 K0.11 ; set K-factor
M117 K0.11 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y95 E0.7982 F1200 ; print line
G1 X161 Y95 E1.5965 F4200 ; print line
G1 X181 Y95 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y100 F6000 ; move to start
M900 K0.12 ; set K-factor
M117 K0.12 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y100 E0.7982 F1200 ; print line
G1 X161 Y100 E1.5965 F4200 ; print line
G1 X181 Y100 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y105 F6000 ; move to start
M900 K0.13 ; set K-factor
M117 K0.13 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y105 E0.7982 F1200 ; print line
G1 X161 Y105 E1.5965 F4200 ; print line
G1 X181 Y105 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y110 F6000 ; move to start
M900 K0.14 ; set K-factor
M117 K0.14 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y110 E0.7982 F1200 ; print line
G1 X161 Y110 E1.5965 F4200 ; print line
G1 X181 Y110 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y115 F6000 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y115 E0.7982 F1200 ; print line
G1 X161 Y115 E1.5965 F4200 ; print line
G1 X181 Y115 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y120 F6000 ; move to start
M900 K0.16 ; set K-factor
M117 K0.16 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y120 E0.7982 F1200 ; print line
G1 X161 Y120 E1.5965 F4200 ; print line
G1 X181 Y120 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y125 F6000 ; move to start
M900 K0.17 ; set K-factor
M117 K0.17 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y125 E0.7982 F1200 ; print line
G1 X161 Y125 E1.5965 F4200 ; print line
G1 X181 Y125 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y130 F6000 ; move to start
M900 K0.18 ; set K-factor
M117 K0.18 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y130 E0.7982 F1200 ; print line
G1 X161 Y130 E1.5965 F4200 ; print line
G1 X181 Y130 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y135 F6000 ; move to start
M900 K0.19 ; set K-factor
M117 K0.19 ; 
G1 E3 F3000 ; un-retract
G1 X121 Y135 E0.7982 F1200 ; print line
G1 X161 Y135 E1.5965 F4200 ; print line
G1 X181 Y135 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X101 Y140 F6000 ; move to start
;
; mark the test area for reference
M117 K0 ;
M900 K0 ; set K-factor 0
G1 X121 Y145 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X121 Y165 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X161 Y145 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X161 Y165 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X183 Y88 F6000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E3 F3000 ; un-retract
G1 X185 Y88 E0.0798 F1200 ; 0
G1 X185 Y90 E0.0798 F1200 ; 0
G1 X185 Y92 E0.0798 F1200 ; 0
G1 X183 Y92 E0.0798 F1200 ; 0
G1 X183 Y90 E0.0798 F1200 ; 0
G1 X183 Y88 E0.0798 F1200 ; 0
G1 E-3 F3000 ; retract
G1 X186 Y88 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X186 Y88.4 E0.016 F1200 ; dot
G1 E-3 F3000 ; retract
G1 X187 Y88 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X187 Y90 E0.0798 F1200 ; 1
G1 X187 Y92 E0.0798 F1200 ; 1
G1 E-3 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X183 Y98 F6000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E3 F3000 ; un-retract
G1 X185 Y98 E0.0798 F1200 ; 0
G1 X185 Y100 E0.0798 F1200 ; 0
G1 X185 Y102 E0.0798 F1200 ; 0
G1 X183 Y102 E0.0798 F1200 ; 0
G1 X183 Y100 E0.0798 F1200 ; 0
G1 X183 Y98 E0.0798 F1200 ; 0
G1 E-3 F3000 ; retract
G1 X186 Y98 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X186 Y98.4 E0.016 F1200 ; dot
G1 E-3 F3000 ; retract
G1 X187 Y98 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X187 Y100 E0.0798 F1200 ; 1
G1 X187 Y102 E0.0798 F1200 ; 1
G1 E-3 F3000 ; retract
G1 X188 Y98 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X188 Y100 F6000 ; move to start
G1 X188 Y102 F6000 ; move to start
G1 X190 Y102 E0.0798 F1200 ; 2
G1 X190 Y100 E0.0798 F1200 ; 2
G1 X188 Y100 E0.0798 F1200 ; 2
G1 X188 Y98 E0.0798 F1200 ; 2
G1 X190 Y98 E0.0798 F1200 ; 2
G1 E-3 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X183 Y108 F6000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E3 F3000 ; un-retract
G1 X185 Y108 E0.0798 F1200 ; 0
G1 X185 Y110 E0.0798 F1200 ; 0
G1 X185 Y112 E0.0798 F1200 ; 0
G1 X183 Y112 E0.0798 F1200 ; 0
G1 X183 Y110 E0.0798 F1200 ; 0
G1 X183 Y108 E0.0798 F1200 ; 0
G1 E-3 F3000 ; retract
G1 X186 Y108 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X186 Y108.4 E0.016 F1200 ; dot
G1 E-3 F3000 ; retract
G1 X187 Y108 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X187 Y110 E0.0798 F1200 ; 1
G1 X187 Y112 E0.0798 F1200 ; 1
G1 E-3 F3000 ; retract
G1 X188 Y108 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X188 Y110 F6000 ; move to start
G1 X188 Y112 F6000 ; move to start
G1 X188 Y110 E0.0798 F1200 ; 4
G1 X190 Y110 E0.0798 F1200 ; 4
G1 X190 Y112 F6000 ; move to start
G1 X190 Y110 E0.0798 F1200 ; 4
G1 X190 Y108 E0.0798 F1200 ; 4
G1 E-3 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X183 Y118 F6000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E3 F3000 ; un-retract
G1 X185 Y118 E0.0798 F1200 ; 0
G1 X185 Y120 E0.0798 F1200 ; 0
G1 X185 Y122 E0.0798 F1200 ; 0
G1 X183 Y122 E0.0798 F1200 ; 0
G1 X183 Y120 E0.0798 F1200 ; 0
G1 X183 Y118 E0.0798 F1200 ; 0
G1 E-3 F3000 ; retract
G1 X186 Y118 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X186 Y118.4 E0.016 F1200 ; dot
G1 E-3 F3000 ; retract
G1 X187 Y118 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X187 Y120 E0.0798 F1200 ; 1
G1 X187 Y122 E0.0798 F1200 ; 1
G1 E-3 F3000 ; retract
G1 X188 Y118 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X188 Y120 F6000 ; move to start
G1 X190 Y120 E0.0798 F1200 ; 6
G1 X190 Y118 E0.0798 F1200 ; 6
G1 X188 Y118 E0.0798 F1200 ; 6
G1 X188 Y120 E0.0798 F1200 ; 6
G1 X188 Y122 E0.0798 F1200 ; 6
G1 X190 Y122 E0.0798 F1200 ; 6
G1 E-3 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X183 Y128 F6000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E3 F3000 ; un-retract
G1 X185 Y128 E0.0798 F1200 ; 0
G1 X185 Y130 E0.0798 F1200 ; 0
G1 X185 Y132 E0.0798 F1200 ; 0
G1 X183 Y132 E0.0798 F1200 ; 0
G1 X183 Y130 E0.0798 F1200 ; 0
G1 X183 Y128 E0.0798 F1200 ; 0
G1 E-3 F3000 ; retract
G1 X186 Y128 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X186 Y128.4 E0.016 F1200 ; dot
G1 E-3 F3000 ; retract
G1 X187 Y128 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X187 Y130 E0.0798 F1200 ; 1
G1 X187 Y132 E0.0798 F1200 ; 1
G1 E-3 F3000 ; retract
G1 X188 Y128 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X188 Y130 F6000 ; move to start
G1 X190 Y130 E0.0798 F1200 ; 8
G1 X190 Y128 E0.0798 F1200 ; 8
G1 X188 Y128 E0.0798 F1200 ; 8
G1 X188 Y130 E0.0798 F1200 ; 8
G1 X188 Y132 E0.0798 F1200 ; 8
G1 X190 Y132 E0.0798 F1200 ; 8
G1 X190 Y130 E0.0798 F1200 ; 8
G1 E-3 F3000 ; retract
G1 Z0.3 F1200 ; zHop
;
; finish
;
M104 S0 ; turn off hotend
M140 S0 ; turn off bed
G1 Z30 X280 Y255 F6000 ; move away from the print
M84 ; disable motors
M502 ; resets parameters from ROM
M501 ; resets parameters from EEPROM
;