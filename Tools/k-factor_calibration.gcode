; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: NaN mm
; Filament: NaN mm
; Created: Mon Dec 23 2019 01:53:13 GMT+0100 (Mitteleuropäische Normalzeit)
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
; Ending Value Factor = 0.3
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = false
; Print Size X = 90 mm
; Print Size Y = 124.99999999999999 mm
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
G1 X95 Y65 F6000 ; move to start
G1 X95 Y190 E12.4726 F1800 ; print line
G1 X95.72 Y190 F6000 ; move to start
G1 X95.72 Y65 E12.4726 F1800 ; print line
G1 E-3 F3000 ; retract
;
; print anchor frame
;
G1 X105 Y62 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X105 Y168 E4.6538 F1200 ; print line
G1 X105.48 Y168 F6000 ; move to start
G1 X105.48 Y62 E4.6538 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X185 Y62 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X185 Y168 E4.6538 F1200 ; print line
G1 X184.52 Y168 F6000 ; move to start
G1 X184.52 Y62 E4.6538 F1200 ; print line
G1 E-3 F3000 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X105 Y65 F6000 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y65 E0.7982 F1200 ; print line
G1 X165 Y65 E1.5965 F4200 ; print line
G1 X185 Y65 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y70 F6000 ; move to start
M900 K0.11 ; set K-factor
M117 K0.11 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y70 E0.7982 F1200 ; print line
G1 X165 Y70 E1.5965 F4200 ; print line
G1 X185 Y70 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y75 F6000 ; move to start
M900 K0.12 ; set K-factor
M117 K0.12 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y75 E0.7982 F1200 ; print line
G1 X165 Y75 E1.5965 F4200 ; print line
G1 X185 Y75 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y80 F6000 ; move to start
M900 K0.13 ; set K-factor
M117 K0.13 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y80 E0.7982 F1200 ; print line
G1 X165 Y80 E1.5965 F4200 ; print line
G1 X185 Y80 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y85 F6000 ; move to start
M900 K0.14 ; set K-factor
M117 K0.14 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y85 E0.7982 F1200 ; print line
G1 X165 Y85 E1.5965 F4200 ; print line
G1 X185 Y85 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y90 F6000 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y90 E0.7982 F1200 ; print line
G1 X165 Y90 E1.5965 F4200 ; print line
G1 X185 Y90 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y95 F6000 ; move to start
M900 K0.16 ; set K-factor
M117 K0.16 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y95 E0.7982 F1200 ; print line
G1 X165 Y95 E1.5965 F4200 ; print line
G1 X185 Y95 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y100 F6000 ; move to start
M900 K0.17 ; set K-factor
M117 K0.17 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y100 E0.7982 F1200 ; print line
G1 X165 Y100 E1.5965 F4200 ; print line
G1 X185 Y100 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y105 F6000 ; move to start
M900 K0.18 ; set K-factor
M117 K0.18 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y105 E0.7982 F1200 ; print line
G1 X165 Y105 E1.5965 F4200 ; print line
G1 X185 Y105 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y110 F6000 ; move to start
M900 K0.19 ; set K-factor
M117 K0.19 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y110 E0.7982 F1200 ; print line
G1 X165 Y110 E1.5965 F4200 ; print line
G1 X185 Y110 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y115 F6000 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y115 E0.7982 F1200 ; print line
G1 X165 Y115 E1.5965 F4200 ; print line
G1 X185 Y115 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y120 F6000 ; move to start
M900 K0.21 ; set K-factor
M117 K0.21 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y120 E0.7982 F1200 ; print line
G1 X165 Y120 E1.5965 F4200 ; print line
G1 X185 Y120 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y125 F6000 ; move to start
M900 K0.22 ; set K-factor
M117 K0.22 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y125 E0.7982 F1200 ; print line
G1 X165 Y125 E1.5965 F4200 ; print line
G1 X185 Y125 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y130 F6000 ; move to start
M900 K0.23 ; set K-factor
M117 K0.23 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y130 E0.7982 F1200 ; print line
G1 X165 Y130 E1.5965 F4200 ; print line
G1 X185 Y130 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y135 F6000 ; move to start
M900 K0.24 ; set K-factor
M117 K0.24 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y135 E0.7982 F1200 ; print line
G1 X165 Y135 E1.5965 F4200 ; print line
G1 X185 Y135 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y140 F6000 ; move to start
M900 K0.25 ; set K-factor
M117 K0.25 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y140 E0.7982 F1200 ; print line
G1 X165 Y140 E1.5965 F4200 ; print line
G1 X185 Y140 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y145 F6000 ; move to start
M900 K0.26 ; set K-factor
M117 K0.26 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y145 E0.7982 F1200 ; print line
G1 X165 Y145 E1.5965 F4200 ; print line
G1 X185 Y145 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y150 F6000 ; move to start
M900 K0.27 ; set K-factor
M117 K0.27 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y150 E0.7982 F1200 ; print line
G1 X165 Y150 E1.5965 F4200 ; print line
G1 X185 Y150 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y155 F6000 ; move to start
M900 K0.28 ; set K-factor
M117 K0.28 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y155 E0.7982 F1200 ; print line
G1 X165 Y155 E1.5965 F4200 ; print line
G1 X185 Y155 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y160 F6000 ; move to start
M900 K0.29 ; set K-factor
M117 K0.29 ; 
G1 E3 F3000 ; un-retract
G1 X125 Y160 E0.7982 F1200 ; print line
G1 X165 Y160 E1.5965 F4200 ; print line
G1 X185 Y160 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X105 Y165 F6000 ; move to start
;
; mark the test area for reference
M117 K0 ;
M900 K0 ; set K-factor 0
G1 X125 Y170 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X125 Y190 E0.7982 F1200 ; print line
G1 E-3 F3000 ; retract
G1 X165 Y170 F6000 ; move to start
G1 E3 F3000 ; un-retract
G1 X165 Y190 E0.7982 F1200 ; print line
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