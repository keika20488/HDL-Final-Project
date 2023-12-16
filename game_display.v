// draw_1, draw_2...
module game_display(
    input [3:0] state,
    input clk,
    input rst,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    output reg [16:0] pixel_addr,
    output reg notBlank
);

// Draw obj
/*draw_boss boss(
    .state(state),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .pixel_addr(boss_addr),
    .isObject(isBoss)
);*/
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
    .heart(heart),
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
    .key_find(key_find),
    .pixel_addr(obj_addr),
    .isObject(isObj)
);
//assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1) )% 76800;  //640*480 --> 320*240 
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

always@(posedge clk or posedge rst)begin
end
always@(*)begin
    notBlank = 0;
    case(state)
    TITLE:begin
        if (isInterface) begin
            pixel_addr = interface_addr;
            notBlank = 1;
        end
    end
    STAFF:begin
    end
    STAGE1:begin
    end
    SUCCESS1:begin
    end
    STAGE2:begin
    end
    SUCCESS2:begin
    end
    STAGE3:begin
    end
    SUCCESS3:begin
    end
    FAIL:begin
    end
    endcase
end
endmodule