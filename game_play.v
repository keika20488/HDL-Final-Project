module game_play (
    input rst,
    input clk,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output reg [3:0] state,
    output reg [8:0] player_x,
    output reg [8:0] player_y,
    output reg [8:0] key_x,
    output reg [8:0] key_y
);

// Keyboard
wire [511:0] key_down;
wire [8:0] last_change;
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
parameter [8:0] KEY_CODES [0:10] = {
    9'b0_0101_1001,  //right shift//59
    9'b0_0110_1001,  //1          //69
    9'b0_0111_0010,  //2          //72
    9'b0_0111_1010,  //3          //7A
    9'b0_0001_1101,  //w  //up    //1D
    9'b0_0001_1100,  //a  //left  //1C
    9'b0_0001_1011,  //s  //down  //1B
    9'b0_0010_0011,  //d  //right //23
    9'b0_0011_0001,  //n  //next  //31
    9'b0_0011_0010,  //b  //back  //32
    9'b0_0010_1101   //r  //retry //2D
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
reg [3:0] next_state;
reg IsOpen [0:3];

always @(posedge clk or posedge rst) begin
    if (rst) state <= TITLE;
    else state <= next_state;
end

always @(*) begin
    case(state)
    TITLE: begin
        if (key_down[last_change] && key_num < 4 && IsOpen[key_num])
            next_state = key_num * 2;
        else next_state = TITLE;
    end
    STAGE1: begin
        if (pass) next_state = SUCCESS1;
        else next_state = STAGE1;
    end
    SUCCESS1: begin
        if (key_down[last_change]) begin
            if (key_num == 8) next_state = STAGE2;
            else if (key_num == 9) next_state = TITLE;
            else next_state = SUCCESS1;
        end else next_state = SUCCESS1;
    end
    STAGE2: begin
        if (pass) next_state = SUCCESS2;
        else next_state = STAGE2;
    end
    SUCCESS2: begin
        if (key_down[last_change]) begin
            if (key_num == 8) next_state = STAGE3;
            else if (key_num == 9) next_state = TITLE;
            else next_state = SUCCESS2;
        end else next_state = SUCCESS2;
    end
    STAGE3: begin
        if (pass) next_state = SUCCESS3;
        else if (fail) next_state = FAIL;
        else next_state = STAGE3;
    end
    SUCCESS3: begin
        if (key_down[last_change] && key_num == 8)
            next_state = STAFF;
        else next_state = SUCCESS3;
    end
    FAIL: begin
        if (key_down[last_change]) begin
            if (key_num == 10) next_state = STAGE3;
            else if (key_num == 9) next_state = TITLE;
            else next_state = FAIL;
        end else next_state = FAIL;
    end
    STAFF: begin
        if (key_down[last_change] && key_num == 9)
            next_state = TITLE;
        else next_state = STAFF;
    end
    default: next_state <= state;
    endcase
end

// Player Position
// Key Position

endmodule