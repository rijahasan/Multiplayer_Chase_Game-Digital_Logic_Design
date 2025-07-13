module MovementFSM(
input wire clkd,U,D,L,R,
output reg [9:0]UD, [9:0]LR
    );
 localparam [3:0] rest  = 4'b0000,
                 up  = 4'b0001,
                 down  = 4'b0010,
                 left  = 4'b0100,
                 right  = 4'b1000;
reg [9:0] UD=0;
reg [9:0] LR=0;
reg [3:0] state_reg,state_next;
always @(posedge clkd)
begin
    state_next=state_reg;
    case (state_reg)
        rest: begin
            if (U)begin
                state_next <= up;
                UD<=UD+1;
                end
            else if (D)begin
                state_next = down;
                UD<=UD-1;
                end
            else if (L)begin
                state_next = left;
                LR<=LR-1;
                end
            else if (R)begin
                state_next = right;
                LR<=LR+1;
                end
            end
        up: 
            begin
                state_next = rest;
            end
        down: 
            begin
                state_next = rest;
            end
        left: 
            begin
                state_next = rest;
            end
        right: 
            begin
                state_next = rest;
            end
     endcase
end

endmodule