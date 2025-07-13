`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 02:10:51 PM
// Design Name: 
// Module Name: pixel
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

module pixel_gen(
input clk_d,U,D,L,R,PL,PR,PU,PD,
input start,
input [9:0] pixel_x,
input [9:0] pixel_y,
input [9:0] banao,
input video_on,
output reg [3:0] red = 0,
output reg  [3:0] green = 0,
output reg [3:0] blue = 0
    ); 
reg col = 0;
reg [9:0] pleftright=560;
reg [9:0] pupdown=1;
reg [9:0] updown = 1;
reg [9:0] leftright = 1;
reg [9:0] LR_laser = 0;
reg [9:0] timerinc=0;
reg [9:0] timer_end = 0;
reg [9:0] ghost_won = 0;
MovementFSM mf (banao,U,D,L,R,updown, leftright);

always @(posedge banao) begin

//pacman movement
    if (PD)
    begin
     //if ((updown > -1 && updown < 320)  && 
     if ((pleftright > 0 && pleftright < 10 && pupdown > 0 && pupdown < 320)  || 
(pleftright > 75 && pleftright < 100 && pupdown >0 && pupdown < 85) || 
(pleftright > 75 && pleftright < 95 && pupdown >237 && pupdown < 320) ||
(pleftright > 155 && pleftright < 175 && pupdown > 78 && pupdown < 160) ||
(pleftright > 235 && pleftright < 255 && pupdown >158 && pupdown < 240) ||
(pleftright > 315 && pleftright < 335 && pupdown > 78 && pupdown < 320) ||
(pleftright > 395 && pleftright < 415 && pupdown >0 && pupdown < 320) ||
(pleftright > 475 && pleftright < 495 && pupdown > 78 && pupdown < 240) ||
(pleftright > 555 && pleftright < 575 && pupdown >0 && pupdown < 320))
    begin
    pupdown <= pupdown + 1;
    end
    else 
    begin 
    pupdown <= pupdown;
    end
    
    end
//    end
  else if (PU)
   begin
//    //if ((updown > -1 && updown < 320)  && 
   if ((pleftright > 0 && leftright < 10 && updown > 2 && pupdown < 322) || 
(pleftright > 75 && pleftright < 100 && pupdown >2 && pupdown < 82) || 
(pleftright > 75 && pleftright < 95 && pupdown >242 && pupdown < 322) ||
(pleftright > 155 && pleftright < 175 && pupdown > 82 && pupdown < 162) ||
(pleftright > 235 && pleftright < 255 && pupdown >162 && pupdown < 242) ||
(pleftright > 315 && pleftright < 335 && pupdown > 82 && pupdown < 322) ||
(pleftright > 395 && pleftright < 415 && pupdown >2 && pupdown < 322) ||
(pleftright > 475 && pleftright < 495 && pupdown > 82 && pupdown < 242) ||
(pleftright > 555 && pleftright < 575 && pupdown >2 && pupdown < 322))
    begin
    pupdown <= pupdown - 1;
    end
    else 
    begin 
    pupdown <= pupdown;
    end
    end
    else if (PR)     
    begin
     if   ((pupdown >0 && pupdown < 15 &&  pleftright > 80 && pleftright < 560) ||
         (pupdown > 75 && pupdown < 95 && pleftright >80 && pleftright <320) ||
         (pupdown > 75 && pupdown < 95 && pleftright >400 && pleftright <480) ||
         (pupdown > 155 && pupdown < 175 && pleftright >0 && pleftright <320) ||
         //(updown > 235 && updown < 320 && leftright >80 && leftright <320) ||
         (pupdown > 235 && pupdown < 255 && pleftright >80&& pleftright <240) ||
         (pupdown > 235 && pupdown < 255 && pleftright > 315 && pleftright <560) ||
         (pupdown > 315 && pupdown < 335 && pleftright >0 && pleftright <320) ||
         (pupdown > 315 && pupdown < 335 && pleftright >400 && pleftright < 560))
        begin
        pleftright <= pleftright + 1;
        end
        else 
        begin 
        pleftright <= pleftright;
        end
    end
    else if (PL)
    begin
        if  ((pupdown >0 && pupdown < 15 &&  pleftright > 82&& pleftright < 562) ||
         (pupdown > 75 && pupdown < 95 && pleftright >82 && pleftright <322) ||
         (pupdown > 75 && pupdown < 95 && pleftright >402 && pleftright <482) ||
         (pupdown > 155 && pupdown < 175 && pleftright >2 && pleftright <322) ||
         //(updown > 235 && updown < 320 && leftright >82 && leftright <322) ||
         (pupdown > 235 && pupdown < 255 && pleftright >82 && pleftright <242) ||
         (pupdown > 235 && pupdown < 255 && pleftright > 319 && pleftright <562) ||
         (pupdown > 315 && pupdown < 335 && pleftright >2 && pleftright <322) ||
         (pupdown > 315 && pupdown < 335 && pleftright >402 && pleftright < 562 ))
                 begin
        pleftright <= pleftright - 1;
        end
        else 
        begin 
        pleftright <= pleftright;
        end
    end


//ghost movement
    if (D)
    begin
     //if ((updown > -1 && updown < 320)  && 
     if ((leftright > 0 && leftright < 10 && updown > 0 && updown < 320)  || 
(leftright > 75 && leftright < 100 && updown >0 && updown < 85) || 
(leftright > 75 && leftright < 95 && updown >237 && updown < 320) ||
(leftright > 155 && leftright < 175 && updown > 78 && updown < 160) ||
(leftright > 235 && leftright < 255 && updown >158 && updown < 240) ||
(leftright > 315 && leftright < 335 && updown > 78 && updown < 320) ||
(leftright > 395 && leftright < 415 && updown >0 && updown < 320) ||
(leftright > 475 && leftright < 495 && updown > 78 && updown < 240) ||
(leftright > 555 && leftright < 575 && updown >0 && updown < 320))
    begin
    updown <= updown + 1;
    end
    else 
    begin 
    updown <= updown;
    end
    
    end
//    end
  else if (U)
   begin
//    //if ((updown > -1 && updown < 320)  && 
   if ((leftright > 0 && leftright < 10 && updown > 2 && updown < 322) || 
(leftright > 75 && leftright < 100 && updown >2 && updown < 82) || 
(leftright > 75 && leftright < 95 && updown >242 && updown < 322) ||
(leftright > 155 && leftright < 175 && updown > 82 && updown < 162) ||
(leftright > 235 && leftright < 255 && updown >162 && updown < 242) ||
(leftright > 315 && leftright < 335 && updown > 82 && updown < 322) ||
(leftright > 395 && leftright < 415 && updown >2 && updown < 322) ||
(leftright > 475 && leftright < 495 && updown > 82 && updown < 242) ||
(leftright > 555 && leftright < 575 && updown >2 && updown < 322))
    begin
    updown <= updown - 1;
    end
    else 
    begin 
    updown <= updown;
    end
    end
    else if (R)     
    begin
     if   ((updown >0 && updown < 15 &&  leftright > 80 && leftright < 560) ||
         (updown > 75 && updown < 95 && leftright >80 && leftright <320) ||
         (updown > 75 && updown < 95 && leftright >400 && leftright <480) ||
         (updown > 155 && updown < 175 && leftright >0 && leftright <320) ||
         //(updown > 235 && updown < 320 && leftright >80 && leftright <320) ||
         (updown > 235 && updown < 255 && leftright >80&& leftright <240) ||
         (updown > 235 && updown < 255 && leftright > 315 && leftright <560) ||
         (updown > 315 && updown < 335 && leftright >0 && leftright <320) ||
         (updown > 315 && updown < 335 && leftright >400 && leftright < 560))
        begin
        leftright <= leftright + 1;
        end
        else 
        begin 
        leftright <= leftright;
        end
    end
    else if (L)
    begin
        if  ((updown >0 && updown < 15 &&  leftright > 82&& leftright < 562) ||
         (updown > 75 && updown < 95 && leftright >82 && leftright <322) ||
         (updown > 75 && updown < 95 && leftright >402 && leftright <482) ||
         (updown > 155 && updown < 175 && leftright >2 && leftright <322) ||
         //(updown > 235 && updown < 320 && leftright >82 && leftright <322) ||
         (updown > 235 && updown < 255 && leftright >82 && leftright <242) ||
         (updown > 235 && updown < 255 && leftright > 319 && leftright <562) ||
         (updown > 315 && updown < 335 && leftright >2 && leftright <322) ||
         (updown > 315 && updown < 335 && leftright >402 && leftright < 562 ))
                 begin
        leftright <= leftright - 1;
        end
        else 
        begin 
        leftright <= leftright;
        end
    end
    
  if ((pupdown > 35 && pupdown < 130 && pleftright > 0+LR_laser-5 && pleftright < 100+LR_laser+5) || 
(pupdown > 290 && pupdown < 320 && pleftright > 540 - LR_laser && pleftright < 640 - LR_laser) ||
 (leftright-5 > pleftright && pleftright < leftright+5 && updown-5 > pupdown && updown < updown +5 ))
 begin
 col <= 1;
 end
 
    LR_laser <= LR_laser + 1;
 
if (LR_laser == 15)
    begin
    timerinc <= timerinc + 1;
    end
end
//    movefsm mf (clk_d,keys,UDLR);
    always @(posedge clk_d) begin
//    if ((pupdown > 35 && pupdown < 50 && pleftright > 0+LR_laser-5 && pleftright < 100+LR_laser+5) || 
//(pupdown > 290 && pupdown < 305 && pleftright > 540 - LR_laser && pleftright < 640 - LR_laser) ||
// (leftright-5 > pleftright && pleftright < leftright+5 && updown-5 > pupdown && updown < updown +5 ))
if (col == 1)
begin
red <= video_on ? //P
//G
(pixel_x > 40 && pixel_x < 80 && pixel_y > 60  && pixel_y < 220) ||
(pixel_x > 79 && pixel_x < 140 && pixel_y > 60 && pixel_y < 80) ||
(pixel_x > 79 && pixel_x < 120 && pixel_y > 180 && pixel_y < 220) ||
(pixel_x > 119 && pixel_x < 140 && pixel_y > 140 && pixel_y < 220) ||
(pixel_x > 100 && pixel_x < 120 && pixel_y > 140 && pixel_y < 160) ||

//H
(pixel_x > 160&& pixel_x < 200 && pixel_y > 60 && pixel_y < 220) ||
(pixel_x > 199 && pixel_x < 220 && pixel_y > 120 && pixel_y < 160) ||
(pixel_x > 219 && pixel_x < 260 && pixel_y > 60 && pixel_y < 220) ||

//O
(pixel_x > 280 && pixel_x < 320 && pixel_y > 60 && pixel_y < 220) ||
(pixel_x > 319&& pixel_x < 360 && pixel_y > 60 && pixel_y < 100) ||
(pixel_x > 319 && pixel_x < 360 && pixel_y > 180 && pixel_y < 220) ||
(pixel_x > 359 && pixel_x < 380 && pixel_y > 60 && pixel_y < 220) ||

//S
(pixel_x > 400 && pixel_x < 460 && pixel_y > 60 && pixel_y < 140) ||
(pixel_x > 459 && pixel_x < 500 && pixel_y > 60 && pixel_y < 100) ||
(pixel_x > 459  && pixel_x < 500 && pixel_y > 120 && pixel_y < 220) ||
(pixel_x > 400 && pixel_x < 460 && pixel_y > 180 && pixel_y < 220) ||

//T
(pixel_x > 420 && pixel_x < 620 && pixel_y > 60 && pixel_y < 100) ||
(pixel_x > 560 && pixel_x < 580 && pixel_y > 99 && pixel_y < 100) ||



//W
(pixel_x > 160 && pixel_x < 200 && pixel_y > 260 && pixel_y < 420) ||
(pixel_x > 199 && pixel_x < 220 && pixel_y > 340 && pixel_y < 380) ||
(pixel_x > 219 && pixel_x < 240 && pixel_y > 300 && pixel_y < 380) ||
(pixel_x > 239 && pixel_x < 260 && pixel_y > 340 && pixel_y < 380) ||
(pixel_x > 259 && pixel_x < 300 && pixel_y > 260 && pixel_y < 420) ||

//O
(pixel_x > 320 && pixel_x < 380 && pixel_y > 260 && pixel_y < 420) ||
(pixel_x > 379 && pixel_x < 400 && pixel_y > 260 && pixel_y < 280) ||
(pixel_x > 379 && pixel_x < 400 && pixel_y > 400  && pixel_y < 420) ||
(pixel_x > 399 && pixel_x < 440 && pixel_y > 260 && pixel_y < 420) ||

//N
(pixel_x > 460 && pixel_x < 500 && pixel_y > 260 && pixel_y < 420) ||
(pixel_x > 499 && pixel_x < 520 && pixel_y > 260 && pixel_y < 300) ||
(pixel_x > 519 && pixel_x < 560 && pixel_y > 260 && pixel_y < 420) ? 4'hF:4'h0:(4'h0);

blue <= video_on ? //P
//G
(pixel_x > 40 && pixel_x < 80 && pixel_y > 60  && pixel_y < 220) ||
(pixel_x > 79 && pixel_x < 140 && pixel_y > 60 && pixel_y < 80) ||
(pixel_x > 79 && pixel_x < 120 && pixel_y > 180 && pixel_y < 220) ||
(pixel_x > 119 && pixel_x < 140 && pixel_y > 140 && pixel_y < 220) ||
(pixel_x > 100 && pixel_x < 120 && pixel_y > 140 && pixel_y < 160) ||

//H
(pixel_x > 160&& pixel_x < 200 && pixel_y > 60 && pixel_y < 220) ||
(pixel_x > 199 && pixel_x < 220 && pixel_y > 120 && pixel_y < 160) ||
(pixel_x > 219 && pixel_x < 260 && pixel_y > 60 && pixel_y < 220) ||

//O
(pixel_x > 280 && pixel_x < 320 && pixel_y > 60 && pixel_y < 220) ||
(pixel_x > 319&& pixel_x < 360 && pixel_y > 60 && pixel_y < 100) ||
(pixel_x > 319 && pixel_x < 360 && pixel_y > 180 && pixel_y < 220) ||
(pixel_x > 359 && pixel_x < 380 && pixel_y > 60 && pixel_y < 220) ||

//S
(pixel_x > 400 && pixel_x < 460 && pixel_y > 60 && pixel_y < 140) ||
(pixel_x > 459 && pixel_x < 500 && pixel_y > 60 && pixel_y < 100) ||
(pixel_x > 459  && pixel_x < 500 && pixel_y > 120 && pixel_y < 220) ||
(pixel_x > 400 && pixel_x < 460 && pixel_y > 180 && pixel_y < 220) ||

//T
(pixel_x > 420 && pixel_x < 620 && pixel_y > 60 && pixel_y < 100) ||
(pixel_x > 560 && pixel_x < 580 && pixel_y > 99 && pixel_y < 100) ||


//W
(pixel_x > 160 && pixel_x < 200 && pixel_y > 260 && pixel_y < 420) ||
(pixel_x > 199 && pixel_x < 220 && pixel_y > 340 && pixel_y < 380) ||
(pixel_x > 219 && pixel_x < 240 && pixel_y > 300 && pixel_y < 380) ||
(pixel_x > 239 && pixel_x < 260 && pixel_y > 340 && pixel_y < 380) ||
(pixel_x > 259 && pixel_x < 300 && pixel_y > 260 && pixel_y < 420) ||

//O
(pixel_x > 320 && pixel_x < 380 && pixel_y > 260 && pixel_y < 420) ||
(pixel_x > 379 && pixel_x < 400 && pixel_y > 260 && pixel_y < 280) ||
(pixel_x > 379 && pixel_x < 400 && pixel_y > 400  && pixel_y < 420) ||
(pixel_x > 399 && pixel_x < 440 && pixel_y > 260 && pixel_y < 420) ||

//N
(pixel_x > 460 && pixel_x < 500 && pixel_y > 260 && pixel_y < 420) ||
(pixel_x > 499 && pixel_x < 520 && pixel_y > 260 && pixel_y < 300) ||
(pixel_x > 519 && pixel_x < 560 && pixel_y > 260 && pixel_y < 420) ? 4'hF:4'h0:(4'h0);
end

//collision between ghost and pacman
else
begin
   
        if ((pixel_x == 0) || (pixel_x == 639) || (pixel_y == 0) || (pixel_y == 479))
            begin 
            red <= 4'hF;
            green <= 4'hF;
            blue <= 4'hF;
            end
         else begin
         
         //laser
         red <= video_on ? (pixel_y > 115 && pixel_y < 130 && pixel_x > 0+LR_laser && pixel_x < 100+LR_laser)||
         (pixel_y > 370 && pixel_y < 385 && pixel_x > 540 - LR_laser && pixel_x < 640 - LR_laser) ||
        //timer
        (pixel_y > 435 && pixel_y < 450 && pixel_x > 0 && pixel_x < timerinc*2)||
         
         //pacman
         (pixel_x > 20+ pleftright && pixel_x < 60+ pleftright && pixel_y < 10+ pupdown && pixel_y > 4+ pupdown) ||
         (pixel_x > 10+ pleftright && pixel_x < 70+ pleftright && pixel_y < 15+ pupdown && pixel_y > 9+ pupdown) ||
         (pixel_x > 5+ pleftright && pixel_x < 75+ pleftright && pixel_y < 25+ pupdown && pixel_y > 14+ pupdown) ||
         (pixel_x > 5+ pleftright && pixel_x < 70+ pleftright && pixel_y < 30+ pupdown && pixel_y > 24+ pupdown) ||
         (pixel_x > 5+ pleftright && pixel_x < 60+ pleftright && pixel_y < 35+ pupdown && pixel_y > 29+ pupdown) ||
         (pixel_x > 5+ pleftright && pixel_x < 50+ pleftright && pixel_y < 40+ pupdown && pixel_y > 34+ pupdown) ||
         (pixel_x > 5+ pleftright && pixel_x < 45+ pleftright && pixel_y < 45+ pupdown && pixel_y > 39+ pupdown) || 
         (pixel_x > 5+ pleftright && pixel_x < 60+ pleftright && pixel_y < 50+ pupdown && pixel_y > 44+ pupdown) || 
         (pixel_x > 5+ pleftright && pixel_x < 70+ pleftright && pixel_y < 55+ pupdown && pixel_y > 49+ pupdown) || 
         (pixel_x > 5+ pleftright && pixel_x < 75+ pleftright && pixel_y < 65+ pupdown && pixel_y > 54+ pupdown) || 
         (pixel_x > 10+ pleftright && pixel_x < 70+ pleftright && pixel_y < 70+ pupdown && pixel_y > 64+ pupdown) || 
         (pixel_x > 680+ pleftright && pixel_x < 60+ pleftright && pixel_y < 75+ pupdown && pixel_y > 69+ pupdown) ? 4'hF:4'h0:(4'h0);
        
        //maze
         blue <= video_on ? (((pixel_x > 0 && pixel_x < 640)  && (pixel_y >0 && pixel_y < 3)) ||
((pixel_x > 0 && pixel_x < 640)  && (pixel_y >477 && pixel_y < 480)) ||
((pixel_x > 0 && pixel_x < 3)  && (pixel_y >0 && pixel_y < 480)) ||
((pixel_x > 637 && pixel_x < 640)  && (pixel_y > 0  && pixel_y < 480)) ||
((pixel_x > 78 && pixel_x < 81)  && (pixel_y >0 && pixel_y < 160)) ||
((pixel_x > 80 && pixel_x < 160)  && (pixel_y >158 && pixel_y < 161)) ||
((pixel_x > 240 && pixel_x < 320)  && (pixel_y >158 && pixel_y < 161)) ||
((pixel_x > 160 && pixel_x < 400)  && (pixel_y >78 && pixel_y < 81)) ||
((pixel_x > 480 && pixel_x < 560)  && (pixel_y > 78 && pixel_y < 81)) || 
((pixel_x > 398 && pixel_x < 401)  && (pixel_y >80 && pixel_y < 240)) ||
((pixel_x > 558  && pixel_x < 561)  && (pixel_y >80 && pixel_y < 240)) ||
((pixel_x > 478 && pixel_x < 481)  && (pixel_y >160 && pixel_y < 240)) ||
((pixel_x > 480 && pixel_x < 560)  && (pixel_y > 318 && pixel_y < 321)) ||
((pixel_x > 0 && pixel_x < 640)  && (pixel_y >398 && pixel_y < 401)) ||
((pixel_x > 398 && pixel_x < 401)  && (pixel_y >320 && pixel_y < 400)) ||
((pixel_x > 318 && pixel_x < 321)  && (pixel_y >240 && pixel_y < 320)) ||
((pixel_x > 160 && pixel_x < 320)  && (pixel_y >318 && pixel_y < 321)) ||
((pixel_x > 0 && pixel_x < 641)  && (pixel_y >477 && pixel_y < 480)) ||
((pixel_x > 78 && pixel_x < 81)  && (pixel_y >240 && pixel_y < 320)) ||
((pixel_x > 80 && pixel_x < 240)  && (pixel_y >238 && pixel_y < 241)) ||


//ghost
(pixel_x > 20+leftright && pixel_x < 60+leftright && pixel_y > 5+updown && pixel_y < 10+updown) ||
(pixel_x > 10+leftright && pixel_x < 70+leftright && pixel_y > 9+updown && pixel_y < 15+updown) ||
(pixel_x > 5+leftright && pixel_x < 75+leftright && pixel_y > 14+updown && pixel_y < 20+updown) ||
(pixel_x > 5+leftright && pixel_x < 20+leftright && pixel_y > 19+updown && pixel_y < 35+updown) ||
(pixel_x > 35+leftright && pixel_x < 40+leftright && pixel_y > 19+updown && pixel_y < 35+updown) ||
(pixel_x > 55+leftright && pixel_x < 75+leftright && pixel_y > 19+updown && pixel_y < 35+updown) ||
(pixel_x > 5+leftright && pixel_x < 75+leftright && pixel_y > 34+updown && pixel_y < 60+updown)||
(pixel_x > 5+leftright && pixel_x < 15+leftright && pixel_y > 59+updown && pixel_y < 70+updown) ||
(pixel_x > 5+leftright && pixel_x < 10+leftright && pixel_y > 69+updown && pixel_y < 75+updown) ||
(pixel_x > 20+leftright && pixel_x < 40+leftright && pixel_y > 59+updown && pixel_y < 70+updown) ||
(pixel_x > 25+leftright && pixel_x < 35+leftright && pixel_y > 69+updown && pixel_y < 75+updown) ||
(pixel_x > 45+leftright && pixel_x < 65+leftright && pixel_y > 59+updown && pixel_y < 70+updown) ||
(pixel_x > 50+leftright && pixel_x < 60+leftright && pixel_y > 69+updown && pixel_y < 75+updown) ||
(pixel_x > 70+leftright && pixel_x < 75+leftright && pixel_y > 59+updown && pixel_y < 70+updown) ||
(pixel_x > 75+leftright && pixel_x < 75+leftright && pixel_y > 69+updown && pixel_y < 75+updown)) ? 4'hF:4'h0:(4'h0);
         end
      end
   end   
endmodule