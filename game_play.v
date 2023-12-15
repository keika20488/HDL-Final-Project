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
reg [8:0] last_key;

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

// State: title, stage1, success1, stage2, success2, stage3, success3, fail3, staff

// Player Position
// Key Position

endmodule