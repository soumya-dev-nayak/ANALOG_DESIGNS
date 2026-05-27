.title FIRST ORDER RC CRCUIT WITH PARAMERTER 

.global vdd gnd
.temp 27

*CIRCUIT ELEMENT DECLARATION
R1	in	out	1k
C1	t1	gnd	1p
Vcm1	out	t1	DC	0


*SOURCE DECLARATION

*for step input 0 --> 1
*Vin	in	gnd	DC	PULSE(0 1 10p 10p 0.5 1)
 
*for Step input 1 --> 0
*Vin	in	gnd	DC	PULSE(1 0 10p 10p 0.5 1)

*for pulsed input 0 -->1 and then continue the cycle ( T >> RC)
*vin	in	gnd	DC	PULSE(0 1 0 10p 10p 10n 20n)

*for pulsed input 0->1 and T << RC
*vin	in	gnd	DC	PULSE(0 1 0 1f 1f 0.05n 0.1n)



*AC INPUT
*  			            SIN(Voffset Vamplitude Freq Delay DampingFactor Phase)
vin	in	gnd	DC 0 AC 1 sin(0		0.5	1G)

.tran 1p 10n

*AC ANALYSIS
.ac dec 100 1k 100G

.control
run


setplot ac1


*Gain Plot
plot db(v(out)/v(in)) xlabel 'Frequency (Hz)' ylabel 'Gain (dB)'

*Phase Plot
plot phase(v(out)/v(in)) xlabel 'Frequncy (Hz)' ylabel 'Phase (Degree)'



setplot tran1


*Plotting of the Voltage and Current
plot v(in) v(out) xlabel 'Time (ns)' ylabel 'Magnitude (v)'
plot i(Vcm1)      xlabel 'Time (ns)' ylabel 'Average Current(Amps)'	


*Parameter Measurement
meas tran V_max MAX v(out)
meas tran V_min MIN v(out)


let Vtau = 0.63212 * V_max
meas tran tau FIND time WHEN v(out)=Vtau

let Iavg = avg(I(Vcm1))
plot Iavg xlabel 'Time (ns)' ylabel 'Average Current(Amps)'
meas tran Iavg MAX Iavg

let v10 = V_min + 0.1*(V_max - V_min)
let v90 = V_min + 0.9*(V_max - V_min)


meas tran t10r WHEN v(out) = v10 RISE=1
meas tran t90r WHEN v(out) = v90 RISE=1

let RiseTime = t90r - t10r

meas tran t90f WHEN v(out) = v90 FALL=1
meas tran t10f WHEN v(out) = v10 FALL=1

let FallTime = t10f - t90f


*PARAMETER PRINTING
print V_max
print V_min
print Vtau
print Iavg
print RiseTime
print FallTime

.endc
.end


