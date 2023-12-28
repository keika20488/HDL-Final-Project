// boss animation

module draw_boss(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [8:0] boss_x,
    input [8:0] boss_y,
    input [3:0] boss_state,
    output reg[16:0] pixel_addr,
    output reg isObject
);

//parameter [3:0] TITLE = 0, STAFF = 1;
//parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
//parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

wire [8:0] x,y;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;

always @(*) begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    STAGE3: begin
        if(x >= boss_x && x < boss_x+10 && y >= boss_y && y < boss_y+10)begin
            pixel_addr = ((x - boss_x)+10*boss_state + (y+10-boss_y)*360)%86400;
            isObject = 1;
        end
    end
    endcase
end
endmodule