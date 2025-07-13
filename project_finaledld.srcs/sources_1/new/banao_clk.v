module banao_clk(clk,clkb
    );
    //parameter div_value =32'd10000;
    parameter div_value = 1;
    input clk;
    output clkb;
    reg clkb;
    reg count;
    initial begin
    clkb = 0;
    count = 0;    
    end
    always @ (posedge clk)
    begin
    if (count == div_value)
    begin
        clkb <= ~clkb;
        count <= 0;
    end
    else
    count <= count + 1;
    end
endmodule