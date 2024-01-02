// freqL, freqR
module game_sound(
    input clk,
    input rst,
    input [3:0] state,
    output [31:0] toneL,
    output [31:0] toneR
);

reg LEN;
reg [11:0] beat, next_beat;

always @(posedge clk, posedge rst) begin
    if (rst) begin
        beat <= 0;
    end else begin
        beat <= next_beat;
    end
end

always @* begin
    next_beat = (beat + 1 < LEN) ? (beat + 1) : 0;
end

endmodule