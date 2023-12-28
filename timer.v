// Time record
module Timer (
    input clk,
    input [3:0] state,
    output reg [16:0] nums
);
reg [19:0] cnt;
reg [6:0] minute;
reg [5:0] second;
wire [4:0] min_10, min_1, sec_10, sec_1;
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

always @(posedge clk) begin
    cnt <= 0;
    case(state)
    STAGE1, STAGE2, STAGE3:begin
        if (cnt < 1000000) cnt <= cnt + 1;
        else cnt <= 0;
    end
    endcase
end

always @(posedge clk) begin
    second <= second;
    minute <= minute;
    case(state)
    STAGE1, STAGE2, STAGE3:begin
        if (cnt == 1000000 && second < 59)
            second <= second + 1;
        if (second == 59 && minute < 99)
            minute <= minute + 1;
        else minute <= minute; 
    end
    default:begin
        second <= 0;
        minute <= 0;
    end
    endcase
end
assign min_10 = minute / 10;
assign min_1 = minute % 10;
assign sec_10 = second / 10;
assign sec_1 = second % 10;
always @(posedge clk) begin
    case(state)
    TITLE, STAFF: nums = 16'hAAAA;
    STAGE1, STAGE2, STAGE3: nums = {min_10, min_1, sec_10, sec_1};
    default: nums <= nums;
    endcase
end
endmodule