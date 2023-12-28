// key & light
module draw_obj(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [1:0] key_find,
    input isDark,
    output reg[16:0] pixel_addr,
    output reg isObject
);
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

wire [8:0] x,y;
assign x = h_cnt>>1;
assign y = v_cnt>>1;
always@(*)begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    STAGE1, STAGE3:begin
        if(key_find == 0)begin
            if(x >= 70 && x < 80 && y >= 40 && y < 50)begin
                pixel_addr = (x + 250 + (y - 10)*360)%86400;
                isObject = 1;
            end//key1
        end
        else if(key_find == 1)begin
            if(x >= 250 && x < 260 && y >= 40 && y < 50)begin
                pixel_addr = (x + 70 + (y - 10)*360)%86400;
                isObject = 1;
            end//key2
        end
        else if(key_find == 2)begin
            if(x >= 215 && x < 225 && y >= 220 && y < 230)begin
                pixel_addr = (x + 105 +(y - 190)*360)%86400;
                isObject = 1;
            end//key3
        end
    end
    STAGE2:begin
        if(!isDark && key_find == 0)begin
            if(x >= 70 && x < 80 && y >= 40 && y < 50)begin
                pixel_addr = (x + 250 + (y - 10)*360)%86400;
                isObject = 1;
            end//key1
        end
        else if(key_find == 1)begin
            if(x >= 250 && x < 260 && y >= 40 && y < 50)begin
                pixel_addr = (x + 70 + (y - 10)*360)%86400;
                isObject = 1;
            end//key2
        end
        else if(key_find == 2)begin
            if(x >= 215 && x < 225 && y >= 220 && y < 230)begin
                pixel_addr = (x + 105 +(y - 190)*360)%86400;
                isObject = 1;
            end//key3
        end
        if (isDark) begin
            if (x >= 70 && x < 80 && y >= 220 && y < 230) begin
                pixel_addr = (x + 250 + (y - 200) * 360) % 86400;
                isObject = 1;
            end
        end else begin
            if (x >= 70 && x < 80 && y >= 220 && y < 230) begin
                pixel_addr = (x + 260 + (y - 200) * 360) % 86400;
                isObject = 1;
            end
        end
    end
    endcase
end
endmodule