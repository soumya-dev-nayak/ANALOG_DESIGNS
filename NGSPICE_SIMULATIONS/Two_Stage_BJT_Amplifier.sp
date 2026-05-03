* Two-stage Cascaded BJT Amplifier (RC Coupled)

* Power supply
VCC Vcc 0 DC 12

* Input signal (small AC signal)
Vin In 0 AC 1 SIN(0 10m 1k)

* =====================
* Stage 1
* =====================
R1 Vcc B1 100k
R2 B1 0 20k
Rc1 Vcc C1 4.7k
Re1 E1 0 1k
Ce1 E1 0 10u

Q1 C1 B1 E1 QNPN

* Coupling capacitor between stage 1 and stage 2
Cc C1 B2 10u

* =====================
* Stage 2
* =====================
R3 Vcc B2 100k
R4 B2 0 20k
Rc2 Vcc C2 4.7k
Re2 E2 0 1k
Ce2 E2 0 10u

Q2 C2 B2 E2 QNPN

* Output load
RL C2 0 10k

* =====================
* BJT Model
* =====================
.model QNPN NPN (IS=1E-15 BF=100)

* =====================
* Analysis
* =====================

* AC Analysis
.ac dec 100 10 1Meg

* Transient Analysis
.tran 0.1m 10m

* Output control
.control
run
plot v(In) v(C2)
.endc

.end
