// UI: title, button block, stage k, game task, life
// success, fail, staff name 
module draw_interface(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [1:0] key_find,
    input [1:0] life,
    input [1:0] todo,
    input [3:0] play_valid,
    output reg [16:0] pixel_addr,
    output reg isObject
);
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7;
parameter [3:0] FAIL = 8, HELP = 9;

parameter [1:0] NONE = 0, FIND_KEY = 1, FIND_LIGHT = 2, FIND_DOOR = 3; 
wire [8:0] x,y;
assign x = h_cnt >> 1;
assign y = v_cnt >> 1;

always @(*) begin
    pixel_addr = 0;
    isObject = 0;
    case(state)
    TITLE:begin 
        if(x >= 40 && x < 280 && y >= 40 && y < 100)begin //title
            pixel_addr = (x - 40 + (y + 20)*360)%86400;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 120 && y < 140)begin//stage1
                pixel_addr = (x - 120 + (y - 80)*360)%86400;
                isObject = 1;
            end else if(y >= 160 && y < 180)begin//stage2
                if(play_valid[2])begin
                    pixel_addr = (x - 40 + (y - 120)*360)%86400;
                    isObject = 1;
                end else begin
                    pixel_addr = (x + 120 + (y - 140)*360)%86400;
                    isObject = 1;
                end
            end else if(y >= 200 && y < 220)begin//stage3
                if(play_valid[3])begin
                    pixel_addr = (x + 40 + (y - 160)*360)%86400;
                    isObject = 1;
                end else begin
                    pixel_addr = (x + 120 + (y - 160)*360)%86400;
                    isObject = 1;
                end
            end
        end
    end
    STAGE1:begin
        if(x >= 120 && x < 200 && y >= 0 && y < 20)begin//stage1 title
            pixel_addr = (x - 120 + (y + 20)*360)%86400;
            isObject = 1;
        end else if(x >= 0 && x < 50 && y >= 30 && y < 50)begin//find
            isObject = 1;
            if(todo == FIND_KEY) //find key
                pixel_addr = (x + 240 + (y + 30)*360)%86400;
            else if(todo == FIND_DOOR) //find door
                pixel_addr = (x + 240 + (y + 50)*360)%86400;
        end else if(x >= 5 && x<15 && key_find>=1 && y>=55 && y<65)begin//key1
            pixel_addr = (x + 315 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(x >= 20 && x<30 && key_find>=2 && y>=55 && y<65)begin//key2
            pixel_addr = (x + 300 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(x >= 35 && x<45 && key_find==3 && y>=55 && y<65)begin//key3
            pixel_addr = (x + 285 + (y - 25)*360)%86400;
            isObject = 1;
        end
    end
    STAGE2:begin
        if(x >= 120 && x < 200 && y >= 0 && y < 20)begin//stage2 title
            pixel_addr = (x - 40 + (y + 20)*360)%86400;
            isObject = 1;
        end else if(x >= 0 && x < 50 && y >= 30 && y < 50)begin//find
            isObject = 1;
            if(todo == FIND_KEY) //find key
                pixel_addr = (x + 240 + (y + 30)*360)%86400;
            else if(todo == FIND_DOOR) //find door
                pixel_addr = (x + 240 + (y + 50)*360)%86400;
            else begin // find light
                pixel_addr = (x + 240 + (y + 70)*360)%86400;
            end
        end else if(x >= 5 && x<15 && key_find>=1 && y>=55 && y<65)begin//key1
            pixel_addr = (x + 315 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(x >= 20 && x<30 && key_find>=2 && y>=55 && y<65)begin//key2
            pixel_addr = (x + 300 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(x >= 35 && x<45 && key_find==3 && y>=55 && y<65)begin//key3
            pixel_addr = (x + 285 + (y - 25)*360)%86400;
            isObject = 1;
        end
    end
    STAGE3:begin
        if(x >= 120 && x < 200 && y >= 0 && y < 20)begin//stage3 title
            pixel_addr = (x + 40 + (y + 20)*360)%86400;
            isObject = 1;
        end else if(x >= 0 && x < 50 && y >= 30 && y < 50)begin//find
            isObject = 1;
            if(todo == FIND_KEY) //find key
                pixel_addr = (x + 240 + (y + 30)*360)%86400;
            else if(todo == FIND_DOOR) //find door
                pixel_addr = (x + 240 + (y + 50)*360)%86400;
        end else if(x >= 5 && x<15 && key_find>=1 && y>=55 && y<65)begin//key1
            pixel_addr = (x + 315 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(x >= 20 && x<30 && key_find>=2 && y>=55 && y<65)begin//key2
            pixel_addr = (x + 300 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(x >= 35 && x<45 && key_find==3 && y>=55 && y<65)begin//key3
            pixel_addr = (x + 285 + (y - 25)*360)%86400;
            isObject = 1;
        end else if(life >= 1 && x >= 265 && x < 280 && y >= 30 && y < 45)begin//life1
            pixel_addr = (x + 55 + (y + 10)*360)%86400;
            isObject = 1;
        end else if(life >= 2 && x >= 280 && x < 295 && y >= 30 && y < 45)begin//life2
            pixel_addr = (x + 40 + (y + 10)*360)%86400;
            isObject = 1;
        end else if(life == 3 && x >= 295 && x < 310 && y >= 30 && y < 45)begin//life1
            pixel_addr = (x + 25 + (y + 10)*360)%86400;
            isObject = 1;
        end
    end
    SUCCESS1, SUCCESS2:begin
        if(x >= 80 && x < 240 && y >= 40 && y < 100)begin //success
            pixel_addr = (x - 80 +(y + 80)*360)%86400;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 140 && y < 160)begin//next
                pixel_addr = (x + (y - 140)*360)%86400;
                isObject = 1;
            end else if(y >= 180 && y < 200)begin//back
                pixel_addr = (x + 80 + (y - 180)*360)%86400;
                isObject = 1;
            end
        end
    end
    SUCCESS3:begin
        if(x >= 80 && x < 240 && y >= 40 && y < 100)begin //success
            pixel_addr = (x - 80 +(y + 80)*360)%86400;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 150 && y < 170)begin//next
                pixel_addr = (x + (y - 150)*360)%86400;
                isObject = 1;
            end
        end
    end
    FAIL:begin
        if(x >= 80 && x < 240 && y >= 40 && y < 100)begin //fail
            pixel_addr = (x - 80 +(y + 140)*360)%86400;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 140 && y < 160)begin//retry
                pixel_addr = (x + 160 + (y - 140)*360)%86400;
                isObject = 1;
            end else if(y >= 180 && y < 200)begin//back
                pixel_addr = (x + 80 + (y - 180)*360)%86400;
                isObject = 1;
            end
        end
    end
    STAFF:begin
        if(x >= 80 && x < 240 && y >= 40 && y < 100)begin //Staff
            pixel_addr = (x + 80 +(y + 80)*360)%86400;
            isObject = 1;
        end else if(x >= 100 && x < 220 && y >= 120 && y < 160)begin//ting&ting
            pixel_addr = (x + 60 + (y + 60)*360)%86400;
            isObject = 1;
        end else if(x >= 120 && x < 200 && y >= 180 && y < 200)begin//back
            pixel_addr = (x + 80 + (y - 180)*360)%86400;
            isObject = 1;
        end
    end
    endcase
end


endmodule
