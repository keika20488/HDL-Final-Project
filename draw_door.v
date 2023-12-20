// open & lock
module draw_door(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input isLocked,
    output reg [16:0] pixel_addr,
    output reg isObject
);
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;
wire [8:0] x,y;
assign x = h_cnt>>1;
assign y = v_cnt>>1;
always@(*)begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    STAGE1, STAGE2, STAGE3:begin
        if(x >= 260 && x <280 && y>=120 && y<140)begin
            if(isLocked)begin
                pixel_addr = (x -240+(y -40)*320)%76800;
                isObject = 1;
            end else begin
                pixel_addr = (x -220+(y -40)*320)%76800;
                isObject = 1;
            end
        end//lock 
    end
    endcase
end
endmodule