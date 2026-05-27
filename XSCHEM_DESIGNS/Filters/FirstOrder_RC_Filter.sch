v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -30 50 -30 {lab=out}
N 50 -30 50 -10 {lab=out}
N -110 -30 -80 -30 {lab=in}
N 50 50 50 60 {lab=gref}
C {res.sym} -50 -30 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 50 20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} -110 -30 0 0 {name=p1 lab=in
}
C {opin.sym} 50 -30 0 0 {name=p2 lab=out}
C {iopin.sym} 50 60 3 1 {name=p3 lab=gref}
