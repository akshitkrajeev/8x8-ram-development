`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2026 06:49:36 PM
// Design Name: 
// Module Name: ram_8x8_dev
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


module ram_8x8_dev(
input clk,rst,wr_enb,
input [2:0] wr_addr,
input [7:0] data_in,
input [2:0] rd_addr,
output reg [7:0] data_out
    );
    
    reg [7:0] mem[7:0];
    integer i;
    always@(posedge clk or rst) begin
    if(rst) begin
    for(i = 0; i < 8; i = i + 1) 
    mem[i] <= 0;
    end
    
    else if(wr_enb == 1)
    mem[wr_addr] <= data_in;
    
    else if(wr_enb == 0)
    data_out <= mem[rd_addr];
    end
   
    

endmodule
