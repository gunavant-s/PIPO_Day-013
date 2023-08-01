`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 01.08.2023 07:21:28
// Design Name: 
// Module Name: tb_pipo
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


module tb_pipo;
    reg clk;
    reg [3:0]d;
    reg reset;
    wire [3:0]q;
    wire q_bar;
    
    pipo DUT(.clk(clk),
             .d(d),
             .reset(reset),
             .q(q),
             .qb(q_bar)
             );
    
    initial begin
        clk = 0;
        d = 4'b1011;
        reset = 1;
        #10 d = 4'b1001;
        #10 d = 4'b1110;
        #10 d = 4'b0111;
        #10 d = 4'b1111;
        #10 d = 4'b0011;
        #10 $stop;
     end
     
     always #5 clk = ~clk;
     always #50 reset = ~reset;   
        
endmodule
