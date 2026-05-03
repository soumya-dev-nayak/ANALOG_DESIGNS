* Simple RC circuit
V1 in 0 DC 5
R1 in out 1k
C1 out 0 1uF

.tran 1ms 10ms
.control
run
plot v(out)
.endc

.end
