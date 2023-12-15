// draw_1, draw_2...
module game_display(
    input [3:0] state,
    input clk,
    input rst,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    output reg [16:0] pixel_addr;
)

//assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1) )% 76800;  //640*480 --> 320*240 
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

always@(posedge clk or posedge rst)begin
end
always@(*)begin
    case(state)
    TITLE:begin
    end
    STAFF:begin
    end
    STAGE1:begin
    end
    SUCCESS1:begin
    end
    STAGE2:begin
    end
    SUCCESS2:begin
    end
    STAGE3:begin
    end
    SUCCESS3:begin
    end
    FAIL:begin
    end
    endcase
end
endmodule