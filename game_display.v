// draw_1, draw_2...
module game_display(
    input clk,
    input rst,
    input isDark,
    input [1:0] todo,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [3:0] state,
    input [3:0] player_state,
    input [3:0] boss_state,
    input [8:0] player_x,
    input [8:0] player_y,
    input [8:0] boss_x,
    input [8:0] boss_y,
    input [8:0] obj_x,
    input [8:0] obj_y,
    input [3:0] play_valid,
    input [1:0] key_find,
    input [1:0] life,
    output reg [16:0] pixel_addr,
    output reg notBlank
);

// Draw obj
wire [16:0] door_addr, interface_addr, map_addr, obj_addr, boss_addr, player_addr;
wire isLocked;
assign isLocked = (key_find < 3) ? 1 : 0;
draw_boss boss(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .pixel_addr(boss_addr),
    .boss_x(boss_x),
    .boss_y(boss_y),
    .boss_state(boss_state),
    .isObject(isBoss)
);
draw_door door(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .isLocked(isLocked),
    .pixel_addr(door_addr),
    .isObject(isDoor)
);
draw_interface interface(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .key_find(key_find),
    .life(life),
    .todo(todo),
    .play_valid(play_valid),
    .pixel_addr(interface_addr),
    .isObject(isInterface)
);

draw_map map(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .pixel_addr(map_addr),
    .isObject(isMap)
);

draw_obj obj(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .isDark(isDark),
    .key_find(key_find),
    .pixel_addr(obj_addr),
    .isObject(isObj)
);

draw_player player(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .player_x(player_x),
    .player_y(player_y),
    .player_state(player_state),
    .pixel_addr(player_addr),
    .isObject(isPlayer)
);

parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7;
parameter [3:0] FAIL = 8, HELP = 9;

always@(posedge clk or posedge rst)begin
end
always@(*)begin
    notBlank = 0;
    pixel_addr = 0;
    case(state)
    TITLE, STAFF, SUCCESS1, SUCCESS2, SUCCESS3, FAIL:begin
        if (isInterface) begin
            pixel_addr = interface_addr;
            notBlank = 1;
        end
    end
    STAGE1, STAGE2, STAGE3:begin
        if (isInterface) begin
            pixel_addr = interface_addr;
            notBlank = 1;
        end else if (isPlayer) begin
            pixel_addr = player_addr;
            notBlank = 1;
        end else if (isBoss) begin
            pixel_addr = boss_addr;
            notBlank = 1;
        end else if (isObj) begin
            pixel_addr = obj_addr;
            notBlank = 1;
        end else if (isMap) begin
            pixel_addr = map_addr;
            notBlank = 1;
        end else if (isDoor) begin
            pixel_addr = door_addr;
            notBlank = 1;
        end
    end
    endcase
end
endmodule