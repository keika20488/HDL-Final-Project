// open & lock
module draw_door(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input isLocked,
    output reg [16:0] pixel_addr,
    output reg isObject
);

parameter [3:0] STAGE1 = 2, STAGE2 = 4, STAGE3 = 6;

wire [8:0] x,y;
assign x = h_cnt>>1;
assign y = v_cnt>>1;
always@(*)begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    STAGE1, STAGE2, STAGE3:begin
        if(x >= 260 && x <270 && y>=127 && y<137)begin
            if(isLocked)begin
                pixel_addr = (x + 80 + (y - 107)*360)%86400;
                isObject = 1;
            end else begin
                pixel_addr = (x + 90 + (y - 107)*360)%86400;
                isObject = 1;
            end
        end
    end
    endcase
end
endmodule