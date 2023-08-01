`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 01.08.2023 07:14:29
// Design Name: 
// Module Name: pipo
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


module pipo(input [3:0]d,
            input clk,
            input reset,
            output reg [3:0]q,
            output qb
            );
     
     assign qb = ~q;
     
     always @(posedge clk or negedge reset) begin
        if(!reset)
            q <= 4'b0;
        else
            q[3:0] <= d[3:0];
     end
     
            
endmodule
