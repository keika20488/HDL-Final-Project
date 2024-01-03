// freqL, freqR
module game_sound(
    input clk,
    input rst,
    input mute,
    input [3:0] state,
    output reg [31:0] freqL,
    output reg [31:0] freqR
);

parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7;
parameter [3:0] FAIL = 8, HELP = 9;

wire [31:0] title_l, title_r, staff_l, staff_r;
wire [31:0] stage1_l, stage1_r, stage2_l, stage2_r;
wire [31:0] stage3_l, stage3_r, success_l, success_r;
wire [31:0] fail_l, fail_r, help_l, help_r;

bgm_title bgmTitle(
    .clk(clk),
    .rst(rst),
	.en(state == TITLE),
	.toneL(title_l),
    .toneR(title_r)
);

bgm_help bgmHelp(
    .clk(clk),
    .rst(rst),
	.en(state == HELP),
	.toneL(help_l),
    .toneR(help_r)
);

always @(*) begin
    if (mute) begin
        freqL = 1;
        freqR = 1;
    end else begin
        case(state)
        TITLE: begin
            freqL = title_l / 50000000;
            freqR = title_r / 50000000;
        end
        STAFF: begin
            freqL = staff_l / 50000000;
            freqR = staff_r / 50000000;
        end
        STAGE1: begin
            freqL = stage1_l / 50000000;
            freqR = stage1_r / 50000000;
        end
        STAGE2: begin
            freqL = stage2_l / 50000000;
            freqR = stage2_r / 50000000;
        end
        STAGE3: begin
            freqL = stage3_l / 50000000;
            freqR = stage3_r / 50000000;
        end
        FAIL: begin
            freqL = fail_l / 50000000;
            freqR = fail_r / 50000000;
        end
        HELP: begin
            freqL = help_l / 50000000;
            freqR = help_r / 50000000;
        end
        SUCCESS1, SUCCESS2, SUCCESS3: begin
            freqL = success_l / 50000000;
            freqR = success_r / 50000000;
        end
        default: begin
            freqL = 1;
            freqR = 1;
        end
        endcase
    end
end

endmodule