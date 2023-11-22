`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 11:16:15
// Design Name: 
// Module Name: tb_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb;

    // Parameters
    parameter WIDTH=8;
    
    // Inputs
    reg signed [WIDTH-1:0] d_in;
    
    // Outputs
    wire [WIDTH-1:0] d_out;
    
    // Instantiate the module
    top uut (
        .d_in(d_in),
        .d_out(d_out)
    );
    
    // Clock generation
    reg clk = 0;
    always #5 clk = ~clk;
    
    // Stimulus
    initial begin
        // Initialize inputs
        d_in = 10;
        
        // Apply stimulus
        #10 d_in = 15;
        #10 d_in = 4;
        #10 d_in = 20;
        #10 d_in = 7;
        
        // Add more test cases as needed
        
        #10 $stop; // Stop simulation after some time
    end
    
    // Display results
    always @(posedge clk) begin
        $display("Time=%0t, d_in=%d, d_out=%d", $time, d_in, d_out);
    end
    
endmodule

