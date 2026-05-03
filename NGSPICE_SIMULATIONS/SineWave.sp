* Sine Wave Generator

V1 out 0 SIN(0 1 1k)

.tran 0.01m 5m

.control
run
plot v(out)
.endc

.end
