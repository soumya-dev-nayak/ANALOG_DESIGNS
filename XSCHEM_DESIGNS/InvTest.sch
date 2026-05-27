v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 290 -540 1090 -140 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=k
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -250 160 -250 200 {lab=GND}
N -250 200 -170 200 {lab=GND}
N -170 160 -170 200 {lab=GND}
N 0 60 0 100 {lab=GND}
N -0 -110 0 -60 {lab=Vdd}
N -250 60 -250 100 {lab=Vdd}
N -170 60 -170 100 {lab=Vin}
N 100 -0 210 -0 {lab=Vout}
N -170 -0 -50 -0 {lab=Vin}
C {Inverter.sym} 70 0 0 0 {name=x1}
C {vsource.sym} -250 130 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -170 130 0 0 {name=V2 value="PULSE(0 1.2 0 1n 1n 1u 2u)" savecurrent=false}
C {gnd.sym} -250 200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 0 100 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} 0 -110 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -250 60 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -170 0 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 210 0 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} -350 -180 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -510 -180 0 0 {name=s1 only_toplevel=false value="
tran 1u 10u
.save all
endc
"}
C {lab_pin.sym} -170 60 0 0 {name=p1 sig_type=std_logic lab=Vin}
