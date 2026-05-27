v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1110 -1880 1910 -1480 {flags=graph
y1=-0.41666667
y2=1.5833333
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.1619304e-07
x2=1.1619308e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 4"
node="i(vd1)
v-sweep"}
N 900 -1360 900 -1280 {lab=GND}
N 900 -1480 900 -1420 {lab=#net1}
N 770 -1390 860 -1390 {lab=G}
N 740 -1610 740 -1570 {lab=D}
N 660 -1610 660 -1570 {lab=G}
N 660 -1510 660 -1480 {lab=GND}
N 740 -1510 740 -1480 {lab=GND}
N 900 -1390 900 -1360 {lab=GND}
C {title-2.sym} -80 110 0 0 {name=l1 author="Soumya Dev Nayak" rev=1.0 lock=false}
C {vsource.sym} 660 -1540 0 0 {name=Vg value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 880 -1390 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {ammeter.sym} 900 -1510 0 0 {name=Vd1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 900 -1540 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_pin.sym} 770 -1390 0 0 {name=p4 sig_type=std_logic lab=G}
C {vsource.sym} 740 -1540 0 0 {name=Vd value=0 savecurrent=false}
C {lab_pin.sym} 660 -1610 0 0 {name=p6 sig_type=std_logic lab=G}
C {lab_pin.sym} 740 -1610 0 0 {name=p7 sig_type=std_logic lab=D}
C {sky130_fd_pr/corner.sym} 1160 -1290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 590 -1220 0 0 {name=Commands only_toplevel=false value="
.control
dc Vd1 0 2 0.01 Vg 0 2 0.2
write Test_NMOS_Charac.raw
.endc
"
}
C {gnd.sym} 660 -1480 0 0 {name=l2 lab=GND}
C {gnd.sym} 740 -1480 0 0 {name=l3 lab=GND}
C {gnd.sym} 900 -1280 0 0 {name=l4 lab=GND}
