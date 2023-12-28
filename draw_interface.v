// UI: title, button block, stage k, game task, life
// success, fail, staff name 

//picture addr left_up
`define stage1_show_h 0
`define stage1_show_v 140

module draw_interface(
    input [3:0] state,
    input [9:0] h_cnt,
    input [9:0] v_cnt,
    input [1:0] key_find,
    input [1:0] heart,
    input [1:0] todo,
    input [3:0] play_valid,
    output reg [16:0] pixel_addr,
    output reg isObject
);
parameter [3:0] TITLE = 0, STAFF = 1;
parameter [3:0] STAGE1 = 2, SUCCESS1 = 3;
parameter [3:0] STAGE2 = 4, SUCCESS2 = 5;
parameter [3:0] STAGE3 = 6, SUCCESS3 = 7, FAIL = 8;

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
            pixel_addr = (x + 20+(y +40)*320)%76800;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 120 && y < 140)begin//stage1
                pixel_addr = (x + 120+(y -80 )*320)%76800;
                isObject = 1;
            end else if(y >= 160 && y < 180)begin//stage2
                if(play_valid[2])begin
                    pixel_addr = (x - 120+(y-100)*320)%76800;
                    isObject = 1;
                end else begin
                    pixel_addr = (x + (160-120)+(y +(60-160))*320)%76800;
                    isObject = 1;
                end
            end else if(y >= 200 && y < 220)begin//stage3
                if(play_valid[3])begin
                    pixel_addr = (x + (80-120)+(y +(60-200))*320)%76800;
                    isObject = 1;
                end else begin
                    pixel_addr = (x + (240-120)+(y +(60-200))*320)%76800;
                    isObject = 1;
                end
            end
        end
    end
    STAGE1:begin
        if(x >= 120 && x < 200 && y >= 0 && y < 20)begin//stage1 title
            pixel_addr = (x + (`stage1_show_h-120)+(y +(`stage1_show_v))*320)%76800;
            isObject = 1;
        end else if(x >= 0 && x<40 && y >= 30 && y < 50)begin//find
            pixel_addr = (x+20+(y+90)*320)%76800;
            isObject = 1;
        end else if(x >= 40 && x < 60 && y >= 30 && y < 50)begin
            if(todo == FIND_KEY)begin//find key
                pixel_addr = (x-40+(y +50)*320)%76800;
                isObject = 1;
            end else if(todo == FIND_DOOR)begin//find door
                pixel_addr = (x-20+(y +50)*320)%76800;
                isObject = 1;
            end
        end else if(x >= 0 && x<20 && key_find>=1 && y>=50 && y<70)begin//key1
            pixel_addr = ((x)+(y +30)*320)%76800;
            isObject = 1;
        end else if(x >= 20 && x<40 && key_find>=2 && y>=50 && y<70)begin//key2
            pixel_addr = ((x-20)+(y +30)*320)%76800;
            isObject = 1;
        end else if(x >= 40 && x<60 && key_find==3 && y>=50 && y<70)begin//key3
            pixel_addr = ((x-40)+(y +30)*320)%76800;
            isObject = 1;
        end
    end
    STAGE2:begin
        if(x >= 120 && x < 200 && y >= 0 && y < 20)begin//stage2 title
            pixel_addr = (x - 120 +(y + 60)*320)%76800;
            isObject = 1;
        end else if(x >= 0 && x<40 && y >= 30 && y < 50)begin//find
            pixel_addr = (x+20+(y+90)*320)%76800;
            isObject = 1;
        end else if(x >= 40 && x < 60 && y >= 30 && y < 50)begin
            if(todo == FIND_KEY)begin//find key
                pixel_addr = (x-40+(y +50)*320)%76800;
                isObject = 1;
            end else if(todo == FIND_DOOR)begin//find door
                pixel_addr = (x-20+(y +50)*320)%76800;
                isObject = 1;
            end
        end else if(x >= 0 && x<20 && key_find>=1 && y>=50 && y<70)begin//key1
            pixel_addr = ((x)+(y +30)*320)%76800;
            isObject = 1;
        end else if(x >= 20 && x<40 && key_find>=2 && y>=50 && y<70)begin//key2
            pixel_addr = ((x-20)+(y +30)*320)%76800;
            isObject = 1;
        end else if(x >= 40 && x<60 && key_find==3 && y>=50 && y<70)begin//key3
            pixel_addr = ((x-40)+(y +30)*320)%76800;
            isObject = 1;
        end
    end
    STAGE3:begin
        if(x >= 120 && x < 200 && y >= 0 && y < 20)begin//stage3 title
            pixel_addr = (x - 40 +(y + 60)*320)%76800;
            isObject = 1;
        end else if(x >= 0 && x<40 && y >= 30 && y < 50)begin//find
            pixel_addr = (x+20+(y+90)*320)%76800;
            isObject = 1;
        end else if(x >= 40 && x < 60 && y >= 30 && y < 50)begin
            if(todo == FIND_KEY)begin//find key
                pixel_addr = (x-40+(y +50)*320)%76800;
                isObject = 1;
            end else if(todo == FIND_DOOR)begin//find door
                pixel_addr = (x-20+(y +50)*320)%76800;
                isObject = 1;
            end
        end else if(x >= 0 && x<20 && key_find>=1 && y>=50 && y<70)begin//key1
            pixel_addr = ((x)+(y +30)*320)%76800;
            isObject = 1;
        end else if(x >= 20 && x<40 && key_find>=2 && y>=50 && y<70)begin//key2
            pixel_addr = ((x-20)+(y +30)*320)%76800;
            isObject = 1;
        end else if(x >= 40 && x<60 && key_find==3 && y>=50 && y<70)begin//key3
            pixel_addr = ((x-40)+(y +30)*320)%76800;
            isObject = 1;
        end
    end
    SUCCESS1, SUCCESS2:begin 
        if(x >= 40 && x < 280 && y >= 40 && y < 100)begin //title
            pixel_addr = (x + 20+(y +40)*320)%76800;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 140 && y < 160)begin//next
                pixel_addr = (x - 120 + (y - 100)*320)%76800;
                isObject = 1;
            end else if(y >= 180 && y < 200)begin//back
                pixel_addr = (x - 40 + (y - 140)*320)%76800;
                isObject = 1;
            end
        end
    end
    SUCCESS3:begin 
        if(x >= 40 && x < 280 && y >= 40 && y < 100)begin //title
            pixel_addr = (x + 20+(y +40)*320)%76800;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 140 && y < 160)begin//next
                pixel_addr = (x - 120 + (y - 100)*320)%76800;
                isObject = 1;
            end
        end
    end
    FAIL:begin 
        if(x >= 40 && x < 280 && y >= 40 && y < 100)begin //title
            pixel_addr = (x + 20+(y +40)*320)%76800;
            isObject = 1;
        end else if(x >= 120 && x < 200)begin
            if(y >= 140 && y < 160)begin//retry
                pixel_addr = (x + 40 + (y - 100)*320)%76800;
                isObject = 1;
            end else if(y >= 180 && y < 200)begin//back
                pixel_addr = (x - 40 + (y - 140)*320)%76800;
                isObject = 1;
            end
        end
    end
    endcase
end


endmodule
