module game_play (
    input rst,
    input clk,
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

// KeyCodes: n, b, r, 1-3, dirt, shift

// State

// Player's Position
// 

endmodule