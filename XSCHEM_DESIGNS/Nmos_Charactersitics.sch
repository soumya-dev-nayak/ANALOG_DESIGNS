v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 780 -400 1580 0 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 780 0 1580 400 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -70 -10 -30 -10 {lab=Vgs}
N 10 -10 10 20 {lab=GND}
N 10 -70 10 -40 {lab=Vds}
N 10 20 10 170 {lab=GND}
N -210 -10 -70 -10 {lab=Vgs}
N -210 170 10 170 {lab=GND}
N 180 50 180 170 {lab=GND}
N 10 170 180 170 {lab=GND}
N 180 -90 180 -10 {lab=Vds}
N 10 -90 180 -90 {lab=Vds}
N 10 -90 10 -70 {lab=Vds}
N -210 -10 -210 30 {lab=Vgs}
N -210 90 -210 170 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 -10 0 0 {name=M1
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
C {vsource.sym} -210 60 0 0 {name=Vgs value=0 savecurrent=false}
C {vsource.sym} 180 20 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} 10 170 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/corner.sym} -550 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} -530 -330 0 0 {name=s1 only_toplevel=false value="
.dc Vds 0 1.8 0.5 Vgs 0 1.8 0.3
.save all
.end
"}
C {ipin.sym} -210 -10 0 0 {name=p1 lab=Vgs}
C {opin.sym} 180 -90 0 0 {name=p2 lab=Vds}
C {launcher.sym} 620 0 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Nmos_Charactersitics.raw tran"
}
