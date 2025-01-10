module Testbench;

            reg A, B;
            wire Y;
        
            // Instantiate the ANDGate module
            ANDGate and_gate (Y, A, B);
        
            initial begin
                $dumpfile("and_gate.vcd");
                $dumpvars(0,Testbench);                
                // Test cases
                A = 0; B = 0;
                #10; // Wait for 10 time units
                A = 0; B = 1;
                #10;
                A = 1; B = 0;
                #10;
                A = 1; B = 1;
                #10;
        
                // End simulation
                $finish;
            end
        
            initial begin
                $monitor("At time %t, A = %b, B = %b, Y = %b", $time, A, B, Y);
            end
        endmodule
        