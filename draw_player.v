// player animation

//picture addr left_up
`define up_h = 0;
`define right_h = 60;
`define left_h = 120;
`define down_h = 180;
`define player_v = 0;

`define rec_h = 20;
`define rec_v = 20;

module draw_player(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [8:0] player_x,
    input [8:0] player_y,
    input [3:0] player_state,
    output reg[16:0] pixel_addr,
    output reg isObject
);

parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

parameter [3:0] UP1 = 0, UP2 = 1, UP3 = 2;
parameter [3:0] RIGHT1 = 3, RIGHT2 = 4, RIGHT3 = 5;
parameter [3:0] LEFT1 = 6, LEFT2 = 7, LEFT3 = 8;
parameter [3:0] DOWN1 = 9, DOWN2 = 10, DOWN3 = 11;

wire [8:0] x,y;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;
always @(*) begin
    isObject = 0;
    case(state)
    STAGE1, STAGE2, STAGE3: begin
        if(x >= player_x && x < player_x+20 && y >= player_y && y < player_y+20)begin //title
            pixel_addr = ((x - player_x)+60*player_state + (y-player_y)*320)%76800;
            isObject = 1;
        end
    end
    endcase
end
endmodule