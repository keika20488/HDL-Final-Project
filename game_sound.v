// freqL, freqR
module game_sound(
    input clk_21,
    input clk_22,
    input clk_23,
    input rst,
    input mute,
    input [3:0] state,
    output reg [25:0] freqL,
    output reg [25:0] freqR
);

parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7;
parameter [3:0] FAIL = 8, HELP = 9;

wire [25:0] title_l, title_r, staff_l, staff_r;
wire [25:0] stage1_l, stage1_r, stage2_l, stage2_r;
wire [25:0] stage3_l, stage3_r, success_l, success_r;
wire [25:0] fail_l, fail_r, help_l, help_r;

bgm_title #(.LEN(2240)) bgmTitle(
    .clk(clk_21),
    .rst(rst),
	.en(state == TITLE),
	.toneL(title_l),
    .toneR(title_r)
);

bgm_help #(.LEN(1024)) bgmHelp(
    .clk(clk_22),
    .rst(rst),
	.en(state == HELP),
	.toneL(help_l),
    .toneR(help_r)
);

always @(*) begin
    if (mute) begin
        freqL = 50000000;
        freqR = 50000000;
    end else begin
        case(state)
        TITLE: begin
            freqL = title_l;
            freqR = title_r;
        end
        STAFF: begin
            freqL = staff_l;
            freqR = staff_r;
        end
        STAGE1: begin
            freqL = stage1_l;
            freqR = stage1_r;
        end
        STAGE2: begin
            freqL = stage2_l;
            freqR = stage2_r;
        end
        STAGE3: begin
            freqL = stage3_l;
            freqR = stage3_r;
        end
        FAIL: begin
            freqL = fail_l;
            freqR = fail_r;
        end
        HELP: begin
            freqL = help_l;
            freqR = help_r;
        end
        SUCCESS1, SUCCESS2, SUCCESS3: begin
            freqL = success_l;
            freqR = success_r;
        end
        default: begin
            freqL = 50000000;
            freqR = 50000000;
        end
        endcase
    end
end

endmodule