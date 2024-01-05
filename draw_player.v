// player animation
module draw_player(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [8:0] player_x,
    input [8:0] player_y,
    input [3:0] player_state,
    input [3:0] play_valid,
    output reg[16:0] pixel_addr,
    output reg isObject
);

parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7;
parameter [3:0] FAIL = 8;

wire [8:0] x,y;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;
always @(*) begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    TITLE:begin
        if(x >= 105 && x < 115 && y >= 125 && y < 135 && play_valid[1])begin
            pixel_addr = ((x - 105)+10*player_state + (y-125)*360)%86400;
            isObject = 1;
        end else if(x >= 105 && x < 115 && y >= 155 && y < 165 && play_valid[2])begin
            pixel_addr = ((x + 55)+10*player_state + (y+65)*360)%86400;
            isObject = 1;
        end else if(x >= 105 && x < 115 && y >= 185 && y < 195 && play_valid[3])begin
            pixel_addr = ((x + 55)+10*player_state + (y+45)*360)%86400;
            isObject = 1;
        end
    end
    STAGE1: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            pixel_addr = ((x - player_x)+10*player_state + (y-player_y)*360)%86400;
            isObject = 1;
        end
    end
    STAGE2: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            pixel_addr = ((x - player_x + 160)+10*player_state + (y-player_y + 220)*360)%86400;
            isObject = 1;
        end
    end
    STAGE3: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            pixel_addr = ((x - player_x + 160)+10*player_state + (y-player_y + 230)*360)%86400;
            isObject = 1;
        end
    end 
    SUCCESS1:begin
        if(x >= 105 && x < 115 && y >= 145 && y < 155)begin
            pixel_addr = ((x - 105)+10*player_state + (y-145)*360)%86400;
            isObject = 1;
        end
    end 
    SUCCESS2:begin
        if(x >= 105 && x < 115 && y >= 145 && y < 155)begin
            pixel_addr = ((x + 55)+10*player_state + (y+75)*360)%86400;
            isObject = 1;
        end
    end
    SUCCESS3:begin
        if(x >= 105 && x < 115 && y >= 145 && y < 155)begin
            pixel_addr = ((x + 55)+10*player_state + (y+85)*360)%86400;
            isObject = 1;
        end
    end
    FAIL:begin
        if(x >= 105 && x < 115 && y >= 145 && y < 155)begin
            pixel_addr = ((x + 55)+10*player_state + (y-145)*360)%86400;
            isObject = 1;
        end
    end
    STAFF:begin
        if(x >= 140 && x < 150 && y >= 100 && y < 110)begin
            pixel_addr = ((x - 140)+10*player_state + (y-100)*360)%86400;
            isObject = 1;
        end else if(x >= 150 && x < 160 && y >= 100 && y < 110)begin
            pixel_addr = ((x + 10)+10*player_state + (y+120)*360)%86400;
            isObject = 1;
        end else if(x >= 160 && x < 170 && y >= 100 && y < 110)begin
            pixel_addr = ((x + 10)+10*player_state + (y+130)*360)%86400;
            isObject = 1;
        end
    end
    endcase
end
endmodule