// boss/player animation
module draw_ppl(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [8:0] boss_x,
    input [8:0] boss_y,
    input [3:0] boss_state,
    input [8:0] player_x,
    input [8:0] player_y,
    input [3:0] player_state,
    output reg[16:0] boss_addr,
    output reg[16:0] player_addr,
    output reg isBoss,
    output reg isPlayer
);

parameter [3:0] STAGE1 = 2, STAGE2 = 4, STAGE3 = 6;

wire [8:0] x,y;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;

always @(*) begin
    isBoss = 0;
    boss_addr = 0;
    case(state)
    STAGE3: begin
        if(x >= boss_x && x < boss_x+10 && y >= boss_y && y < boss_y+10)begin
            boss_addr = ((x - boss_x)+10*boss_state + (y+10-boss_y)*360)%86400;
            isBoss = 1;
        end
    end
    endcase
end

always @(*) begin
    isPlayer = 0;
    player_addr = 0;
    case(state)
    STAGE1: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            player_addr = ((x - player_x)+10*player_state + (y-player_y)*360)%86400;
            isPlayer = 1;
        end
    end
    STAGE2: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            player_addr = ((x - player_x + 160)+10*player_state + (y-player_y + 220)*360)%86400;
            isPlayer = 1;
        end
    end
    STAGE3: begin
        if(x >= player_x && x < player_x+10 && y >= player_y && y < player_y+10)begin
            player_addr = ((x - player_x + 160)+10*player_state + (y-player_y + 230)*360)%86400;
            isPlayer = 1;
        end
    end
    endcase
end
endmodule