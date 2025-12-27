.PHONY: all run gtkwave

all: run

tb.vvp: test/tb.sv cpu.sv
	iverilog -g2012 -o $@ $^

sim: tb.vvp
	vvp tb.vvp

show:
	gtkwave tb.vcd &

