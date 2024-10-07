v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -80 0 -30 {
lab=VOUT}
N -60 0 -40 0 {
lab=VIN}
N -60 -110 -60 0 {
lab=VIN}
N -60 -120 -40 -120 {
lab=VIN}
N 0 -120 20 -120 {
lab=VDD}
N 20 -160 20 -120 {
lab=VDD}
N 0 -160 20 -160 {
lab=VDD}
N 0 -160 0 -150 {
lab=VDD}
N 0 -0 20 0 {
lab=VSS}
N 20 0 20 40 {
lab=VSS}
N -0 40 20 40 {
lab=VSS}
N -0 30 0 40 {
lab=VSS}
N 0 -60 40 -60 {
lab=VOUT}
N -60 -120 -60 -110 {
lab=VIN}
N 20 -160 30 -160 {
lab=VDD}
N 20 40 30 40 {
lab=VSS}
N -0 -90 -0 -80 {
lab=VOUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -20 0 0 0 {name=M1
W=1
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -120 0 0 {name=M2
W=1
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {ipin.sym} -60 -60 0 0 {name=p1 lab=VIN}
C {opin.sym} 40 -60 0 0 {name=p2 lab=VOUT}
C {iopin.sym} 30 -160 0 0 {name=p3 lab=VDD}
C {iopin.sym} 30 40 0 0 {name=p4 lab=VSS}
