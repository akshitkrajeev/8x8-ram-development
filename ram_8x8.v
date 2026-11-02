`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2026 06:00:44 PM
// Design Name: 
// Module Name: ram_8x8
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


module ram_8x8(

);
reg clk,rst,wr_enb;
reg [2:0] wr_addr;
reg [7:0] data_in;
reg [2:0] rd_addr;
wire [7:0] data_out;

ram_8x8_dev dut(clk,rst,wr_enb,wr_addr,data_in,rd_addr,data_out);

initial begin

{clk,rst,wr_addr,wr_enb,data_in,rd_addr} = 0;

end

always #5 clk = ~clk;

initial
begin
rst = 1;
#10;
rst = 0;
wr_enb = 1;
wr_addr = 3'b100;
data_in = 5;
#10;
wr_enb = 1;
wr_addr = 3'b101;
data_in = 10;
#10;
wr_enb = 0;
rd_addr = 3'b100;
#10;
wr_enb = 0;
rd_addr = 3'b101;

end

endmodule

