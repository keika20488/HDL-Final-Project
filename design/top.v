module top(
    input clk,
    input _rst,     // BTNC: reset
    input _volUP,   // BTNU: Vol up
    input _volDOWN, // BTND: Vol down
    input _mute,    // SW14: Mute
    input _mode,    // SW15: Mode 1: cheat mode; 0:normal mode

    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue,
    output hsync,
    output vsync,
    output audio_mclk,
    output audio_lrck,
    output audio_sck,
    output audio_sdin,

    output [4:0] led,      // volume
    output [6:0] DISPLAY,  // time record
    output [3:0] DIGIT
);

reg [2:0] volume;
wire [15:0] audio_in_left, audio_in_right;
wire [25:0] freqL, freqR;        
wire [1:0] key_find;
wire [1:0] life;
wire [3:0] play_valid, state, player_state, boss_state;
wire [8:0] player_x, player_y, boss_x, boss_y, obj_x, obj_y;

// Clock Divider
clock_divider #(2) div_25M(.clk(clk), .clk_div(clk_25MHz));
clock_divider #(23) div_23(.clk(clk), .clk_div(clk_23));
clock_divider #(22) div_22(.clk(clk), .clk_div(clk_22));
clock_divider #(21) div_21(.clk(clk), .clk_div(clk_21));

// Button
debounce de1(.clk(clk), .pb(_rst), .pb_debounced(rst_d));
onepulse p1(.clk(clk), . pb_in(rst_d), .pb_out(rst));
debounce de2(.clk(clk), .pb(_volUP), .pb_debounced(_volUP_d));
onepulse p2(.clk(clk), . pb_in(_volUP_d), .pb_out(Vol_up));
debounce de3(.clk(clk), .pb(_volDOWN), .pb_debounced(_volDOWN_d));
onepulse p3(.clk(clk), . pb_in(_volDOWN_d), .pb_out(Vol_down));

assign led = (_mute) ? 5'b0 : 5'b11111 >> (5 - volume);

// Music
// volume
always @ (posedge clk or posedge rst) begin
    if (rst) volume <= 3;
    else if (!_mute) begin
        if (Vol_down && volume > 1) volume <= volume - 1;
        else if (Vol_up && volume < 5) volume <= volume + 1;
    end else volume <= volume;
end

// bgm
game_sound bgm(
    .clk_21(clk_21),
    .clk_22(clk_22),
    .clk_23(clk_23),
    .rst(rst),
    .mute(_mute),
    .state(state),
    .freqL(freqL),
    .freqR(freqR)
);

note_gen noteGen(
    .clk(clk), 
    .rst(rst), 
    .volume(volume),
    .note_div_left(50000000/freqL), 
    .note_div_right(50000000/freqR), 
    .audio_left(audio_in_left),     // left sound audio
    .audio_right(audio_in_right)    // right sound audio
);

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
wire [8:0] x, y, dx1, dy1, dx2, dy2;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;
assign dx1 = (x > player_x + 5) ? x - player_x - 5 : player_x + 5 - x;
assign dy1 = (y > player_y + 5) ? y - player_y - 5 : player_y + 5 - y; // Player
assign dx2 = (x > 70 + 5) ? x - 70 - 5 : 70 + 5 - x;
assign dy2 = (y > 220 + 5) ? y - 220 - 5 : 220 + 5 - y; // Light

always @(*) begin
    {vgaRed, vgaGreen, vgaBlue} = 0;
    if (valid && notBlank) begin
        if (state == 4 && x >= 60 && y >= 30) begin// STAGE2
            if (isDark) begin
                if (dx1 * dx1 + dy1 * dy1 < 400)
                    {vgaRed, vgaGreen, vgaBlue} = pixel;
                else if (dx2 * dx2 + dy2 * dy2 < 200)
                    {vgaRed, vgaGreen, vgaBlue} = pixel;
            end else {vgaRed, vgaGreen, vgaBlue} = pixel;
        end else {vgaRed, vgaGreen, vgaBlue} = pixel;
    end
end

blk_mem_gen_0 blk_mem_gen_0_inst(
    .clka(clk_25MHz),
    .wea(0),
    .addra(pixel_addr + 1),
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
wire [1:0] todo;
wire [5:0] shift;
game_play play(
    .rst(rst),
    .clk(clk),
    .clk_21(clk_21),
    .clk_22(clk_22),
    .clk_23(clk_23),
    .PS2_DATA(PS2_DATA),
    .PS2_CLK(PS2_CLK),
    .state(state),
    .player_state(player_state),
    .boss_state(boss_state),
    .player_x(player_x),
    .player_y(player_y),
    .boss_x(boss_x),
    .boss_y(boss_y),
    .obj_x(obj_x),
    .obj_y(obj_y),
    .key_find(key_find),
    .play_valid(play_valid),//play_vaild
    .isDark(isDark),
    .todo(todo),
    .life(life),
    .shift(shift)
);
// display : find obj on (h,v) and output pixel_addr with finding obj's addr by draw_obj
game_display display(
    .state(state),
    .clk(clk),
    .rst(rst),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .shift(shift),
    .isDark(isDark),
    .player_state(player_state),
    .boss_state(boss_state),
    .player_x(player_x),
    .player_y(player_y),
    .boss_x(boss_x),
    .boss_y(boss_y),
    .obj_x(obj_x),
    .obj_y(obj_y),
    .key_find(key_find),
    .play_valid(play_valid),
    .pixel_addr(pixel_addr),
    .notBlank(notBlank),
    .todo(todo),
    .life(life)
);

// Sevensegment
wire [15:0] nums;
Timer timer(
    .clk(clk),
    .state(state),
    .nums(nums)
);

SevenSegment seg(
    .display(DISPLAY),
    .digit(DIGIT),
    .nums(nums),
    .rst(rst),
    .clk(clk)
);

endmodule
