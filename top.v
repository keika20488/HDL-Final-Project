module top(
    input clk,
    input _rst,     // BTNC: reset
    input _volUP,   // BTNU: Vol up
    input _volDOWN, // BTND: Vol down
    input _mute,    // SW14: Mute
    input _mode,    // SW15: Mode 1: cheat mode; 0:normal mode

    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync,
    output audio_mclk,
    output audio_lrck,
    output audio_sck,
    output audio_sdin,

    output [15:0] led,     // state, volume // debug
    output [6:0] DISPLAY,  // time record // debug
    output [3:0] DIGIT
);

// Clock Divider
clock_divider #(2) div_25M(.clk(clk), .clk_div(clk_25MHz));

// Button
debounce de1(.clk(clk), .pb(_rst), .pb_debounced(rst_d));
onepulse p1(.clk(clk), . pb_in(rst_d), .pb_out(rst));
debounce de2(.clk(clk), .pb(_volUP), .pb_debounced(_volUP_d));
onepulse p2(.clk(clk), . pb_in(_volUP_d), .pb_out(Vol_up));
debounce de3(.clk(clk), .pb(_volDOWN), .pb_debounced(_volDOWN_d));
onepulse p3(.clk(clk), . pb_in(_volDOWN_d), .pb_out(Vol_down));


// Music
// music sheet
//
speaker_control sc(
    .clk(clk), 
    .rst(rst), 
    .audio_in_left(audio_in_left),      // left channel audio data input
    .audio_in_right(audio_in_right),    // right channel audio data input
    .audio_mclk(audio_mclk),            // master clock
    .audio_lrck(audio_lrck),            // left-right clock
    .audio_sck(audio_sck),              // serial clock
    .audio_sdin(audio_sdin)             // serial audio data input
);

// VGA
wire [11:0] data;
wire [16:0] pixel_addr;
wire [11:0] pixel;
wire [9:0] h_cnt; //640
wire [9:0] v_cnt; //480

assign {vgaRed, vgaGreen, vgaBlue} = (valid && notBlank) ? pixel:12'h0;

blk_mem_gen_0 blk_mem_gen_0_inst(
    .clka(clk_25MHz),
    .wea(0),
    .addra(pixel_addr),
    .dina(data[11:0]),
    .douta(pixel)
); 

vga_controller vga_inst(
    .pclk(clk_25MHz),
    .reset(rst),
    .hsync(hsync),
    .vsync(vsync),
    .valid(valid),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt)
);


// Game
// play : output state & player's position
wire [1:0] key_find;
wire [3:0] play_valid, state;
wire [8:0] player_x, player_y, boss_x, boss_y, obj_x, obj_y;
game_play play(
    .rst(rst),
    .clk(clk),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .state(state),
    .player_x(player_x),
    .player_y(player_x),
    .boss_x(boss_x),
    .boss_y(boss_y),
    .obj_x(obj_x),
    .obj_y(obj_y),
    .key_find(key_find),
    .play_valid(play_valid),
    .isDark(isDark)
);
// display : find obj on (h,v) and output pixel_addr with finding obj's addr by draw_obj
game_display display(
    .state(state),
    .clk(clk),
    .rst(rst),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .play_valid(play_valid),
    .pixel_addr(pixel_addr),
    .notBlank(notBlank)
);
// sound : music of state // sound effect?

// Sevensegment
reg [15:0] nums;
SevenSegment seg(
    .display(DISPLAY),
    .digit(DIGIT),
    .nums(nums),
    .rst(rst),
    .clk(clk)
);

endmodule
