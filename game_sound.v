// freqL, freqR
module game_sound(
    input clk,
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
    .clk(clk),
    .rst(rst),
	.en(state == TITLE),
	.toneL(title_l),
    .toneR(title_r)
);

bgm_help #(.LEN(1024)) bgmHelp(
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
            freqL = 50000000 / title_l;
            freqR = 50000000 / title_r;
        end
        STAFF: begin
            freqL = 50000000 / staff_l;
            freqR = 50000000 / staff_r;
        end
        STAGE1: begin
            freqL = 50000000 / stage1_l;
            freqR = 50000000 / stage1_r;
        end
        STAGE2: begin
            freqL = 50000000 / stage2_l;
            freqR = 50000000 / stage2_r;
        end
        STAGE3: begin
            freqL = 50000000 / stage3_l;
            freqR = 50000000 / stage3_r;
        end
        FAIL: begin
            freqL = 50000000 / fail_l;
            freqR = 50000000 / fail_r;
        end
        HELP: begin
            freqL = 50000000 / help_l;
            freqR = 50000000 / help_r;
        end
        SUCCESS1, SUCCESS2, SUCCESS3: begin
            freqL = 50000000 / success_l;
            freqR = 50000000 / success_r;
        end
        default: begin
            freqL = 1;
            freqR = 1;
        end
        endcase
    end
end

endmodule