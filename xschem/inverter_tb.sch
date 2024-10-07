v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -180 100 -150 {
lab=VDD}
N 150 -20 180 -20 {
lab=VDD}
N -280 -20 -280 -0 {
lab=VIN}
N -280 -20 -150 -20 {
lab=VIN}
N 150 20 180 20 {
lab=GND}
N 180 20 180 40 {
lab=GND}
N 150 0 200 0 {
lab=VOUT}
N 100 -180 180 -180 {
lab=VDD}
N 180 -180 180 -20 {
lab=VDD}
C {inverter.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -280 30 0 0 {name=V1 value="pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)" savecurrent=false}
C {vsource.sym} 100 -120 0 0 {name=V2 value=2.5 savecurrent=false}
C {gnd.sym} -280 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 100 -90 0 0 {name=l2 lab=GND}
C {gnd.sym} 180 40 0 0 {name=l3 lab=GND}
C {code_shown.sym} 330 -10 0 0 {name=s1 only_toplevel=false value="
.include /home/kai/efabless/mag/inverter.spice
.tran 0.01n 1u
.saveall"}
C {sky130_fd_pr/corner.sym} 320 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_pin.sym} 180 -180 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 -20 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 200 0 2 0 {name=p1 sig_type=std_logic lab=VOUT}
