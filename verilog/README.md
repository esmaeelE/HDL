# verilog

```
sudo apt install iverilog verilator gtkwave
```

https://circuitfever.com/verilog-simulation-using-iverilog-and-gtkwave

https://www.chipverify.com/tutorials/verilog

http://techmore.in/verilog/verilog-install


# Run

Compile
```
iverilog -o and_gate_tb and_gate.v and_gate_tb.v
```

```
vvp and_gate_tb
```

```
gtkwave and_gate.vcd
```