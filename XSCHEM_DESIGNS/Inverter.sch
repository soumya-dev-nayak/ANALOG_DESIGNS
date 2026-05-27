v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 0 -10 100 {lab=vout}
N -90 -30 -50 -30 {lab=vin}
N -90 -30 -90 130 {lab=vin}
N -90 130 -50 130 {lab=vin}
N -10 -30 30 -30 {lab=avdd}
N 30 -30 70 -30 {lab=avdd}
N 70 -90 70 -30 {lab=avdd}
N -10 -90 70 -90 {lab=avdd}
N -10 -90 -10 -60 {lab=avdd}
N -10 130 80 130 {lab=avss}
N 80 130 80 180 {lab=avss}
N -10 180 80 180 {lab=avss}
N -10 160 -10 180 {lab=avss}
N -10 -110 -10 -90 {lab=avdd}
N -10 180 -10 200 {lab=avss}
N -120 50 -90 50 {lab=vin}
N -10 50 30 50 {lab=vout}
C {sky130_fd_pr/pfet_01v8.sym} -30 -30 0 0 {name=M1
W=1.7
L=0.3
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -30 130 0 0 {name=M2
W=0.85
L=0.3
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -120 50 0 0 {name=p1 lab=vin}
C {opin.sym} 30 50 0 0 {name=p2 lab=vout}
C {iopin.sym} -10 -110 3 0 {name=p3 lab=avdd}
C {iopin.sym} -10 200 3 1 {name=p4 lab=avss}
