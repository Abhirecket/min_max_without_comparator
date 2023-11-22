`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI
// Engineer: Abhishek Kumar kushwaha 
// 
// Create Date: 14.07.2023 12:51:42
// Design Name: 
// Module Name: top
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


module top(
    d_in,
     d_out
    );

    parameter MAX=17, MIN=5,WIDTH=8;
    wire [WIDTH-1:0] max_diff, min_diff;
    input signed [WIDTH-1:0] d_in;
    output [WIDTH-1:0] d_out;
    assign max_diff = MAX - d_in;
    assign min_diff = MIN - d_in;
    
    assign d_out = max_diff[WIDTH-1] ? MAX :(min_diff[WIDTH-1]?d_in: MIN);
    
    
endmodule
