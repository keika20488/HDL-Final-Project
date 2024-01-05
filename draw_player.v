// player animation
module draw_player(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [8:0] player_x,
    input [8:0] player_y,
    input [11:0] player_state,
    input [3:0] play_valid,
    output reg[16:0] pixel_addr,
    output reg isObject
);

parameter [3:0] TITLE = 0, STAGE1 = 2, STAGE2 = 4, STAGE3 = 6;

wire [8:0] x,y;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;
always @(*) begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    TITLE:begin
        if(x >= 105 && x < 115 && y >= 125 && y < 135 && play_valid[1])begin
            pixel_addr = ((x - 105)+10*player_state[3:0] + (y-125)*360)%86400;
            isObject = 1;
        end else if(x >= 105 && x < 115 && y >= 155 && y < 165 && play_valid[2])begin
            pixel_addr = ((x - 105 + 160)+10*player_state[7:4] + (y-155 + 220)*360)%86400;
            isObject = 1;
        end else if(x >= 105 && x < 115 && y >= 185 && y < 195 && play_valid[3])begin
            pixel_addr = ((x - 105 + 160)+10*player_state[11:8] + (y-185 + 230)*360)%86400;
            isObject = 1;
        end
    end
    STAGE1: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            pixel_addr = ((x - player_x)+10*player_state[3:0] + (y-player_y)*360)%86400;
            isObject = 1;
        end
    end
    STAGE2: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            pixel_addr = ((x - player_x + 160)+10*player_state[7:4] + (y-player_y + 220)*360)%86400;
            isObject = 1;
        end
    end
    STAGE3: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            pixel_addr = ((x - player_x + 160)+10*player_state[11:8] + (y-player_y + 230)*360)%86400;
            isObject = 1;
        end
    end
    endcase
end
endmodule