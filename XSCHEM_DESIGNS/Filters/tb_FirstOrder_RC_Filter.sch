v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -540 150 -490 150 {lab=in2}
N -410 150 -380 150 {lab=out}
N -450 200 -450 230 {lab=gnd}
N -680 220 -680 250 {lab=in1}
N -930 310 -930 390 {lab=GND}
N -930 390 -790 390 {lab=GND}
N -790 390 -680 390 {lab=GND}
N -680 310 -680 390 {lab=GND}
N -930 220 -930 250 {lab=in2}
C {FirstOrder_RC_Filter.sym} -430 190 0 0 {name=x1}
C {vsource.sym} -680 280 0 0 {name=V1 value="PULSE(0 1 0 10p 10p 10n 20n)" savecurrent=false}
C {lab_pin.sym} -540 150 0 0 {name=p1 sig_type=std_logic lab=in2}
C {lab_pin.sym} -380 150 2 0 {name=p2 sig_type=std_logic lab=out}
C {lab_pin.sym} -450 230 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {gnd.sym} -790 390 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -680 220 0 0 {name=p4 sig_type=std_logic lab=in1}
C {simulator_commands_shown.sym} -830 -670 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.tran 1p 10n
.ac dec 100 1k 100G

.control
run

setplot tran1
plot v(in2) v(out) xlabel 'Time (ns)' ylabel 'Magnitude (v)'

setplot ac1
*AC plottig
plot db(v(out)/v(in2)) xlabel 'Frequency (Hz)' ylabel 'Gain (dB)'
plot phase(v(out)/v(in2)) xlabel 'Frequency (Hz)' ylabel 'Phase (Degree)'
set color0 = white
set color1 = black

.endc
.end
"}
C {sky130_fd_pr/corner.sym} -1020 -650 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -930 280 0 0 {name=V2 value="DC 0 AC 1 sin(0 0.5 1G)" savecurrent=false}
C {lab_pin.sym} -930 220 0 0 {name=p5 sig_type=std_logic lab=in2}
