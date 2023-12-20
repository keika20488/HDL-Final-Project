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
    STAGE1, STAGE2, STAGE3:begin
        if(key_find == 0)begin
            if(x >=65 && x <85 && y >=35&& y <55)begin
                pixel_addr = (x -65+(y +45)*320)%76800;
                isObject = 1;
            end//key1
        end
        else if(key_find == 1)begin
            if(x >=235 && x <255 && y >=35&& y <55)begin
                pixel_addr = (x -235+(y +45)*320)%76800;
                isObject = 1;
            end//key2
        end
        else if(key_find == 2)begin
            if(x >=235 && x <255 && y >=205&& y <225)begin
                pixel_addr = (x -235+(y -125)*320)%76800;
                isObject = 1;
            end//key3
        end
        if (state == STAGE2) begin
            if (isDark) begin
                if (x >= 100 && x < 120 && y >= 100 && y < 120) begin
                    pixel_addr = (x - 100 + (y + 20) * 320) % 76800;
                    isObject = 1;
                end
            end else begin
                if (x >= 100 && x < 120 && y >= 100 && y < 120) begin
                    pixel_addr = (x - 80 + (y + 20) * 320) % 76800;
                    isObject = 1;
                end
            end
        end
    end
    endcase
end
endmodule