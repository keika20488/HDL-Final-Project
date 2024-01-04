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
parameter [3:0] STAGE1 = 2, STAGE2 = 4, STAGE3 = 6;

wire [8:0] x,y;
assign x = h_cnt>>1;
assign y = v_cnt>>1;
always@(*)begin
    isObject = 0;
    pixel_addr = 0;
    case(state)
    STAGE1:begin//320 30
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
    STAGE2:begin//320 30
        if(!isDark && key_find == 0)begin
            if(x >= 130 && x < 140 && y >= 40 && y < 50)begin
                pixel_addr = (x + 190 + (y - 10)*360)%86400;
                isObject = 1;
            end//key1
        end
        else if(key_find == 1)begin
            if(x >= 220 && x < 230 && y >= 70 && y < 80)begin
                pixel_addr = (x + 100 + (y - 40)*360)%86400;
                isObject = 1;
            end//key2
        end
        else if(key_find == 2)begin
            if(x >= 215 && x < 225 && y >= 130 && y < 140)begin
                pixel_addr = (x + 105 +(y - 100)*360)%86400;
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
    STAGE3: begin//320 30
        if(key_find == 0)begin
            if(x >= 230 && x < 240 && y >= 40 && y < 50)begin
                pixel_addr = (x + 90 + (y - 10)*360)%86400;
                isObject = 1;
            end//key1
        end
        else if(key_find == 1)begin
            if(x >= 100 && x < 110 && y >= 110 && y < 120)begin
                pixel_addr = (x + 220 + (y - 80)*360)%86400;
                isObject = 1;
            end//key2
        end
        else if(key_find == 2)begin
            if(x >= 160 && x < 170 && y >= 160 && y < 170)begin
                pixel_addr = (x + 160 +(y - 130)*360)%86400;
                isObject = 1;
            end//key3
        end
    end
    endcase
end
endmodule