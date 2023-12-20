`define rec_h = 20;
`define rec_v = 20;
module game_play (
    input rst,
    input clk,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output reg [1:0] todo,
    output reg [3:0] state,
    output reg [3:0] player_state,
    output reg [3:0] boss_state,
    output reg [8:0] player_x,
    output reg [8:0] player_y,
    output reg [8:0] boss_x,
    output reg [8:0] boss_y,
    output reg [8:0] obj_x,
    output reg [8:0] obj_y,
    output reg [1:0] key_find,
    output reg [3:0] play_valid,
    output reg isDark
);

// Keyboard
wire [130:0] key_down;
wire [6:0] last_change;
reg [4:0] key_num;

KeyboardDecoder key_de (
    .key_down(key_down),
    .last_change(last_change),
    .key_valid(been_ready),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .rst(rst),
    .clk(clk)
);

// KeyCodes: n, b, r, 1-3, WASD, right shift
parameter [6:0] KEY_CODES [0:10] = {
    7'b101_1001,  //right shift//59
    7'b110_1001,  //1          //69
    7'b111_0010,  //2          //72
    7'b111_1010,  //3          //7A
    7'b001_1101,  //w  //up    //1D
    7'b001_1100,  //a  //left  //1C
    7'b001_1011,  //s  //down  //1B
    7'b010_0011,  //d  //right //23
    7'b011_0001,  //n  //next  //31
    7'b011_0010,  //b  //back  //32
    7'b010_1101   //r  //retry //2D
};

always @(*) begin
    case(last_change)
    KEY_CODES[0] : key_num = 0;
    KEY_CODES[1] : key_num = 1;
    KEY_CODES[2] : key_num = 2;
    KEY_CODES[3] : key_num = 3;
    KEY_CODES[4] : key_num = 4;
    KEY_CODES[5] : key_num = 5;
    KEY_CODES[6] : key_num = 6;
    KEY_CODES[7] : key_num = 7;
    KEY_CODES[8] : key_num = 8;
    KEY_CODES[9] : key_num = 9;
    KEY_CODES[10]: key_num = 10;
    default : key_num = 15;
    endcase
end


// State: title, stage1, success1, stage2, success2, stage3, success3, fail3, staff
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;
reg pass, fail;

always @(posedge clk or posedge rst) begin
    if (rst) play_valid <= 4'b0010;
    else begin
        case(state)
        SUCCESS1: play_valid <= 4'b0110;
        SUCCESS2: play_valid <= 4'b1110;
        default: play_valid <= 4'b1111;
        endcase
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) state <= TITLE;
    else begin
        case(state)
        TITLE: begin
            if (key_down[last_change] && key_num < 4 && play_valid[key_num])
                state <= key_num * 2;
            else state <= TITLE;
        end
        STAGE1: begin
            if (pass) state <= SUCCESS1;
            else state <= STAGE1;
        end
        SUCCESS1: begin
            if (key_down[last_change]) begin
                if (key_num == 8) state <= STAGE2;
                else if (key_num == 9) state <= TITLE;
                else state <= SUCCESS1;
            end else state <= SUCCESS1;
        end
        STAGE2: begin
            if (pass) state <= SUCCESS2;
            else state <= STAGE2;
        end
        SUCCESS2: begin
            if (key_down[last_change]) begin
                if (key_num == 8) state <= STAGE3;
                else if (key_num == 9) state <= TITLE;
                else state <= SUCCESS2;
            end else state <= SUCCESS2;
        end
        STAGE3: begin
            if (pass) state <= SUCCESS3;
            else if (fail) state <= FAIL;
            else state <= STAGE3;
        end
        SUCCESS3: begin
            if (key_down[last_change] && key_num == 8)
                state <= STAFF;
            else state <= SUCCESS3;
        end
        FAIL: begin
            if (key_down[last_change]) begin
                if (key_num == 10) state <= STAGE3;
                else if (key_num == 9) state <= TITLE;
                else state <= FAIL;
            end else state <= FAIL;
        end
        STAFF: begin
            if (key_down[last_change] && key_num == 9)
                state <= TITLE;
            else state <= STAFF;
        end
        default: state <= state;
        endcase
    end
end

// Todo: key, light, door
parameter [1:0] NONE = 0, FIND_KEY = 1, FIND_LIGHT = 2, FIND_DOOR = 3;

always @(posedge clk or posedge rst) begin
    if (rst) todo <= NONE;
    else begin
        case(state)
        STAGE1: begin
            if (key_find < 3) todo <= FIND_KEY;
            else todo <= FIND_DOOR;
        end
        STAGE2: begin
            if (isDark) todo <= FIND_LIGHT;
            else if (key_find < 3) todo <= FIND_KEY;
            else todo <= FIND_DOOR;
        end
        STAGE3: begin
            if (key_find < 3) todo <= FIND_KEY;
            else todo <= FIND_DOOR;
        end
        default: todo <= NONE;
        endcase
    end
end


// Clock Divider
clock_divider #(23) div_23(.clk(clk), .clk_div(clk_23));

// Player Position
parameter [3:0] UP1 = 0, UP2 = 1, UP3 = 2;
parameter [3:0] RIGHT1 = 3, RIGHT2 = 4, RIGHT3 = 5;
parameter [3:0] LEFT1 = 6, LEFT2 = 7, LEFT3 = 8;
parameter [3:0] DOWN1 = 9, DOWN2 = 10, DOWN3 = 11;

always @(posedge clk_23 or posedge rst) begin
    if (rst) player_state <= RIGHT1;
    else begin
        case(state)
        STAGE1, STAGE2, STAGE3: begin
            if(key_down[last_change]) begin
                case (key_num)
                4: player_state <= (player_state == UP2) ? UP3 : UP2;
                5: player_state <= (player_state == LEFT2) ? LEFT3 : LEFT2;
                6: player_state <= (player_state == DOWN2) ? DOWN3 : DOWN2;
                7: player_state <= (player_state == RIGHT2) ? RIGHT3 : RIGHT2;
                default: player_state <= player_state;
                endcase
            end else player_state <= player_state / 3 * 3;
        end
        default: player_state <= RIGHT1;
        endcase
    end
end

always @(posedge clk_23) begin
    player_x <= player_x;
    player_y <= player_y;
    case(state)
    STAGE1, STAGE2, STAGE3: begin
        if(key_down[last_change]) begin
            case (key_num)
            4: begin
                if(!map[(player_y -1 - 30)/5][(player_x - 60)/5])begin
                    player_y <= player_y - 1;
                end
            end
            5: begin
                if(!map[(player_y - 30)/5][(player_x -1 - 60)/5])begin
                    player_x <= player_x - 1;
                end
            end
            6: begin
                if(!map[(player_y +1 - 30)/5][(player_x - 60)/5])begin
                    player_y <= player_y + 1;
                end
            end
            7: begin
                if(!map[(player_y - 30)/5][(player_x +1 - 60)/5])begin
                    player_x <= player_x + 1;
                end
            end
            endcase
        end
    end
    default: begin
        player_x <= 40;
        player_y <= 130;
    end
    endcase
end
// Boss Position
// Object Position

// Collide

endmodule