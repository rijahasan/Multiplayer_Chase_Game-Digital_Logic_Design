`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 11:11:15 AM
// Design Name: 
// Module Name: vga_top
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


module vga_top(
input clk,U,D,L,R,PL,PR,PU,PD,start,
output h_sync,v_sync,
output [3:0] red,green,blue
    );
    wire clkd, v_trig, video_on;
    wire [9:0] h_count;
    wire[9:0] v_count;
    wire[9:0] x_loc;
    wire[9:0] y_loc;
    wire [9:0] banao;
    //reg [3:0]out;
    clk_div h1 (clk,clkd);
    h_counter hc(clkd,h_count,v_trig);
    v_counter vc(clkd,v_trig,v_count);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,banao,h_sync,v_sync,video_on);
//    movefsm mf (clk_d,{U,D,L,R},out);
    pixel_gen pg(clkd,U,D,L,R,PL,PR,PU,PD,start,x_loc,y_loc,banao,video_on,red,green,blue);
endmodule
