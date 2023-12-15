// UI: title, button block, stage k, game task
// success, fail, staff name 

//picture addr left_up
`define next_btn_h = 0;
`define next_btn_v = 40;
`define back_btn_h = 80;
`define back_btn_v = 40;
`define retry_btn_h = 160;
`define retry_btn_v = 40;
`define stage1_btn_h = 140;
`define stage1_btn_v = 40;
`define stage2_btn_h = 0;
`define stage2_btn_v = 60;
`define stage3_btn_h = 80;
`define stage3_btn_v = 60;

`define btn_rec_h = 80;
`define btn_rec_v = 20;

`define title_h = 60;
`define title_v = 80;

`define title_rec_h = 240;
`define title_rec_v = 60;


module draw_interface(
    input [3:0] state;
    input [9:0] h_cnt;
    input [9:0] v_cnt;
    output [16:0] pixel_addr;
)
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;
always@(*)begin
    case(state)
    TITLE:begin
        if(h_cnt>=40&&h_cnt<280)begin
            if(v_cnt>=40&&v_cnt<100)begin
                pixel_addr = (h_cnt<<1 + (`title_h-40)+(v_cnt<<1+(`title_v-40))*320)%76800;
            end
        end//title
        else if(h_cnt>=120&&h_cnt<200)begin
            if(v_cnt>=120&&v_cnt<140)begin
                pixel_addr = (h_cnt<<1 + (`stage1_btn_h-120)+(v_cnt<<1+(`stage1_btn_v-120))*320)%76800;
            end//stage1
            else if(v_cnt>=160&&v_cnt<180)begin
                pixel_addr = (h_cnt<<1 + (`stage2_btn_h-120)+(v_cnt<<1+(`stage2_btn_v-160))*320)%76800;
            end//stage2
            else if(v_cnt>=200&&v_cnt<220)begin
                pixel_addr = (h_cnt<<1 + (`stage3_btn_h-120)+(v_cnt<<1+(`stage3_btn_v-200))*320)%76800;
            end//stage3
        end
    end
    endcase
end
endmodule
