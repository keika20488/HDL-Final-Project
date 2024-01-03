`define SIL  26'd50000000

`define C1  26'd33
`define Cs1 26'd35
`define Df1 26'd37
`define D1  26'd37
`define Ds1 26'd39
`define Ef1 26'd39
`define E1  26'd41
`define F1  26'd44
`define Fs1 26'd46
`define Gf1 26'd49
`define G1  26'd49
`define Gs1 26'd52
`define Af1 26'd55
`define A1  26'd55
`define Bf1 26'd58
`define B1  26'd62
`define C2  26'd65
`define Cs2 26'd69
`define Df2 26'd73
`define D2  26'd73
`define Ds2 26'd78
`define Ef2 26'd78
`define E2  26'd82
`define F2  26'd87
`define Fs2 26'd92
`define Gf2 26'd98
`define G2  26'd98
`define Gs2 26'd104
`define Af2 26'd110
`define A2  26'd110
`define Bf2 26'd117
`define B2  26'd123
`define C3  26'd131
`define Cs3 26'd139
`define Df3 26'd147
`define D3  26'd147
`define Ds3 26'd156
`define Ef3 26'd156
`define E3  26'd165
`define F3  26'd175
`define Fs3 26'd185
`define Gf3 26'd196
`define G3  26'd196
`define Gs3 26'd208
`define Af3 26'd220
`define A3  26'd220
`define Bf3 26'd233
`define B3  26'd247
`define C4  26'd262
`define Cs4 26'd277
`define Df4 26'd294
`define D4  26'd294
`define Ds4 26'd311
`define Ef4 26'd311
`define E4  26'd330
`define F4  26'd349
`define Fs4 26'd370
`define Gf4 26'd392
`define G4  26'd392
`define Gs4 26'd415
`define Af4 26'd440
`define A4  26'd440
`define Bf4 26'd466
`define B4  26'd494
`define C5  26'd523
`define Cs5 26'd554
`define Df5 26'd587
`define D5  26'd587
`define Ds5 26'd622
`define Ef5 26'd622
`define E5  26'd659
`define F5  26'd698
`define Fs5 26'd740
`define Gf5 26'd784
`define G5  26'd784
`define Gs5 26'd831
`define Af5 26'd880
`define A5  26'd880
`define Bf5 26'd932
`define B5  26'd988
`define C6  26'd1047
`define Cs6 26'd1109
`define Df6 26'd1175
`define D6  26'd1175
`define Ds6 26'd1245
`define Ef6 26'd1245
`define E6  26'd1319
`define F6  26'd1397
`define Fs6 26'd1480
`define Gf6 26'd1568
`define G6  26'd1568
`define Gs6 26'd1661
`define Af6 26'd1760
`define A6  26'd1760
`define Bf6 26'd1864
`define B6  26'd1975
`define C7  26'd2093
`define Cs7 26'd2217
`define Df7 26'd2349
`define D7  26'd2349
`define Ds7 26'd2489
`define Ef7 26'd2489
`define E7  26'd2637
`define F7  26'd2794
`define Fs7 26'd2960
`define Gf7 26'd3136
`define G7  26'd3136
`define Gs7 26'd3322
`define Af7 26'd3520
`define A7  26'd3520
`define Bf7 26'd3729
`define B7  26'd3951


module bgm_title(
    input clk,
    input rst,
	input en,
	output reg [25:0] toneL,
    output reg [25:0] toneR
);

    
parameter LEN = 4096;
reg [11:0] beat, next_beat;

always @(posedge clk, posedge rst) begin
    if (rst)
        beat <= 0;
    else if (en)
        beat <= next_beat;
    else beat <= 0;
end

always @* begin
    next_beat = (beat + 1 < LEN) ? (beat + 1) : 0;
end

always @* begin
    if(en == 1) begin
        case(beat)
        // Measure 1 //
        12'd0: toneR = `D6;   12'd1: toneR = `D6;
        12'd2: toneR = `D6;   12'd3: toneR = `D6;
        12'd4: toneR = `D6;   12'd5: toneR = `D6;
        12'd6: toneR = `D6;   12'd7: toneR = `D6;

        12'd8: toneR = `D6;   12'd9: toneR = `D6;
        12'd10: toneR = `D6;   12'd11: toneR = `D6;
        12'd12: toneR = `D6;   12'd13: toneR = `D6;
        12'd14: toneR = `D6;   12'd15: toneR = `D6;

        12'd16: toneR = `D6;   12'd17: toneR = `D6;
        12'd18: toneR = `D6;   12'd19: toneR = `D6;
        12'd20: toneR = `D6;   12'd21: toneR = `D6;
        12'd22: toneR = `D6;   12'd23: toneR = `D6;

        12'd24: toneR = `D6;   12'd25: toneR = `D6;
        12'd26: toneR = `D6;   12'd27: toneR = `D6;
        12'd28: toneR = `D6;   12'd29: toneR = `D6;
        12'd30: toneR = `D6;   12'd31: toneR = `D6;

        12'd32: toneR = `D6;   12'd33: toneR = `D6;
        12'd34: toneR = `D6;   12'd35: toneR = `D6;
        12'd36: toneR = `D6;   12'd37: toneR = `D6;
        12'd38: toneR = `D6;   12'd39: toneR = `D6;

        12'd40: toneR = `D6;   12'd41: toneR = `D6;
        12'd42: toneR = `D6;   12'd43: toneR = `D6;
        12'd44: toneR = `D6;   12'd45: toneR = `D6;
        12'd46: toneR = `D6;   12'd47: toneR = `D6;

        12'd48: toneR = `D5;   12'd49: toneR = `D5;
        12'd50: toneR = `D5;   12'd51: toneR = `D5;
        12'd52: toneR = `D5;   12'd53: toneR = `D5;
        12'd54: toneR = `D5;   12'd55: toneR = `D5;

        12'd56: toneR = `G5;   12'd57: toneR = `G5;
        12'd58: toneR = `G5;   12'd59: toneR = `G5;
        12'd60: toneR = `G5;   12'd61: toneR = `G5;
        12'd62: toneR = `G5;   12'd63: toneR = `G5;

        // Measure 2 //
        12'd64: toneR = `A5;   12'd65: toneR = `A5;
        12'd66: toneR = `A5;   12'd67: toneR = `A5;
        12'd68: toneR = `A5;   12'd69: toneR = `A5;
        12'd70: toneR = `A5;   12'd71: toneR = `A5;

        12'd72: toneR = `A5;   12'd73: toneR = `A5;
        12'd74: toneR = `A5;   12'd75: toneR = `A5;
        12'd76: toneR = `A5;   12'd77: toneR = `A5;
        12'd78: toneR = `SIL;   12'd79: toneR = `SIL;

        12'd80: toneR = `B5;   12'd81: toneR = `B5;
        12'd82: toneR = `B5;   12'd83: toneR = `B5;
        12'd84: toneR = `B5;   12'd85: toneR = `B5;
        12'd86: toneR = `B5;   12'd87: toneR = `B5;

        12'd88: toneR = `B5;   12'd89: toneR = `B5;
        12'd90: toneR = `B5;   12'd91: toneR = `B5;
        12'd92: toneR = `B5;   12'd93: toneR = `B5;
        12'd94: toneR = `SIL;   12'd95: toneR = `SIL;

        12'd96: toneR = `A5;   12'd97: toneR = `A5;
        12'd98: toneR = `B5;   12'd99: toneR = `B5;
        12'd100: toneR = `A5;   12'd101: toneR = `A5;
        12'd102: toneR = `A5;   12'd103: toneR = `A5;

        12'd104: toneR = `A5;   12'd105: toneR = `A5;
        12'd106: toneR = `A5;   12'd107: toneR = `A5;
        12'd108: toneR = `A5;   12'd109: toneR = `A5;
        12'd110: toneR = `SIL;   12'd111: toneR = `SIL;

        12'd112: toneR = `G5;   12'd113: toneR = `G5;
        12'd114: toneR = `G5;   12'd115: toneR = `G5;
        12'd116: toneR = `G5;   12'd117: toneR = `G5;
        12'd118: toneR = `G5;   12'd119: toneR = `G5;

        12'd120: toneR = `G5;   12'd121: toneR = `G5;
        12'd122: toneR = `G5;   12'd123: toneR = `G5;
        12'd124: toneR = `G5;   12'd125: toneR = `G5;
        12'd126: toneR = `G5;   12'd127: toneR = `G5;

        // Measure 3 //
        12'd128: toneR = `D6;   12'd129: toneR = `D6;
        12'd130: toneR = `D6;   12'd131: toneR = `D6;
        12'd132: toneR = `D6;   12'd133: toneR = `D6;
        12'd134: toneR = `D6;   12'd135: toneR = `D6;

        12'd136: toneR = `D6;   12'd137: toneR = `D6;
        12'd138: toneR = `D6;   12'd139: toneR = `D6;
        12'd140: toneR = `D6;   12'd141: toneR = `D6;
        12'd142: toneR = `D6;   12'd143: toneR = `D6;

        12'd144: toneR = `D6;   12'd145: toneR = `D6;
        12'd146: toneR = `D6;   12'd147: toneR = `D6;
        12'd148: toneR = `D6;   12'd149: toneR = `D6;
        12'd150: toneR = `D6;   12'd151: toneR = `D6;

        12'd152: toneR = `D6;   12'd153: toneR = `D6;
        12'd154: toneR = `D6;   12'd155: toneR = `D6;
        12'd156: toneR = `D6;   12'd157: toneR = `D6;
        12'd158: toneR = `D6;   12'd159: toneR = `D6;

        12'd160: toneR = `D6;   12'd161: toneR = `D6;
        12'd162: toneR = `D6;   12'd163: toneR = `D6;
        12'd164: toneR = `D6;   12'd165: toneR = `D6;
        12'd166: toneR = `D6;   12'd167: toneR = `D6;

        12'd168: toneR = `D6;   12'd169: toneR = `D6;
        12'd170: toneR = `D6;   12'd171: toneR = `D6;
        12'd172: toneR = `D6;   12'd173: toneR = `D6;
        12'd174: toneR = `D6;   12'd175: toneR = `D6;

        12'd176: toneR = `D5;   12'd177: toneR = `D5;
        12'd178: toneR = `D5;   12'd179: toneR = `D5;
        12'd180: toneR = `D5;   12'd181: toneR = `D5;
        12'd182: toneR = `D5;   12'd183: toneR = `D5;

        12'd184: toneR = `G5;   12'd185: toneR = `G5;
        12'd186: toneR = `G5;   12'd187: toneR = `G5;
        12'd188: toneR = `G5;   12'd189: toneR = `G5;
        12'd190: toneR = `G5;   12'd191: toneR = `G5;

        // Measure 4 //
        12'd192: toneR = `A5;   12'd193: toneR = `A5;
        12'd194: toneR = `A5;   12'd195: toneR = `A5;
        12'd196: toneR = `A5;   12'd197: toneR = `A5;
        12'd198: toneR = `A5;   12'd199: toneR = `A5;

        12'd200: toneR = `A5;   12'd201: toneR = `A5;
        12'd202: toneR = `A5;   12'd203: toneR = `A5;
        12'd204: toneR = `A5;   12'd205: toneR = `A5;
        12'd206: toneR = `SIL;   12'd207: toneR = `SIL;

        12'd208: toneR = `B5;   12'd209: toneR = `B5;
        12'd210: toneR = `B5;   12'd211: toneR = `B5;
        12'd212: toneR = `B5;   12'd213: toneR = `B5;
        12'd214: toneR = `B5;   12'd215: toneR = `B5;

        12'd216: toneR = `B5;   12'd217: toneR = `B5;
        12'd218: toneR = `B5;   12'd219: toneR = `B5;
        12'd220: toneR = `B5;   12'd221: toneR = `B5;
        12'd222: toneR = `SIL;   12'd223: toneR = `SIL;

        12'd224: toneR = `A5;   12'd225: toneR = `A5;
        12'd226: toneR = `B5;   12'd227: toneR = `B5;
        12'd228: toneR = `A5;   12'd229: toneR = `A5;
        12'd230: toneR = `A5;   12'd231: toneR = `A5;

        12'd232: toneR = `A5;   12'd233: toneR = `A5;
        12'd234: toneR = `A5;   12'd235: toneR = `A5;
        12'd236: toneR = `A5;   12'd237: toneR = `A5;
        12'd238: toneR = `SIL;   12'd239: toneR = `SIL;

        12'd240: toneR = `G5;   12'd241: toneR = `G5;
        12'd242: toneR = `G5;   12'd243: toneR = `G5;
        12'd244: toneR = `G5;   12'd245: toneR = `G5;
        12'd246: toneR = `G5;   12'd247: toneR = `G5;

        12'd248: toneR = `G5;   12'd249: toneR = `G5;
        12'd250: toneR = `G5;   12'd251: toneR = `G5;
        12'd252: toneR = `G5;   12'd253: toneR = `G5;
        12'd254: toneR = `G5;   12'd255: toneR = `G5;

        // Measure 5 //
        12'd256: toneR = `Cs6;   12'd257: toneR = `Cs6;
        12'd258: toneR = `Cs6;   12'd259: toneR = `Cs6;
        12'd260: toneR = `Cs6;   12'd261: toneR = `Cs6;
        12'd262: toneR = `Cs6;   12'd263: toneR = `Cs6;

        12'd264: toneR = `Cs6;   12'd265: toneR = `Cs6;
        12'd266: toneR = `Cs6;   12'd267: toneR = `Cs6;
        12'd268: toneR = `Cs6;   12'd269: toneR = `Cs6;
        12'd270: toneR = `Cs6;   12'd271: toneR = `Cs6;

        12'd272: toneR = `Cs6;   12'd273: toneR = `Cs6;
        12'd274: toneR = `Cs6;   12'd275: toneR = `Cs6;
        12'd276: toneR = `Cs6;   12'd277: toneR = `Cs6;
        12'd278: toneR = `Cs6;   12'd279: toneR = `Cs6;

        12'd280: toneR = `Cs6;   12'd281: toneR = `Cs6;
        12'd282: toneR = `Cs6;   12'd283: toneR = `Cs6;
        12'd284: toneR = `Cs6;   12'd285: toneR = `Cs6;
        12'd286: toneR = `Cs6;   12'd287: toneR = `Cs6;

        12'd288: toneR = `Cs6;   12'd289: toneR = `Cs6;
        12'd290: toneR = `Cs6;   12'd291: toneR = `Cs6;
        12'd292: toneR = `Cs6;   12'd293: toneR = `Cs6;
        12'd294: toneR = `Cs6;   12'd295: toneR = `Cs6;

        12'd296: toneR = `Cs6;   12'd297: toneR = `Cs6;
        12'd298: toneR = `Cs6;   12'd299: toneR = `Cs6;
        12'd300: toneR = `Cs6;   12'd301: toneR = `Cs6;
        12'd302: toneR = `Cs6;   12'd303: toneR = `Cs6;

        12'd304: toneR = `Cs5;   12'd305: toneR = `Cs5;
        12'd306: toneR = `Cs5;   12'd307: toneR = `Cs5;
        12'd308: toneR = `Cs5;   12'd309: toneR = `Cs5;
        12'd310: toneR = `Cs5;   12'd311: toneR = `Cs5;

        12'd312: toneR = `E5;   12'd313: toneR = `E5;
        12'd314: toneR = `E5;   12'd315: toneR = `E5;
        12'd316: toneR = `E5;   12'd317: toneR = `E5;
        12'd318: toneR = `E5;   12'd319: toneR = `E5;

        // Measure 6 //
        12'd320: toneR = `Fs5;   12'd321: toneR = `Fs5;
        12'd322: toneR = `Fs5;   12'd323: toneR = `Fs5;
        12'd324: toneR = `Fs5;   12'd325: toneR = `Fs5;
        12'd326: toneR = `Fs5;   12'd327: toneR = `Fs5;

        12'd328: toneR = `Fs5;   12'd329: toneR = `Fs5;
        12'd330: toneR = `Fs5;   12'd331: toneR = `Fs5;
        12'd332: toneR = `Fs5;   12'd333: toneR = `Fs5;
        12'd334: toneR = `SIL;   12'd335: toneR = `SIL;

        12'd336: toneR = `G5;   12'd337: toneR = `G5;
        12'd338: toneR = `G5;   12'd339: toneR = `G5;
        12'd340: toneR = `G5;   12'd341: toneR = `G5;
        12'd342: toneR = `G5;   12'd343: toneR = `G5;

        12'd344: toneR = `G5;   12'd345: toneR = `G5;
        12'd346: toneR = `G5;   12'd347: toneR = `G5;
        12'd348: toneR = `G5;   12'd349: toneR = `G5;
        12'd350: toneR = `SIL;   12'd351: toneR = `SIL;

        12'd352: toneR = `A5;   12'd353: toneR = `A5;
        12'd354: toneR = `B5;   12'd355: toneR = `B5;
        12'd356: toneR = `A5;   12'd357: toneR = `A5;
        12'd358: toneR = `A5;   12'd359: toneR = `A5;

        12'd360: toneR = `A5;   12'd361: toneR = `A5;
        12'd362: toneR = `A5;   12'd363: toneR = `A5;
        12'd364: toneR = `A5;   12'd365: toneR = `A5;
        12'd366: toneR = `A5;   12'd367: toneR = `A5;

        12'd368: toneR = `A5;   12'd369: toneR = `A5;
        12'd370: toneR = `A5;   12'd371: toneR = `A5;
        12'd372: toneR = `A5;   12'd373: toneR = `A5;
        12'd374: toneR = `SIL;   12'd375: toneR = `SIL;

        12'd376: toneR = `D6;   12'd377: toneR = `D6;
        12'd378: toneR = `D6;   12'd379: toneR = `D6;
        12'd380: toneR = `D6;   12'd381: toneR = `D6;
        12'd382: toneR = `D6;   12'd383: toneR = `D6;

        // Measure 7 //
        12'd384: toneR = `B5;   12'd385: toneR = `B5;
        12'd386: toneR = `B5;   12'd387: toneR = `B5;
        12'd388: toneR = `B5;   12'd389: toneR = `B5;
        12'd390: toneR = `B5;   12'd391: toneR = `B5;

        12'd392: toneR = `B5;   12'd393: toneR = `B5;
        12'd394: toneR = `B5;   12'd395: toneR = `B5;
        12'd396: toneR = `B5;   12'd397: toneR = `B5;
        12'd398: toneR = `B5;   12'd399: toneR = `B5;

        12'd400: toneR = `B5;   12'd401: toneR = `B5;
        12'd402: toneR = `B5;   12'd403: toneR = `B5;
        12'd404: toneR = `B5;   12'd405: toneR = `B5;
        12'd406: toneR = `B5;   12'd407: toneR = `B5;

        12'd408: toneR = `B5;   12'd409: toneR = `B5;
        12'd410: toneR = `B5;   12'd411: toneR = `B5;
        12'd412: toneR = `B5;   12'd413: toneR = `B5;
        12'd414: toneR = `B5;   12'd415: toneR = `B5;

        12'd416: toneR = `B5;   12'd417: toneR = `B5;
        12'd418: toneR = `B5;   12'd419: toneR = `B5;
        12'd420: toneR = `B5;   12'd421: toneR = `B5;
        12'd422: toneR = `B5;   12'd423: toneR = `B5;

        12'd424: toneR = `B5;   12'd425: toneR = `B5;
        12'd426: toneR = `B5;   12'd427: toneR = `B5;
        12'd428: toneR = `B5;   12'd429: toneR = `B5;
        12'd430: toneR = `B5;   12'd431: toneR = `B5;

        12'd432: toneR = `SIL;   12'd433: toneR = `SIL;
        12'd434: toneR = `SIL;   12'd435: toneR = `SIL;
        12'd436: toneR = `SIL;   12'd437: toneR = `SIL;
        12'd438: toneR = `SIL;   12'd439: toneR = `SIL;

        12'd440: toneR = `SIL;   12'd441: toneR = `SIL;
        12'd442: toneR = `SIL;   12'd443: toneR = `SIL;
        12'd444: toneR = `SIL;   12'd445: toneR = `SIL;
        12'd446: toneR = `SIL;   12'd447: toneR = `SIL;

        // Measure 8 //
        12'd448: toneR = `SIL;   12'd449: toneR = `SIL;
        12'd450: toneR = `SIL;   12'd451: toneR = `SIL;
        12'd452: toneR = `SIL;   12'd453: toneR = `SIL;
        12'd454: toneR = `SIL;   12'd455: toneR = `SIL;

        12'd456: toneR = `SIL;   12'd457: toneR = `SIL;
        12'd458: toneR = `SIL;   12'd459: toneR = `SIL;
        12'd460: toneR = `SIL;   12'd461: toneR = `SIL;
        12'd462: toneR = `SIL;   12'd463: toneR = `SIL;

        12'd464: toneR = `SIL;   12'd465: toneR = `SIL;
        12'd466: toneR = `SIL;   12'd467: toneR = `SIL;
        12'd468: toneR = `SIL;   12'd469: toneR = `SIL;
        12'd470: toneR = `SIL;   12'd471: toneR = `SIL;

        12'd472: toneR = `SIL;   12'd473: toneR = `SIL;
        12'd474: toneR = `SIL;   12'd475: toneR = `SIL;
        12'd476: toneR = `SIL;   12'd477: toneR = `SIL;
        12'd478: toneR = `SIL;   12'd479: toneR = `SIL;

        12'd480: toneR = `SIL;   12'd481: toneR = `SIL;
        12'd482: toneR = `SIL;   12'd483: toneR = `SIL;
        12'd484: toneR = `SIL;   12'd485: toneR = `SIL;
        12'd486: toneR = `SIL;   12'd487: toneR = `SIL;

        12'd488: toneR = `SIL;   12'd489: toneR = `SIL;
        12'd490: toneR = `SIL;   12'd491: toneR = `SIL;
        12'd492: toneR = `SIL;   12'd493: toneR = `SIL;
        12'd494: toneR = `SIL;   12'd495: toneR = `SIL;

        12'd496: toneR = `SIL;   12'd497: toneR = `SIL;
        12'd498: toneR = `SIL;   12'd499: toneR = `SIL;
        12'd500: toneR = `SIL;   12'd501: toneR = `SIL;
        12'd502: toneR = `SIL;   12'd503: toneR = `SIL;

        12'd504: toneR = `SIL;   12'd505: toneR = `SIL;
        12'd506: toneR = `SIL;   12'd507: toneR = `SIL;
        12'd508: toneR = `SIL;   12'd509: toneR = `SIL;
        12'd510: toneR = `SIL;   12'd511: toneR = `SIL;

        // Measure 9 //
        12'd512: toneR = `D6;   12'd513: toneR = `D6;
        12'd514: toneR = `D6;   12'd515: toneR = `D6;
        12'd516: toneR = `D6;   12'd517: toneR = `D6;
        12'd518: toneR = `D6;   12'd519: toneR = `D6;

        12'd520: toneR = `D6;   12'd521: toneR = `D6;
        12'd522: toneR = `D6;   12'd523: toneR = `D6;
        12'd524: toneR = `D6;   12'd525: toneR = `D6;
        12'd526: toneR = `D6;   12'd527: toneR = `D6;

        12'd528: toneR = `D6;   12'd529: toneR = `D6;
        12'd530: toneR = `D6;   12'd531: toneR = `D6;
        12'd532: toneR = `D6;   12'd533: toneR = `D6;
        12'd534: toneR = `D6;   12'd535: toneR = `D6;

        12'd536: toneR = `D6;   12'd537: toneR = `D6;
        12'd538: toneR = `D6;   12'd539: toneR = `D6;
        12'd540: toneR = `D6;   12'd541: toneR = `D6;
        12'd542: toneR = `D6;   12'd543: toneR = `D6;

        12'd544: toneR = `D6;   12'd545: toneR = `D6;
        12'd546: toneR = `D6;   12'd547: toneR = `D6;
        12'd548: toneR = `D6;   12'd549: toneR = `D6;
        12'd550: toneR = `D6;   12'd551: toneR = `D6;

        12'd552: toneR = `D6;   12'd553: toneR = `D6;
        12'd554: toneR = `D6;   12'd555: toneR = `D6;
        12'd556: toneR = `D6;   12'd557: toneR = `D6;
        12'd558: toneR = `D6;   12'd559: toneR = `D6;

        12'd560: toneR = `D5;   12'd561: toneR = `D5;
        12'd562: toneR = `D5;   12'd563: toneR = `D5;
        12'd564: toneR = `D5;   12'd565: toneR = `D5;
        12'd566: toneR = `D5;   12'd567: toneR = `D5;

        12'd568: toneR = `G5;   12'd569: toneR = `G5;
        12'd570: toneR = `G5;   12'd571: toneR = `G5;
        12'd572: toneR = `G5;   12'd573: toneR = `G5;
        12'd574: toneR = `G5;   12'd575: toneR = `G5;

        // Measure 10 //
        12'd576: toneR = `A5;   12'd577: toneR = `A5;
        12'd578: toneR = `A5;   12'd579: toneR = `A5;
        12'd580: toneR = `A5;   12'd581: toneR = `A5;
        12'd582: toneR = `A5;   12'd583: toneR = `A5;

        12'd584: toneR = `A5;   12'd585: toneR = `A5;
        12'd586: toneR = `A5;   12'd587: toneR = `A5;
        12'd588: toneR = `A5;   12'd589: toneR = `A5;
        12'd590: toneR = `SIL;   12'd591: toneR = `SIL;

        12'd592: toneR = `B5;   12'd593: toneR = `B5;
        12'd594: toneR = `B5;   12'd595: toneR = `B5;
        12'd596: toneR = `B5;   12'd597: toneR = `B5;
        12'd598: toneR = `B5;   12'd599: toneR = `B5;

        12'd600: toneR = `B5;   12'd601: toneR = `B5;
        12'd602: toneR = `B5;   12'd603: toneR = `B5;
        12'd604: toneR = `B5;   12'd605: toneR = `B5;
        12'd606: toneR = `SIL;   12'd607: toneR = `SIL;

        12'd608: toneR = `A5;   12'd609: toneR = `A5;
        12'd610: toneR = `B5;   12'd611: toneR = `B5;
        12'd612: toneR = `A5;   12'd613: toneR = `A5;
        12'd614: toneR = `A5;   12'd615: toneR = `A5;

        12'd616: toneR = `A5;   12'd617: toneR = `A5;
        12'd618: toneR = `A5;   12'd619: toneR = `A5;
        12'd620: toneR = `A5;   12'd621: toneR = `A5;
        12'd622: toneR = `SIL;   12'd623: toneR = `SIL;

        12'd624: toneR = `G5;   12'd625: toneR = `G5;
        12'd626: toneR = `G5;   12'd627: toneR = `G5;
        12'd628: toneR = `G5;   12'd629: toneR = `G5;
        12'd630: toneR = `G5;   12'd631: toneR = `G5;

        12'd632: toneR = `G5;   12'd633: toneR = `G5;
        12'd634: toneR = `G5;   12'd635: toneR = `G5;
        12'd636: toneR = `G5;   12'd637: toneR = `G5;
        12'd638: toneR = `G5;   12'd639: toneR = `G5;

        // Measure 11 //
        12'd640: toneR = `D6;   12'd641: toneR = `D6;
        12'd642: toneR = `D6;   12'd643: toneR = `D6;
        12'd644: toneR = `D6;   12'd645: toneR = `D6;
        12'd646: toneR = `D6;   12'd647: toneR = `D6;

        12'd648: toneR = `D6;   12'd649: toneR = `D6;
        12'd650: toneR = `D6;   12'd651: toneR = `D6;
        12'd652: toneR = `D6;   12'd653: toneR = `D6;
        12'd654: toneR = `D6;   12'd655: toneR = `D6;

        12'd656: toneR = `D6;   12'd657: toneR = `D6;
        12'd658: toneR = `D6;   12'd659: toneR = `D6;
        12'd660: toneR = `D6;   12'd661: toneR = `D6;
        12'd662: toneR = `D6;   12'd663: toneR = `D6;

        12'd664: toneR = `D6;   12'd665: toneR = `D6;
        12'd666: toneR = `D6;   12'd667: toneR = `D6;
        12'd668: toneR = `D6;   12'd669: toneR = `D6;
        12'd670: toneR = `D6;   12'd671: toneR = `D6;

        12'd672: toneR = `D6;   12'd673: toneR = `D6;
        12'd674: toneR = `D6;   12'd675: toneR = `D6;
        12'd676: toneR = `D6;   12'd677: toneR = `D6;
        12'd678: toneR = `D6;   12'd679: toneR = `D6;

        12'd680: toneR = `D6;   12'd681: toneR = `D6;
        12'd682: toneR = `D6;   12'd683: toneR = `D6;
        12'd684: toneR = `D6;   12'd685: toneR = `D6;
        12'd686: toneR = `D6;   12'd687: toneR = `D6;

        12'd688: toneR = `D5;   12'd689: toneR = `D5;
        12'd690: toneR = `D5;   12'd691: toneR = `D5;
        12'd692: toneR = `D5;   12'd693: toneR = `D5;
        12'd694: toneR = `D5;   12'd695: toneR = `D5;

        12'd696: toneR = `G5;   12'd697: toneR = `G5;
        12'd698: toneR = `G5;   12'd699: toneR = `G5;
        12'd700: toneR = `G5;   12'd701: toneR = `G5;
        12'd702: toneR = `G5;   12'd703: toneR = `G5;

        // Measure 12 //
        12'd704: toneR = `A5;   12'd705: toneR = `A5;
        12'd706: toneR = `A5;   12'd707: toneR = `A5;
        12'd708: toneR = `A5;   12'd709: toneR = `A5;
        12'd710: toneR = `A5;   12'd711: toneR = `A5;

        12'd712: toneR = `A5;   12'd713: toneR = `A5;
        12'd714: toneR = `A5;   12'd715: toneR = `A5;
        12'd716: toneR = `A5;   12'd717: toneR = `A5;
        12'd718: toneR = `SIL;   12'd719: toneR = `SIL;

        12'd720: toneR = `B5;   12'd721: toneR = `B5;
        12'd722: toneR = `B5;   12'd723: toneR = `B5;
        12'd724: toneR = `B5;   12'd725: toneR = `B5;
        12'd726: toneR = `B5;   12'd727: toneR = `B5;

        12'd728: toneR = `B5;   12'd729: toneR = `B5;
        12'd730: toneR = `B5;   12'd731: toneR = `B5;
        12'd732: toneR = `B5;   12'd733: toneR = `B5;
        12'd734: toneR = `SIL;   12'd735: toneR = `SIL;

        12'd736: toneR = `A5;   12'd737: toneR = `A5;
        12'd738: toneR = `B5;   12'd739: toneR = `B5;
        12'd740: toneR = `A5;   12'd741: toneR = `A5;
        12'd742: toneR = `A5;   12'd743: toneR = `A5;

        12'd744: toneR = `A5;   12'd745: toneR = `A5;
        12'd746: toneR = `A5;   12'd747: toneR = `A5;
        12'd748: toneR = `A5;   12'd749: toneR = `A5;
        12'd750: toneR = `SIL;   12'd751: toneR = `SIL;

        12'd752: toneR = `G5;   12'd753: toneR = `G5;
        12'd754: toneR = `G5;   12'd755: toneR = `G5;
        12'd756: toneR = `G5;   12'd757: toneR = `G5;
        12'd758: toneR = `G5;   12'd759: toneR = `G5;

        12'd760: toneR = `G5;   12'd761: toneR = `G5;
        12'd762: toneR = `G5;   12'd763: toneR = `G5;
        12'd764: toneR = `G5;   12'd765: toneR = `G5;
        12'd766: toneR = `G5;   12'd767: toneR = `G5;

        // Measure 13 //
        12'd768: toneR = `Cs6;   12'd769: toneR = `Cs6;
        12'd770: toneR = `Cs6;   12'd771: toneR = `Cs6;
        12'd772: toneR = `Cs6;   12'd773: toneR = `Cs6;
        12'd774: toneR = `Cs6;   12'd775: toneR = `Cs6;

        12'd776: toneR = `Cs6;   12'd777: toneR = `Cs6;
        12'd778: toneR = `Cs6;   12'd779: toneR = `Cs6;
        12'd780: toneR = `Cs6;   12'd781: toneR = `Cs6;
        12'd782: toneR = `Cs6;   12'd783: toneR = `Cs6;

        12'd784: toneR = `Cs6;   12'd785: toneR = `Cs6;
        12'd786: toneR = `Cs6;   12'd787: toneR = `Cs6;
        12'd788: toneR = `Cs6;   12'd789: toneR = `Cs6;
        12'd790: toneR = `Cs6;   12'd791: toneR = `Cs6;

        12'd792: toneR = `Cs6;   12'd793: toneR = `Cs6;
        12'd794: toneR = `Cs6;   12'd795: toneR = `Cs6;
        12'd796: toneR = `Cs6;   12'd797: toneR = `Cs6;
        12'd798: toneR = `Cs6;   12'd799: toneR = `Cs6;

        12'd800: toneR = `Cs6;   12'd801: toneR = `Cs6;
        12'd802: toneR = `Cs6;   12'd803: toneR = `Cs6;
        12'd804: toneR = `Cs6;   12'd805: toneR = `Cs6;
        12'd806: toneR = `Cs6;   12'd807: toneR = `Cs6;

        12'd808: toneR = `Cs6;   12'd809: toneR = `Cs6;
        12'd810: toneR = `Cs6;   12'd811: toneR = `Cs6;
        12'd812: toneR = `Cs6;   12'd813: toneR = `Cs6;
        12'd814: toneR = `Cs6;   12'd815: toneR = `Cs6;

        12'd816: toneR = `E5;   12'd817: toneR = `E5;
        12'd818: toneR = `E5;   12'd819: toneR = `E5;
        12'd820: toneR = `E5;   12'd821: toneR = `E5;
        12'd822: toneR = `E5;   12'd823: toneR = `E5;

        12'd824: toneR = `Fs5;   12'd825: toneR = `Fs5;
        12'd826: toneR = `Fs5;   12'd827: toneR = `Fs5;
        12'd828: toneR = `Fs5;   12'd829: toneR = `Fs5;
        12'd830: toneR = `Fs5;   12'd831: toneR = `Fs5;

        // Measure 14 //
        12'd832: toneR = `A5;   12'd833: toneR = `A5;
        12'd834: toneR = `A5;   12'd835: toneR = `A5;
        12'd836: toneR = `A5;   12'd837: toneR = `A5;
        12'd838: toneR = `A5;   12'd839: toneR = `A5;

        12'd840: toneR = `A5;   12'd841: toneR = `A5;
        12'd842: toneR = `A5;   12'd843: toneR = `A5;
        12'd844: toneR = `A5;   12'd845: toneR = `A5;
        12'd846: toneR = `SIL;   12'd847: toneR = `SIL;

        12'd848: toneR = `B5;   12'd849: toneR = `B5;
        12'd850: toneR = `B5;   12'd851: toneR = `B5;
        12'd852: toneR = `B5;   12'd853: toneR = `B5;
        12'd854: toneR = `B5;   12'd855: toneR = `B5;

        12'd856: toneR = `B5;   12'd857: toneR = `B5;
        12'd858: toneR = `B5;   12'd859: toneR = `B5;
        12'd860: toneR = `B5;   12'd861: toneR = `B5;
        12'd862: toneR = `SIL;   12'd863: toneR = `SIL;

        12'd864: toneR = `E6;   12'd865: toneR = `E6;
        12'd866: toneR = `E6;   12'd867: toneR = `E6;
        12'd868: toneR = `E6;   12'd869: toneR = `E6;
        12'd870: toneR = `E6;   12'd871: toneR = `E6;

        12'd872: toneR = `D6;   12'd873: toneR = `D6;
        12'd874: toneR = `D6;   12'd875: toneR = `D6;
        12'd876: toneR = `D6;   12'd877: toneR = `D6;
        12'd878: toneR = `D6;   12'd879: toneR = `D6;

        12'd880: toneR = `D6;   12'd881: toneR = `D6;
        12'd882: toneR = `D6;   12'd883: toneR = `D6;
        12'd884: toneR = `D6;   12'd885: toneR = `D6;
        12'd886: toneR = `SIL;   12'd887: toneR = `SIL;

        12'd888: toneR = `Cs6;   12'd889: toneR = `Cs6;
        12'd890: toneR = `Cs6;   12'd891: toneR = `Cs6;
        12'd892: toneR = `Cs6;   12'd893: toneR = `Cs6;
        12'd894: toneR = `Cs6;   12'd895: toneR = `SIL;

        // Measure 15 //
        12'd896: toneR = `A5;   12'd897: toneR = `A5;
        12'd898: toneR = `A5;   12'd899: toneR = `A5;
        12'd900: toneR = `A5;   12'd901: toneR = `A5;
        12'd902: toneR = `A5;   12'd903: toneR = `A5;

        12'd904: toneR = `A5;   12'd905: toneR = `A5;
        12'd906: toneR = `A5;   12'd907: toneR = `A5;
        12'd908: toneR = `A5;   12'd909: toneR = `A5;
        12'd910: toneR = `A5;   12'd911: toneR = `A5;

        12'd912: toneR = `A5;   12'd913: toneR = `A5;
        12'd914: toneR = `A5;   12'd915: toneR = `A5;
        12'd916: toneR = `A5;   12'd917: toneR = `A5;
        12'd918: toneR = `A5;   12'd919: toneR = `A5;

        12'd920: toneR = `A5;   12'd921: toneR = `A5;
        12'd922: toneR = `A5;   12'd923: toneR = `A5;
        12'd924: toneR = `A5;   12'd925: toneR = `A5;
        12'd926: toneR = `A5;   12'd927: toneR = `A5;

        12'd928: toneR = `A5;   12'd929: toneR = `A5;
        12'd930: toneR = `A5;   12'd931: toneR = `A5;
        12'd932: toneR = `A5;   12'd933: toneR = `A5;
        12'd934: toneR = `A5;   12'd935: toneR = `A5;

        12'd936: toneR = `A5;   12'd937: toneR = `A5;
        12'd938: toneR = `A5;   12'd939: toneR = `A5;
        12'd940: toneR = `A5;   12'd941: toneR = `A5;
        12'd942: toneR = `A5;   12'd943: toneR = `A5;

        12'd944: toneR = `SIL;   12'd945: toneR = `SIL;
        12'd946: toneR = `SIL;   12'd947: toneR = `SIL;
        12'd948: toneR = `SIL;   12'd949: toneR = `SIL;
        12'd950: toneR = `SIL;   12'd951: toneR = `SIL;

        12'd952: toneR = `SIL;   12'd953: toneR = `SIL;
        12'd954: toneR = `SIL;   12'd955: toneR = `SIL;
        12'd956: toneR = `SIL;   12'd957: toneR = `SIL;
        12'd958: toneR = `SIL;   12'd959: toneR = `SIL;

        // Measure 16 //
        12'd960: toneR = `SIL;   12'd961: toneR = `SIL;
        12'd962: toneR = `SIL;   12'd963: toneR = `SIL;
        12'd964: toneR = `SIL;   12'd965: toneR = `SIL;
        12'd966: toneR = `SIL;   12'd967: toneR = `SIL;

        12'd968: toneR = `SIL;   12'd969: toneR = `SIL;
        12'd970: toneR = `SIL;   12'd971: toneR = `SIL;
        12'd972: toneR = `SIL;   12'd973: toneR = `SIL;
        12'd974: toneR = `SIL;   12'd975: toneR = `SIL;

        12'd976: toneR = `SIL;   12'd977: toneR = `SIL;
        12'd978: toneR = `SIL;   12'd979: toneR = `SIL;
        12'd980: toneR = `SIL;   12'd981: toneR = `SIL;
        12'd982: toneR = `SIL;   12'd983: toneR = `SIL;

        12'd984: toneR = `SIL;   12'd985: toneR = `SIL;
        12'd986: toneR = `SIL;   12'd987: toneR = `SIL;
        12'd988: toneR = `SIL;   12'd989: toneR = `SIL;
        12'd990: toneR = `SIL;   12'd991: toneR = `SIL;

        12'd992: toneR = `SIL;   12'd993: toneR = `SIL;
        12'd994: toneR = `SIL;   12'd995: toneR = `SIL;
        12'd996: toneR = `SIL;   12'd997: toneR = `SIL;
        12'd998: toneR = `SIL;   12'd999: toneR = `SIL;

        12'd1000: toneR = `SIL;   12'd1001: toneR = `SIL;
        12'd1002: toneR = `SIL;   12'd1003: toneR = `SIL;
        12'd1004: toneR = `SIL;   12'd1005: toneR = `SIL;
        12'd1006: toneR = `SIL;   12'd1007: toneR = `SIL;

        12'd1008: toneR = `SIL;   12'd1009: toneR = `SIL;
        12'd1010: toneR = `SIL;   12'd1011: toneR = `SIL;
        12'd1012: toneR = `SIL;   12'd1013: toneR = `SIL;
        12'd1014: toneR = `SIL;   12'd1015: toneR = `SIL;

        12'd1016: toneR = `SIL;   12'd1017: toneR = `SIL;
        12'd1018: toneR = `SIL;   12'd1019: toneR = `SIL;
        12'd1020: toneR = `SIL;   12'd1021: toneR = `SIL;
        12'd1022: toneR = `SIL;   12'd1023: toneR = `SIL;

        // Measure 17 //
        12'd1024: toneR = `D6;   12'd1025: toneR = `D6;
        12'd1026: toneR = `D6;   12'd1027: toneR = `D6;
        12'd1028: toneR = `D6;   12'd1029: toneR = `D6;
        12'd1030: toneR = `D6;   12'd1031: toneR = `D6;

        12'd1032: toneR = `D6;   12'd1033: toneR = `D6;
        12'd1034: toneR = `D6;   12'd1035: toneR = `D6;
        12'd1036: toneR = `D6;   12'd1037: toneR = `D6;
        12'd1038: toneR = `D6;   12'd1039: toneR = `D6;

        12'd1040: toneR = `D6;   12'd1041: toneR = `D6;
        12'd1042: toneR = `D6;   12'd1043: toneR = `D6;
        12'd1044: toneR = `D6;   12'd1045: toneR = `D6;
        12'd1046: toneR = `D6;   12'd1047: toneR = `D6;

        12'd1048: toneR = `D6;   12'd1049: toneR = `D6;
        12'd1050: toneR = `D6;   12'd1051: toneR = `D6;
        12'd1052: toneR = `D6;   12'd1053: toneR = `D6;
        12'd1054: toneR = `D6;   12'd1055: toneR = `D6;

        12'd1056: toneR = `D6;   12'd1057: toneR = `D6;
        12'd1058: toneR = `D6;   12'd1059: toneR = `D6;
        12'd1060: toneR = `D6;   12'd1061: toneR = `D6;
        12'd1062: toneR = `D6;   12'd1063: toneR = `D6;

        12'd1064: toneR = `D6;   12'd1065: toneR = `D6;
        12'd1066: toneR = `D6;   12'd1067: toneR = `D6;
        12'd1068: toneR = `D6;   12'd1069: toneR = `D6;
        12'd1070: toneR = `D6;   12'd1071: toneR = `D6;

        12'd1072: toneR = `Bf5;   12'd1073: toneR = `Bf5;
        12'd1074: toneR = `Bf5;   12'd1075: toneR = `Bf5;
        12'd1076: toneR = `Bf5;   12'd1077: toneR = `Bf5;
        12'd1078: toneR = `Bf5;   12'd1079: toneR = `Bf5;

        12'd1080: toneR = `C6;   12'd1081: toneR = `C6;
        12'd1082: toneR = `C6;   12'd1083: toneR = `C6;
        12'd1084: toneR = `C6;   12'd1085: toneR = `C6;
        12'd1086: toneR = `C6;   12'd1087: toneR = `C6;

        // Measure 18 //
        12'd1088: toneR = `D6;   12'd1089: toneR = `D6;
        12'd1090: toneR = `D6;   12'd1091: toneR = `D6;
        12'd1092: toneR = `D6;   12'd1093: toneR = `D6;
        12'd1094: toneR = `D6;   12'd1095: toneR = `D6;

        12'd1096: toneR = `D6;   12'd1097: toneR = `D6;
        12'd1098: toneR = `D6;   12'd1099: toneR = `D6;
        12'd1100: toneR = `D6;   12'd1101: toneR = `D6;
        12'd1102: toneR = `SIL;   12'd1103: toneR = `SIL;

        12'd1104: toneR = `F6;   12'd1105: toneR = `F6;
        12'd1106: toneR = `F6;   12'd1107: toneR = `F6;
        12'd1108: toneR = `F6;   12'd1109: toneR = `F6;
        12'd1110: toneR = `F6;   12'd1111: toneR = `F6;

        12'd1112: toneR = `F6;   12'd1113: toneR = `F6;
        12'd1114: toneR = `F6;   12'd1115: toneR = `F6;
        12'd1116: toneR = `F6;   12'd1117: toneR = `F6;
        12'd1118: toneR = `SIL;   12'd1119: toneR = `SIL;

        12'd1120: toneR = `Bf6;   12'd1121: toneR = `Bf6;
        12'd1122: toneR = `Bf6;   12'd1123: toneR = `Bf6;
        12'd1124: toneR = `Bf6;   12'd1125: toneR = `Bf6;
        12'd1126: toneR = `Bf6;   12'd1127: toneR = `Bf6;

        12'd1128: toneR = `Bf6;   12'd1129: toneR = `Bf6;
        12'd1130: toneR = `Bf6;   12'd1131: toneR = `Bf6;
        12'd1132: toneR = `Bf6;   12'd1133: toneR = `Bf6;
        12'd1134: toneR = `Bf6;   12'd1135: toneR = `Bf6;

        12'd1136: toneR = `Bf6;   12'd1137: toneR = `Bf6;
        12'd1138: toneR = `Bf6;   12'd1139: toneR = `Bf6;
        12'd1140: toneR = `Bf6;   12'd1141: toneR = `Bf6;
        12'd1142: toneR = `Bf6;   12'd1143: toneR = `Bf6;

        12'd1144: toneR = `A6;   12'd1145: toneR = `A6;
        12'd1146: toneR = `A6;   12'd1147: toneR = `A6;
        12'd1148: toneR = `A6;   12'd1149: toneR = `A6;
        12'd1150: toneR = `A6;   12'd1151: toneR = `SIL;

        // Measure 19 //
        12'd1152: toneR = `G6;   12'd1153: toneR = `G6;
        12'd1154: toneR = `G6;   12'd1155: toneR = `G6;
        12'd1156: toneR = `G6;   12'd1157: toneR = `G6;
        12'd1158: toneR = `G6;   12'd1159: toneR = `G6;

        12'd1160: toneR = `F6;   12'd1161: toneR = `F6;
        12'd1162: toneR = `F6;   12'd1163: toneR = `F6;
        12'd1164: toneR = `F6;   12'd1165: toneR = `F6;
        12'd1166: toneR = `F6;   12'd1167: toneR = `F6;

        12'd1168: toneR = `D6;   12'd1169: toneR = `D6;
        12'd1170: toneR = `D6;   12'd1171: toneR = `D6;
        12'd1172: toneR = `D6;   12'd1173: toneR = `D6;
        12'd1174: toneR = `D6;   12'd1175: toneR = `D6;

        12'd1176: toneR = `D6;   12'd1177: toneR = `D6;
        12'd1178: toneR = `D6;   12'd1179: toneR = `D6;
        12'd1180: toneR = `D6;   12'd1181: toneR = `D6;
        12'd1182: toneR = `D6;   12'd1183: toneR = `D6;

        12'd1184: toneR = `D6;   12'd1185: toneR = `D6;
        12'd1186: toneR = `D6;   12'd1187: toneR = `D6;
        12'd1188: toneR = `D6;   12'd1189: toneR = `D6;
        12'd1190: toneR = `D6;   12'd1191: toneR = `D6;

        12'd1192: toneR = `D6;   12'd1193: toneR = `D6;
        12'd1194: toneR = `D6;   12'd1195: toneR = `D6;
        12'd1196: toneR = `D6;   12'd1197: toneR = `D6;
        12'd1198: toneR = `D6;   12'd1199: toneR = `D6;

        12'd1200: toneR = `D6;   12'd1201: toneR = `D6;
        12'd1202: toneR = `D6;   12'd1203: toneR = `D6;
        12'd1204: toneR = `D6;   12'd1205: toneR = `D6;
        12'd1206: toneR = `D6;   12'd1207: toneR = `D6;

        12'd1208: toneR = `D6;   12'd1209: toneR = `D6;
        12'd1210: toneR = `D6;   12'd1211: toneR = `D6;
        12'd1212: toneR = `D6;   12'd1213: toneR = `D6;
        12'd1214: toneR = `D6;   12'd1215: toneR = `D6;

        // Measure 20 //
        12'd1216: toneR = `D6;   12'd1217: toneR = `D6;
        12'd1218: toneR = `D6;   12'd1219: toneR = `D6;
        12'd1220: toneR = `D6;   12'd1221: toneR = `D6;
        12'd1222: toneR = `D6;   12'd1223: toneR = `D6;

        12'd1224: toneR = `D6;   12'd1225: toneR = `D6;
        12'd1226: toneR = `D6;   12'd1227: toneR = `D6;
        12'd1228: toneR = `D6;   12'd1229: toneR = `D6;
        12'd1230: toneR = `D6;   12'd1231: toneR = `D6;

        12'd1232: toneR = `D6;   12'd1233: toneR = `D6;
        12'd1234: toneR = `D6;   12'd1235: toneR = `D6;
        12'd1236: toneR = `D6;   12'd1237: toneR = `D6;
        12'd1238: toneR = `D6;   12'd1239: toneR = `D6;

        12'd1240: toneR = `D6;   12'd1241: toneR = `D6;
        12'd1242: toneR = `D6;   12'd1243: toneR = `D6;
        12'd1244: toneR = `D6;   12'd1245: toneR = `D6;
        12'd1246: toneR = `D6;   12'd1247: toneR = `D6;

        12'd1248: toneR = `D6;   12'd1249: toneR = `D6;
        12'd1250: toneR = `D6;   12'd1251: toneR = `D6;
        12'd1252: toneR = `D6;   12'd1253: toneR = `D6;
        12'd1254: toneR = `D6;   12'd1255: toneR = `D6;

        12'd1256: toneR = `D6;   12'd1257: toneR = `D6;
        12'd1258: toneR = `D6;   12'd1259: toneR = `D6;
        12'd1260: toneR = `D6;   12'd1261: toneR = `D6;
        12'd1262: toneR = `D6;   12'd1263: toneR = `D6;

        12'd1264: toneR = `SIL;   12'd1265: toneR = `SIL;
        12'd1266: toneR = `SIL;   12'd1267: toneR = `SIL;
        12'd1268: toneR = `SIL;   12'd1269: toneR = `SIL;
        12'd1270: toneR = `SIL;   12'd1271: toneR = `SIL;

        12'd1272: toneR = `SIL;   12'd1273: toneR = `SIL;
        12'd1274: toneR = `SIL;   12'd1275: toneR = `SIL;
        12'd1276: toneR = `SIL;   12'd1277: toneR = `SIL;
        12'd1278: toneR = `SIL;   12'd1279: toneR = `SIL;

        // Measure 21 //
        12'd1280: toneR = `Df6;   12'd1281: toneR = `Df6;
        12'd1282: toneR = `Df6;   12'd1283: toneR = `Df6;
        12'd1284: toneR = `Df6;   12'd1285: toneR = `Df6;
        12'd1286: toneR = `Df6;   12'd1287: toneR = `Df6;

        12'd1288: toneR = `Df6;   12'd1289: toneR = `Df6;
        12'd1290: toneR = `Df6;   12'd1291: toneR = `Df6;
        12'd1292: toneR = `Df6;   12'd1293: toneR = `Df6;
        12'd1294: toneR = `Df6;   12'd1295: toneR = `Df6;

        12'd1296: toneR = `Df6;   12'd1297: toneR = `Df6;
        12'd1298: toneR = `Df6;   12'd1299: toneR = `Df6;
        12'd1300: toneR = `Df6;   12'd1301: toneR = `Df6;
        12'd1302: toneR = `Df6;   12'd1303: toneR = `Df6;

        12'd1304: toneR = `Df6;   12'd1305: toneR = `Df6;
        12'd1306: toneR = `Df6;   12'd1307: toneR = `Df6;
        12'd1308: toneR = `Df6;   12'd1309: toneR = `Df6;
        12'd1310: toneR = `Df6;   12'd1311: toneR = `Df6;

        12'd1312: toneR = `Df6;   12'd1313: toneR = `Df6;
        12'd1314: toneR = `Df6;   12'd1315: toneR = `Df6;
        12'd1316: toneR = `Df6;   12'd1317: toneR = `Df6;
        12'd1318: toneR = `Df6;   12'd1319: toneR = `Df6;

        12'd1320: toneR = `Df6;   12'd1321: toneR = `Df6;
        12'd1322: toneR = `Df6;   12'd1323: toneR = `Df6;
        12'd1324: toneR = `Df6;   12'd1325: toneR = `Df6;
        12'd1326: toneR = `Df6;   12'd1327: toneR = `Df6;

        12'd1328: toneR = `A5;   12'd1329: toneR = `A5;
        12'd1330: toneR = `A5;   12'd1331: toneR = `A5;
        12'd1332: toneR = `A5;   12'd1333: toneR = `A5;
        12'd1334: toneR = `A5;   12'd1335: toneR = `A5;

        12'd1336: toneR = `B5;   12'd1337: toneR = `B5;
        12'd1338: toneR = `B5;   12'd1339: toneR = `B5;
        12'd1340: toneR = `B5;   12'd1341: toneR = `B5;
        12'd1342: toneR = `B5;   12'd1343: toneR = `B5;

        // Measure 22 //
        12'd1344: toneR = `Df6;   12'd1345: toneR = `Df6;
        12'd1346: toneR = `Df6;   12'd1347: toneR = `Df6;
        12'd1348: toneR = `Df6;   12'd1349: toneR = `Df6;
        12'd1350: toneR = `Df6;   12'd1351: toneR = `Df6;

        12'd1352: toneR = `Df6;   12'd1353: toneR = `Df6;
        12'd1354: toneR = `Df6;   12'd1355: toneR = `Df6;
        12'd1356: toneR = `Df6;   12'd1357: toneR = `Df6;
        12'd1358: toneR = `SIL;   12'd1359: toneR = `SIL;

        12'd1360: toneR = `E6;   12'd1361: toneR = `E6;
        12'd1362: toneR = `E6;   12'd1363: toneR = `E6;
        12'd1364: toneR = `E6;   12'd1365: toneR = `E6;
        12'd1366: toneR = `E6;   12'd1367: toneR = `E6;

        12'd1368: toneR = `E6;   12'd1369: toneR = `E6;
        12'd1370: toneR = `E6;   12'd1371: toneR = `E6;
        12'd1372: toneR = `E6;   12'd1373: toneR = `E6;
        12'd1374: toneR = `SIL;   12'd1375: toneR = `SIL;

        12'd1376: toneR = `A6;   12'd1377: toneR = `A6;
        12'd1378: toneR = `A6;   12'd1379: toneR = `A6;
        12'd1380: toneR = `A6;   12'd1381: toneR = `A6;
        12'd1382: toneR = `A6;   12'd1383: toneR = `A6;

        12'd1384: toneR = `A6;   12'd1385: toneR = `A6;
        12'd1386: toneR = `A6;   12'd1387: toneR = `A6;
        12'd1388: toneR = `A6;   12'd1389: toneR = `A6;
        12'd1390: toneR = `A6;   12'd1391: toneR = `A6;

        12'd1392: toneR = `A6;   12'd1393: toneR = `A6;
        12'd1394: toneR = `A6;   12'd1395: toneR = `A6;
        12'd1396: toneR = `A6;   12'd1397: toneR = `A6;
        12'd1398: toneR = `A6;   12'd1399: toneR = `A6;

        12'd1400: toneR = `B6;   12'd1401: toneR = `B6;
        12'd1402: toneR = `B6;   12'd1403: toneR = `B6;
        12'd1404: toneR = `B6;   12'd1405: toneR = `B6;
        12'd1406: toneR = `B6;   12'd1407: toneR = `SIL;

        // Measure 23 //
        12'd1408: toneR = `Gf6;   12'd1409: toneR = `Gf6;
        12'd1410: toneR = `Gf6;   12'd1411: toneR = `Gf6;
        12'd1412: toneR = `Gf6;   12'd1413: toneR = `Gf6;
        12'd1414: toneR = `Gf6;   12'd1415: toneR = `Gf6;

        12'd1416: toneR = `Gf6;   12'd1417: toneR = `Gf6;
        12'd1418: toneR = `Gf6;   12'd1419: toneR = `Gf6;
        12'd1420: toneR = `Gf6;   12'd1421: toneR = `Gf6;
        12'd1422: toneR = `Gf6;   12'd1423: toneR = `Gf6;

        12'd1424: toneR = `Gf6;   12'd1425: toneR = `Gf6;
        12'd1426: toneR = `Gf6;   12'd1427: toneR = `Gf6;
        12'd1428: toneR = `Gf6;   12'd1429: toneR = `Gf6;
        12'd1430: toneR = `Gf6;   12'd1431: toneR = `Gf6;

        12'd1432: toneR = `Gf6;   12'd1433: toneR = `Gf6;
        12'd1434: toneR = `Gf6;   12'd1435: toneR = `Gf6;
        12'd1436: toneR = `Gf6;   12'd1437: toneR = `Gf6;
        12'd1438: toneR = `Gf6;   12'd1439: toneR = `Gf6;

        12'd1440: toneR = `Gf6;   12'd1441: toneR = `Gf6;
        12'd1442: toneR = `Gf6;   12'd1443: toneR = `Gf6;
        12'd1444: toneR = `Gf6;   12'd1445: toneR = `Gf6;
        12'd1446: toneR = `Gf6;   12'd1447: toneR = `Gf6;

        12'd1448: toneR = `Gf6;   12'd1449: toneR = `Gf6;
        12'd1450: toneR = `Gf6;   12'd1451: toneR = `Gf6;
        12'd1452: toneR = `Gf6;   12'd1453: toneR = `Gf6;
        12'd1454: toneR = `Gf6;   12'd1455: toneR = `Gf6;

        12'd1456: toneR = `Gf6;   12'd1457: toneR = `Gf6;
        12'd1458: toneR = `Gf6;   12'd1459: toneR = `Gf6;
        12'd1460: toneR = `Gf6;   12'd1461: toneR = `Gf6;
        12'd1462: toneR = `Gf6;   12'd1463: toneR = `Gf6;

        12'd1464: toneR = `Gf6;   12'd1465: toneR = `Gf6;
        12'd1466: toneR = `Gf6;   12'd1467: toneR = `Gf6;
        12'd1468: toneR = `Gf6;   12'd1469: toneR = `Gf6;
        12'd1470: toneR = `Gf6;   12'd1471: toneR = `Gf6;

        // Measure 24 //
        12'd1472: toneR = `Gf6;   12'd1473: toneR = `Gf6;
        12'd1474: toneR = `Gf6;   12'd1475: toneR = `Gf6;
        12'd1476: toneR = `Gf6;   12'd1477: toneR = `Gf6;
        12'd1478: toneR = `Gf6;   12'd1479: toneR = `Gf6;

        12'd1480: toneR = `Gf6;   12'd1481: toneR = `Gf6;
        12'd1482: toneR = `Gf6;   12'd1483: toneR = `Gf6;
        12'd1484: toneR = `Gf6;   12'd1485: toneR = `Gf6;
        12'd1486: toneR = `Gf6;   12'd1487: toneR = `Gf6;

        12'd1488: toneR = `Gf6;   12'd1489: toneR = `Gf6;
        12'd1490: toneR = `Gf6;   12'd1491: toneR = `Gf6;
        12'd1492: toneR = `Gf6;   12'd1493: toneR = `Gf6;
        12'd1494: toneR = `Gf6;   12'd1495: toneR = `Gf6;

        12'd1496: toneR = `Gf6;   12'd1497: toneR = `Gf6;
        12'd1498: toneR = `Gf6;   12'd1499: toneR = `Gf6;
        12'd1500: toneR = `Gf6;   12'd1501: toneR = `Gf6;
        12'd1502: toneR = `Gf6;   12'd1503: toneR = `Gf6;

        12'd1504: toneR = `Gf6;   12'd1505: toneR = `Gf6;
        12'd1506: toneR = `Gf6;   12'd1507: toneR = `Gf6;
        12'd1508: toneR = `Gf6;   12'd1509: toneR = `Gf6;
        12'd1510: toneR = `Gf6;   12'd1511: toneR = `Gf6;

        12'd1512: toneR = `Gf6;   12'd1513: toneR = `Gf6;
        12'd1514: toneR = `Gf6;   12'd1515: toneR = `Gf6;
        12'd1516: toneR = `Gf6;   12'd1517: toneR = `Gf6;
        12'd1518: toneR = `Gf6;   12'd1519: toneR = `Gf6;

        12'd1520: toneR = `SIL;   12'd1521: toneR = `SIL;
        12'd1522: toneR = `SIL;   12'd1523: toneR = `SIL;
        12'd1524: toneR = `SIL;   12'd1525: toneR = `SIL;
        12'd1526: toneR = `SIL;   12'd1527: toneR = `SIL;

        12'd1528: toneR = `SIL;   12'd1529: toneR = `SIL;
        12'd1530: toneR = `SIL;   12'd1531: toneR = `SIL;
        12'd1532: toneR = `SIL;   12'd1533: toneR = `SIL;
        12'd1534: toneR = `SIL;   12'd1535: toneR = `SIL;

        // Measure 25 //
        12'd1536: toneR = `SIL;   12'd1537: toneR = `SIL;
        12'd1538: toneR = `SIL;   12'd1539: toneR = `SIL;
        12'd1540: toneR = `SIL;   12'd1541: toneR = `SIL;
        12'd1542: toneR = `SIL;   12'd1543: toneR = `SIL;

        12'd1544: toneR = `SIL;   12'd1545: toneR = `SIL;
        12'd1546: toneR = `SIL;   12'd1547: toneR = `SIL;
        12'd1548: toneR = `SIL;   12'd1549: toneR = `SIL;
        12'd1550: toneR = `SIL;   12'd1551: toneR = `SIL;

        12'd1552: toneR = `SIL;   12'd1553: toneR = `SIL;
        12'd1554: toneR = `SIL;   12'd1555: toneR = `SIL;
        12'd1556: toneR = `SIL;   12'd1557: toneR = `SIL;
        12'd1558: toneR = `SIL;   12'd1559: toneR = `SIL;

        12'd1560: toneR = `SIL;   12'd1561: toneR = `SIL;
        12'd1562: toneR = `SIL;   12'd1563: toneR = `SIL;
        12'd1564: toneR = `SIL;   12'd1565: toneR = `SIL;
        12'd1566: toneR = `SIL;   12'd1567: toneR = `SIL;

        12'd1568: toneR = `SIL;   12'd1569: toneR = `SIL;
        12'd1570: toneR = `SIL;   12'd1571: toneR = `SIL;
        12'd1572: toneR = `SIL;   12'd1573: toneR = `SIL;
        12'd1574: toneR = `SIL;   12'd1575: toneR = `SIL;

        12'd1576: toneR = `SIL;   12'd1577: toneR = `SIL;
        12'd1578: toneR = `SIL;   12'd1579: toneR = `SIL;
        12'd1580: toneR = `SIL;   12'd1581: toneR = `SIL;
        12'd1582: toneR = `SIL;   12'd1583: toneR = `SIL;

        12'd1584: toneR = `Bf5;   12'd1585: toneR = `Bf5;
        12'd1586: toneR = `Bf5;   12'd1587: toneR = `Bf5;
        12'd1588: toneR = `Bf5;   12'd1589: toneR = `Bf5;
        12'd1590: toneR = `Bf5;   12'd1591: toneR = `Bf5;

        12'd1592: toneR = `C6;   12'd1593: toneR = `C6;
        12'd1594: toneR = `C6;   12'd1595: toneR = `C6;
        12'd1596: toneR = `C6;   12'd1597: toneR = `C6;
        12'd1598: toneR = `C6;   12'd1599: toneR = `C6;

        // Measure 26 //
        12'd1600: toneR = `D6;   12'd1601: toneR = `D6;
        12'd1602: toneR = `D6;   12'd1603: toneR = `D6;
        12'd1604: toneR = `D6;   12'd1605: toneR = `D6;
        12'd1606: toneR = `D6;   12'd1607: toneR = `D6;

        12'd1608: toneR = `D6;   12'd1609: toneR = `D6;
        12'd1610: toneR = `D6;   12'd1611: toneR = `D6;
        12'd1612: toneR = `D6;   12'd1613: toneR = `D6;
        12'd1614: toneR = `SIL;   12'd1615: toneR = `SIL;

        12'd1616: toneR = `F6;   12'd1617: toneR = `F6;
        12'd1618: toneR = `F6;   12'd1619: toneR = `F6;
        12'd1620: toneR = `F6;   12'd1621: toneR = `F6;
        12'd1622: toneR = `F6;   12'd1623: toneR = `F6;

        12'd1624: toneR = `F6;   12'd1625: toneR = `F6;
        12'd1626: toneR = `F6;   12'd1627: toneR = `F6;
        12'd1628: toneR = `F6;   12'd1629: toneR = `F6;
        12'd1630: toneR = `SIL;   12'd1631: toneR = `SIL;

        12'd1632: toneR = `Bf6;   12'd1633: toneR = `Bf6;
        12'd1634: toneR = `Bf6;   12'd1635: toneR = `Bf6;
        12'd1636: toneR = `Bf6;   12'd1637: toneR = `Bf6;
        12'd1638: toneR = `Bf6;   12'd1639: toneR = `Bf6;

        12'd1640: toneR = `Bf6;   12'd1641: toneR = `Bf6;
        12'd1642: toneR = `Bf6;   12'd1643: toneR = `Bf6;
        12'd1644: toneR = `Bf6;   12'd1645: toneR = `Bf6;
        12'd1646: toneR = `Bf6;   12'd1647: toneR = `Bf6;

        12'd1648: toneR = `Bf6;   12'd1649: toneR = `Bf6;
        12'd1650: toneR = `Bf6;   12'd1651: toneR = `Bf6;
        12'd1652: toneR = `Bf6;   12'd1653: toneR = `Bf6;
        12'd1654: toneR = `Bf6;   12'd1655: toneR = `Bf6;

        12'd1656: toneR = `A6;   12'd1657: toneR = `A6;
        12'd1658: toneR = `A6;   12'd1659: toneR = `A6;
        12'd1660: toneR = `A6;   12'd1661: toneR = `A6;
        12'd1662: toneR = `A6;   12'd1663: toneR = `SIL;

        // Measure 27 //
        12'd1664: toneR = `G6;   12'd1665: toneR = `G6;
        12'd1666: toneR = `G6;   12'd1667: toneR = `G6;
        12'd1668: toneR = `G6;   12'd1669: toneR = `G6;
        12'd1670: toneR = `G6;   12'd1671: toneR = `G6;

        12'd1672: toneR = `F6;   12'd1673: toneR = `F6;
        12'd1674: toneR = `F6;   12'd1675: toneR = `F6;
        12'd1676: toneR = `F6;   12'd1677: toneR = `F6;
        12'd1678: toneR = `F6;   12'd1679: toneR = `F6;

        12'd1680: toneR = `D6;   12'd1681: toneR = `D6;
        12'd1682: toneR = `D6;   12'd1683: toneR = `D6;
        12'd1684: toneR = `D6;   12'd1685: toneR = `D6;
        12'd1686: toneR = `D6;   12'd1687: toneR = `D6;

        12'd1688: toneR = `D6;   12'd1689: toneR = `D6;
        12'd1690: toneR = `D6;   12'd1691: toneR = `D6;
        12'd1692: toneR = `D6;   12'd1693: toneR = `D6;
        12'd1694: toneR = `D6;   12'd1695: toneR = `D6;

        12'd1696: toneR = `C6;   12'd1697: toneR = `C6;
        12'd1698: toneR = `C6;   12'd1699: toneR = `C6;
        12'd1700: toneR = `C6;   12'd1701: toneR = `C6;
        12'd1702: toneR = `C6;   12'd1703: toneR = `C6;

        12'd1704: toneR = `C6;   12'd1705: toneR = `C6;
        12'd1706: toneR = `C6;   12'd1707: toneR = `C6;
        12'd1708: toneR = `C6;   12'd1709: toneR = `C6;
        12'd1710: toneR = `C6;   12'd1711: toneR = `C6;

        12'd1712: toneR = `F6;   12'd1713: toneR = `F6;
        12'd1714: toneR = `F6;   12'd1715: toneR = `F6;
        12'd1716: toneR = `F6;   12'd1717: toneR = `F6;
        12'd1718: toneR = `F6;   12'd1719: toneR = `F6;

        12'd1720: toneR = `F6;   12'd1721: toneR = `F6;
        12'd1722: toneR = `F6;   12'd1723: toneR = `F6;
        12'd1724: toneR = `F6;   12'd1725: toneR = `F6;
        12'd1726: toneR = `F6;   12'd1727: toneR = `F6;

        // Measure 28 //
        12'd1728: toneR = `D6;   12'd1729: toneR = `D6;
        12'd1730: toneR = `D6;   12'd1731: toneR = `D6;
        12'd1732: toneR = `D6;   12'd1733: toneR = `D6;
        12'd1734: toneR = `D6;   12'd1735: toneR = `D6;

        12'd1736: toneR = `D6;   12'd1737: toneR = `D6;
        12'd1738: toneR = `D6;   12'd1739: toneR = `D6;
        12'd1740: toneR = `D6;   12'd1741: toneR = `D6;
        12'd1742: toneR = `D6;   12'd1743: toneR = `D6;

        12'd1744: toneR = `D6;   12'd1745: toneR = `D6;
        12'd1746: toneR = `D6;   12'd1747: toneR = `D6;
        12'd1748: toneR = `D6;   12'd1749: toneR = `D6;
        12'd1750: toneR = `D6;   12'd1751: toneR = `D6;

        12'd1752: toneR = `D6;   12'd1753: toneR = `D6;
        12'd1754: toneR = `D6;   12'd1755: toneR = `D6;
        12'd1756: toneR = `D6;   12'd1757: toneR = `D6;
        12'd1758: toneR = `D6;   12'd1759: toneR = `D6;

        12'd1760: toneR = `D6;   12'd1761: toneR = `D6;
        12'd1762: toneR = `D6;   12'd1763: toneR = `D6;
        12'd1764: toneR = `D6;   12'd1765: toneR = `D6;
        12'd1766: toneR = `D6;   12'd1767: toneR = `D6;

        12'd1768: toneR = `D6;   12'd1769: toneR = `D6;
        12'd1770: toneR = `D6;   12'd1771: toneR = `D6;
        12'd1772: toneR = `D6;   12'd1773: toneR = `D6;
        12'd1774: toneR = `D6;   12'd1775: toneR = `D6;

        12'd1776: toneR = `SIL;   12'd1777: toneR = `SIL;
        12'd1778: toneR = `SIL;   12'd1779: toneR = `SIL;
        12'd1780: toneR = `SIL;   12'd1781: toneR = `SIL;
        12'd1782: toneR = `SIL;   12'd1783: toneR = `SIL;

        12'd1784: toneR = `SIL;   12'd1785: toneR = `SIL;
        12'd1786: toneR = `SIL;   12'd1787: toneR = `SIL;
        12'd1788: toneR = `SIL;   12'd1789: toneR = `SIL;
        12'd1790: toneR = `SIL;   12'd1791: toneR = `SIL;

        // Measure 29 //
        12'd1792: toneR = `SIL;   12'd1793: toneR = `SIL;
        12'd1794: toneR = `SIL;   12'd1795: toneR = `SIL;
        12'd1796: toneR = `SIL;   12'd1797: toneR = `SIL;
        12'd1798: toneR = `SIL;   12'd1799: toneR = `SIL;

        12'd1800: toneR = `SIL;   12'd1801: toneR = `SIL;
        12'd1802: toneR = `SIL;   12'd1803: toneR = `SIL;
        12'd1804: toneR = `SIL;   12'd1805: toneR = `SIL;
        12'd1806: toneR = `SIL;   12'd1807: toneR = `SIL;

        12'd1808: toneR = `SIL;   12'd1809: toneR = `SIL;
        12'd1810: toneR = `SIL;   12'd1811: toneR = `SIL;
        12'd1812: toneR = `SIL;   12'd1813: toneR = `SIL;
        12'd1814: toneR = `SIL;   12'd1815: toneR = `SIL;

        12'd1816: toneR = `SIL;   12'd1817: toneR = `SIL;
        12'd1818: toneR = `SIL;   12'd1819: toneR = `SIL;
        12'd1820: toneR = `SIL;   12'd1821: toneR = `SIL;
        12'd1822: toneR = `SIL;   12'd1823: toneR = `SIL;

        12'd1824: toneR = `SIL;   12'd1825: toneR = `SIL;
        12'd1826: toneR = `SIL;   12'd1827: toneR = `SIL;
        12'd1828: toneR = `SIL;   12'd1829: toneR = `SIL;
        12'd1830: toneR = `SIL;   12'd1831: toneR = `SIL;

        12'd1832: toneR = `SIL;   12'd1833: toneR = `SIL;
        12'd1834: toneR = `SIL;   12'd1835: toneR = `SIL;
        12'd1836: toneR = `SIL;   12'd1837: toneR = `SIL;
        12'd1838: toneR = `SIL;   12'd1839: toneR = `SIL;

        12'd1840: toneR = `A5;   12'd1841: toneR = `A5;
        12'd1842: toneR = `A5;   12'd1843: toneR = `A5;
        12'd1844: toneR = `A5;   12'd1845: toneR = `A5;
        12'd1846: toneR = `A5;   12'd1847: toneR = `A5;

        12'd1848: toneR = `B5;   12'd1849: toneR = `B5;
        12'd1850: toneR = `B5;   12'd1851: toneR = `B5;
        12'd1852: toneR = `B5;   12'd1853: toneR = `B5;
        12'd1854: toneR = `B5;   12'd1855: toneR = `B5;

        // Measure 30 //
        12'd1856: toneR = `Df6;   12'd1857: toneR = `Df6;
        12'd1858: toneR = `Df6;   12'd1859: toneR = `Df6;
        12'd1860: toneR = `Df6;   12'd1861: toneR = `Df6;
        12'd1862: toneR = `Df6;   12'd1863: toneR = `Df6;

        12'd1864: toneR = `Df6;   12'd1865: toneR = `Df6;
        12'd1866: toneR = `Df6;   12'd1867: toneR = `Df6;
        12'd1868: toneR = `Df6;   12'd1869: toneR = `Df6;
        12'd1870: toneR = `Df6;   12'd1871: toneR = `Df6;

        12'd1872: toneR = `E6;   12'd1873: toneR = `E6;
        12'd1874: toneR = `E6;   12'd1875: toneR = `E6;
        12'd1876: toneR = `E6;   12'd1877: toneR = `E6;
        12'd1878: toneR = `E6;   12'd1879: toneR = `E6;

        12'd1880: toneR = `E6;   12'd1881: toneR = `E6;
        12'd1882: toneR = `E6;   12'd1883: toneR = `E6;
        12'd1884: toneR = `E6;   12'd1885: toneR = `E6;
        12'd1886: toneR = `E6;   12'd1887: toneR = `E6;

        12'd1888: toneR = `A6;   12'd1889: toneR = `A6;
        12'd1890: toneR = `A6;   12'd1891: toneR = `A6;
        12'd1892: toneR = `A6;   12'd1893: toneR = `A6;
        12'd1894: toneR = `A6;   12'd1895: toneR = `A6;

        12'd1896: toneR = `A6;   12'd1897: toneR = `A6;
        12'd1898: toneR = `A6;   12'd1899: toneR = `A6;
        12'd1900: toneR = `A6;   12'd1901: toneR = `A6;
        12'd1902: toneR = `A6;   12'd1903: toneR = `A6;

        12'd1904: toneR = `A6;   12'd1905: toneR = `A6;
        12'd1906: toneR = `A6;   12'd1907: toneR = `A6;
        12'd1908: toneR = `A6;   12'd1909: toneR = `A6;
        12'd1910: toneR = `A6;   12'd1911: toneR = `A6;

        12'd1912: toneR = `Gf6;   12'd1913: toneR = `Gf6;
        12'd1914: toneR = `Gf6;   12'd1915: toneR = `Gf6;
        12'd1916: toneR = `Gf6;   12'd1917: toneR = `Gf6;
        12'd1918: toneR = `Gf6;   12'd1919: toneR = `Gf6;

        // Measure 31 //
        12'd1920: toneR = `Af6;   12'd1921: toneR = `Af6;
        12'd1922: toneR = `Af6;   12'd1923: toneR = `Af6;
        12'd1924: toneR = `Af6;   12'd1925: toneR = `Af6;
        12'd1926: toneR = `Af6;   12'd1927: toneR = `Af6;

        12'd1928: toneR = `Af6;   12'd1929: toneR = `Af6;
        12'd1930: toneR = `Af6;   12'd1931: toneR = `Af6;
        12'd1932: toneR = `Af6;   12'd1933: toneR = `Af6;
        12'd1934: toneR = `Af6;   12'd1935: toneR = `Af6;

        12'd1936: toneR = `Af6;   12'd1937: toneR = `Af6;
        12'd1938: toneR = `Af6;   12'd1939: toneR = `Af6;
        12'd1940: toneR = `Af6;   12'd1941: toneR = `Af6;
        12'd1942: toneR = `Af6;   12'd1943: toneR = `Af6;

        12'd1944: toneR = `Af6;   12'd1945: toneR = `Af6;
        12'd1946: toneR = `Af6;   12'd1947: toneR = `Af6;
        12'd1948: toneR = `Af6;   12'd1949: toneR = `Af6;
        12'd1950: toneR = `Af6;   12'd1951: toneR = `Af6;

        12'd1952: toneR = `Af6;   12'd1953: toneR = `Af6;
        12'd1954: toneR = `Af6;   12'd1955: toneR = `Af6;
        12'd1956: toneR = `Af6;   12'd1957: toneR = `Af6;
        12'd1958: toneR = `Af6;   12'd1959: toneR = `Af6;

        12'd1960: toneR = `Af6;   12'd1961: toneR = `Af6;
        12'd1962: toneR = `Af6;   12'd1963: toneR = `Af6;
        12'd1964: toneR = `Af6;   12'd1965: toneR = `Af6;
        12'd1966: toneR = `Af6;   12'd1967: toneR = `Af6;

        12'd1968: toneR = `B5;   12'd1969: toneR = `B5;
        12'd1970: toneR = `B5;   12'd1971: toneR = `B5;
        12'd1972: toneR = `B5;   12'd1973: toneR = `B5;
        12'd1974: toneR = `B5;   12'd1975: toneR = `B5;

        12'd1976: toneR = `Df6;   12'd1977: toneR = `Df6;
        12'd1978: toneR = `Df6;   12'd1979: toneR = `Df6;
        12'd1980: toneR = `Df6;   12'd1981: toneR = `Df6;
        12'd1982: toneR = `Df6;   12'd1983: toneR = `Df6;

        // Measure 32 //
        12'd1984: toneR = `Ef6;   12'd1985: toneR = `Ef6;
        12'd1986: toneR = `Ef6;   12'd1987: toneR = `Ef6;
        12'd1988: toneR = `Ef6;   12'd1989: toneR = `Ef6;
        12'd1990: toneR = `Ef6;   12'd1991: toneR = `Ef6;

        12'd1992: toneR = `Ef6;   12'd1993: toneR = `Ef6;
        12'd1994: toneR = `Ef6;   12'd1995: toneR = `Ef6;
        12'd1996: toneR = `Ef6;   12'd1997: toneR = `Ef6;
        12'd1998: toneR = `Ef6;   12'd1999: toneR = `Ef6;

        12'd2000: toneR = `Gf6;   12'd2001: toneR = `Gf6;
        12'd2002: toneR = `Gf6;   12'd2003: toneR = `Gf6;
        12'd2004: toneR = `Gf6;   12'd2005: toneR = `Gf6;
        12'd2006: toneR = `Gf6;   12'd2007: toneR = `Gf6;

        12'd2008: toneR = `Gf6;   12'd2009: toneR = `Gf6;
        12'd2010: toneR = `Gf6;   12'd2011: toneR = `Gf6;
        12'd2012: toneR = `Gf6;   12'd2013: toneR = `Gf6;
        12'd2014: toneR = `Gf6;   12'd2015: toneR = `Gf6;

        12'd2016: toneR = `B6;   12'd2017: toneR = `B6;
        12'd2018: toneR = `B6;   12'd2019: toneR = `B6;
        12'd2020: toneR = `B6;   12'd2021: toneR = `B6;
        12'd2022: toneR = `B6;   12'd2023: toneR = `B6;

        12'd2024: toneR = `B6;   12'd2025: toneR = `B6;
        12'd2026: toneR = `B6;   12'd2027: toneR = `B6;
        12'd2028: toneR = `B6;   12'd2029: toneR = `B6;
        12'd2030: toneR = `B6;   12'd2031: toneR = `B6;

        12'd2032: toneR = `B6;   12'd2033: toneR = `B6;
        12'd2034: toneR = `B6;   12'd2035: toneR = `B6;
        12'd2036: toneR = `B6;   12'd2037: toneR = `B6;
        12'd2038: toneR = `B6;   12'd2039: toneR = `B6;

        12'd2040: toneR = `Af6;   12'd2041: toneR = `Af6;
        12'd2042: toneR = `Af6;   12'd2043: toneR = `Af6;
        12'd2044: toneR = `Af6;   12'd2045: toneR = `Af6;
        12'd2046: toneR = `Af6;   12'd2047: toneR = `Af6;

        // Measure 33 //
        12'd2048: toneR = `Bf6;   12'd2049: toneR = `Bf6;
        12'd2050: toneR = `Bf6;   12'd2051: toneR = `Bf6;
        12'd2052: toneR = `Bf6;   12'd2053: toneR = `Bf6;
        12'd2054: toneR = `Bf6;   12'd2055: toneR = `Bf6;

        12'd2056: toneR = `Bf6;   12'd2057: toneR = `Bf6;
        12'd2058: toneR = `Bf6;   12'd2059: toneR = `Bf6;
        12'd2060: toneR = `Bf6;   12'd2061: toneR = `Bf6;
        12'd2062: toneR = `Bf6;   12'd2063: toneR = `Bf6;

        12'd2064: toneR = `Bf6;   12'd2065: toneR = `Bf6;
        12'd2066: toneR = `Bf6;   12'd2067: toneR = `Bf6;
        12'd2068: toneR = `Bf6;   12'd2069: toneR = `Bf6;
        12'd2070: toneR = `Bf6;   12'd2071: toneR = `Bf6;

        12'd2072: toneR = `Bf6;   12'd2073: toneR = `Bf6;
        12'd2074: toneR = `Bf6;   12'd2075: toneR = `Bf6;
        12'd2076: toneR = `Bf6;   12'd2077: toneR = `Bf6;
        12'd2078: toneR = `Bf6;   12'd2079: toneR = `Bf6;

        12'd2080: toneR = `Bf6;   12'd2081: toneR = `Bf6;
        12'd2082: toneR = `Bf6;   12'd2083: toneR = `Bf6;
        12'd2084: toneR = `Bf6;   12'd2085: toneR = `Bf6;
        12'd2086: toneR = `Bf6;   12'd2087: toneR = `Bf6;

        12'd2088: toneR = `Bf6;   12'd2089: toneR = `Bf6;
        12'd2090: toneR = `Bf6;   12'd2091: toneR = `Bf6;
        12'd2092: toneR = `Bf6;   12'd2093: toneR = `Bf6;
        12'd2094: toneR = `Bf6;   12'd2095: toneR = `Bf6;

        12'd2096: toneR = `Bf6;   12'd2097: toneR = `Bf6;
        12'd2098: toneR = `Bf6;   12'd2099: toneR = `Bf6;
        12'd2100: toneR = `Bf6;   12'd2101: toneR = `Bf6;
        12'd2102: toneR = `Bf6;   12'd2103: toneR = `Bf6;

        12'd2104: toneR = `Bf6;   12'd2105: toneR = `Bf6;
        12'd2106: toneR = `Bf6;   12'd2107: toneR = `Bf6;
        12'd2108: toneR = `Bf6;   12'd2109: toneR = `Bf6;
        12'd2110: toneR = `Bf6;   12'd2111: toneR = `Bf6;

        // Measure 34 //
        12'd2112: toneR = `Bf6;   12'd2113: toneR = `Bf6;
        12'd2114: toneR = `Bf6;   12'd2115: toneR = `Bf6;
        12'd2116: toneR = `Bf6;   12'd2117: toneR = `Bf6;
        12'd2118: toneR = `Bf6;   12'd2119: toneR = `Bf6;

        12'd2120: toneR = `Bf6;   12'd2121: toneR = `Bf6;
        12'd2122: toneR = `Bf6;   12'd2123: toneR = `Bf6;
        12'd2124: toneR = `Bf6;   12'd2125: toneR = `Bf6;
        12'd2126: toneR = `Bf6;   12'd2127: toneR = `Bf6;

        12'd2128: toneR = `Bf6;   12'd2129: toneR = `Bf6;
        12'd2130: toneR = `Bf6;   12'd2131: toneR = `Bf6;
        12'd2132: toneR = `Bf6;   12'd2133: toneR = `Bf6;
        12'd2134: toneR = `Bf6;   12'd2135: toneR = `Bf6;

        12'd2136: toneR = `Bf6;   12'd2137: toneR = `Bf6;
        12'd2138: toneR = `Bf6;   12'd2139: toneR = `Bf6;
        12'd2140: toneR = `Bf6;   12'd2141: toneR = `Bf6;
        12'd2142: toneR = `Bf6;   12'd2143: toneR = `Bf6;

        12'd2144: toneR = `Bf6;   12'd2145: toneR = `Bf6;
        12'd2146: toneR = `Bf6;   12'd2147: toneR = `Bf6;
        12'd2148: toneR = `Bf6;   12'd2149: toneR = `Bf6;
        12'd2150: toneR = `Bf6;   12'd2151: toneR = `Bf6;

        12'd2152: toneR = `Bf6;   12'd2153: toneR = `Bf6;
        12'd2154: toneR = `Bf6;   12'd2155: toneR = `Bf6;
        12'd2156: toneR = `Bf6;   12'd2157: toneR = `Bf6;
        12'd2158: toneR = `Bf6;   12'd2159: toneR = `Bf6;

        12'd2160: toneR = `SIL;   12'd2161: toneR = `SIL;
        12'd2162: toneR = `SIL;   12'd2163: toneR = `SIL;
        12'd2164: toneR = `SIL;   12'd2165: toneR = `SIL;
        12'd2166: toneR = `SIL;   12'd2167: toneR = `SIL;

        12'd2168: toneR = `SIL;   12'd2169: toneR = `SIL;
        12'd2170: toneR = `SIL;   12'd2171: toneR = `SIL;
        12'd2172: toneR = `SIL;   12'd2173: toneR = `SIL;
        12'd2174: toneR = `SIL;   12'd2175: toneR = `SIL;

        // Measure 35 //
        12'd2176: toneR = `Gf5;   12'd2177: toneR = `Gf5;
        12'd2178: toneR = `Gf5;   12'd2179: toneR = `Gf5;
        12'd2180: toneR = `Gf5;   12'd2181: toneR = `Gf5;
        12'd2182: toneR = `Gf5;   12'd2183: toneR = `Gf5;

        12'd2184: toneR = `Gf5;   12'd2185: toneR = `Gf5;
        12'd2186: toneR = `Gf5;   12'd2187: toneR = `Gf5;
        12'd2188: toneR = `Gf5;   12'd2189: toneR = `Gf5;
        12'd2190: toneR = `Gf5;   12'd2191: toneR = `Gf5;

        12'd2192: toneR = `Gf5;   12'd2193: toneR = `Gf5;
        12'd2194: toneR = `Gf5;   12'd2195: toneR = `Gf5;
        12'd2196: toneR = `Gf5;   12'd2197: toneR = `Gf5;
        12'd2198: toneR = `Gf5;   12'd2199: toneR = `Gf5;

        12'd2200: toneR = `Gf5;   12'd2201: toneR = `Gf5;
        12'd2202: toneR = `Gf5;   12'd2203: toneR = `Gf5;
        12'd2204: toneR = `Gf5;   12'd2205: toneR = `Gf5;
        12'd2206: toneR = `Gf5;   12'd2207: toneR = `Gf5;

        12'd2208: toneR = `Gf5;   12'd2209: toneR = `Gf5;
        12'd2210: toneR = `Gf5;   12'd2211: toneR = `Gf5;
        12'd2212: toneR = `Gf5;   12'd2213: toneR = `Gf5;
        12'd2214: toneR = `Gf5;   12'd2215: toneR = `Gf5;

        12'd2216: toneR = `Gf5;   12'd2217: toneR = `Gf5;
        12'd2218: toneR = `Gf5;   12'd2219: toneR = `Gf5;
        12'd2220: toneR = `Gf5;   12'd2221: toneR = `Gf5;
        12'd2222: toneR = `Gf5;   12'd2223: toneR = `Gf5;

        12'd2224: toneR = `SIL;   12'd2225: toneR = `SIL;
        12'd2226: toneR = `SIL;   12'd2227: toneR = `SIL;
        12'd2228: toneR = `SIL;   12'd2229: toneR = `SIL;
        12'd2230: toneR = `SIL;   12'd2231: toneR = `SIL;

        12'd2232: toneR = `SIL;   12'd2233: toneR = `SIL;
        12'd2234: toneR = `SIL;   12'd2235: toneR = `SIL;
        12'd2236: toneR = `SIL;   12'd2237: toneR = `SIL;
        12'd2238: toneR = `SIL;   12'd2239: toneR = `SIL;

        default: toneR = `SIL;
        endcase
    end else begin
        toneR = `SIL;
    end
end

always @(*) begin
    if(en == 1)begin
        case(beat)
        // Measure 1 //
        12'd0: toneL = `C4;   12'd1: toneL = `C4;
        12'd2: toneL = `C4;   12'd3: toneL = `C4;
        12'd4: toneL = `C4;   12'd5: toneL = `C4;
        12'd6: toneL = `SIL;   12'd7: toneL = `SIL;

        12'd8: toneL = `C4;   12'd9: toneL = `C4;
        12'd10: toneL = `C4;   12'd11: toneL = `C4;
        12'd12: toneL = `C4;   12'd13: toneL = `C4;
        12'd14: toneL = `SIL;   12'd15: toneL = `SIL;

        12'd16: toneL = `SIL;   12'd17: toneL = `SIL;
        12'd18: toneL = `SIL;   12'd19: toneL = `SIL;
        12'd20: toneL = `SIL;   12'd21: toneL = `SIL;
        12'd22: toneL = `SIL;   12'd23: toneL = `SIL;

        12'd24: toneL = `SIL;   12'd25: toneL = `SIL;
        12'd26: toneL = `SIL;   12'd27: toneL = `SIL;
        12'd28: toneL = `SIL;   12'd29: toneL = `SIL;
        12'd30: toneL = `SIL;   12'd31: toneL = `SIL;

        12'd32: toneL = `G4;   12'd33: toneL = `G4;
        12'd34: toneL = `G4;   12'd35: toneL = `G4;
        12'd36: toneL = `G4;   12'd37: toneL = `G4;
        12'd38: toneL = `SIL;   12'd39: toneL = `SIL;

        12'd40: toneL = `G4;   12'd41: toneL = `G4;
        12'd42: toneL = `G4;   12'd43: toneL = `G4;
        12'd44: toneL = `G4;   12'd45: toneL = `G4;
        12'd46: toneL = `SIL;   12'd47: toneL = `SIL;

        12'd48: toneL = `SIL;   12'd49: toneL = `SIL;
        12'd50: toneL = `SIL;   12'd51: toneL = `SIL;
        12'd52: toneL = `SIL;   12'd53: toneL = `SIL;
        12'd54: toneL = `SIL;   12'd55: toneL = `SIL;

        12'd56: toneL = `SIL;   12'd57: toneL = `SIL;
        12'd58: toneL = `SIL;   12'd59: toneL = `SIL;
        12'd60: toneL = `SIL;   12'd61: toneL = `SIL;
        12'd62: toneL = `SIL;   12'd63: toneL = `SIL;

        // Measure 2 //
        12'd64: toneL = `C4;   12'd65: toneL = `C4;
        12'd66: toneL = `C4;   12'd67: toneL = `C4;
        12'd68: toneL = `C4;   12'd69: toneL = `C4;
        12'd70: toneL = `SIL;   12'd71: toneL = `SIL;

        12'd72: toneL = `C4;   12'd73: toneL = `C4;
        12'd74: toneL = `C4;   12'd75: toneL = `C4;
        12'd76: toneL = `C4;   12'd77: toneL = `C4;
        12'd78: toneL = `SIL;   12'd79: toneL = `SIL;

        12'd80: toneL = `SIL;   12'd81: toneL = `SIL;
        12'd82: toneL = `SIL;   12'd83: toneL = `SIL;
        12'd84: toneL = `SIL;   12'd85: toneL = `SIL;
        12'd86: toneL = `SIL;   12'd87: toneL = `SIL;

        12'd88: toneL = `SIL;   12'd89: toneL = `SIL;
        12'd90: toneL = `SIL;   12'd91: toneL = `SIL;
        12'd92: toneL = `SIL;   12'd93: toneL = `SIL;
        12'd94: toneL = `SIL;   12'd95: toneL = `SIL;

        12'd96: toneL = `A4;   12'd97: toneL = `A4;
        12'd98: toneL = `A4;   12'd99: toneL = `A4;
        12'd100: toneL = `A4;   12'd101: toneL = `A4;
        12'd102: toneL = `SIL;   12'd103: toneL = `SIL;

        12'd104: toneL = `A4;   12'd105: toneL = `A4;
        12'd106: toneL = `A4;   12'd107: toneL = `A4;
        12'd108: toneL = `A4;   12'd109: toneL = `A4;
        12'd110: toneL = `SIL;   12'd111: toneL = `SIL;

        12'd112: toneL = `SIL;   12'd113: toneL = `SIL;
        12'd114: toneL = `SIL;   12'd115: toneL = `SIL;
        12'd116: toneL = `SIL;   12'd117: toneL = `SIL;
        12'd118: toneL = `SIL;   12'd119: toneL = `SIL;

        12'd120: toneL = `SIL;   12'd121: toneL = `SIL;
        12'd122: toneL = `SIL;   12'd123: toneL = `SIL;
        12'd124: toneL = `SIL;   12'd125: toneL = `SIL;
        12'd126: toneL = `SIL;   12'd127: toneL = `SIL;

        // Measure 3 //
        12'd128: toneL = `C4;   12'd129: toneL = `C4;
        12'd130: toneL = `C4;   12'd131: toneL = `C4;
        12'd132: toneL = `C4;   12'd133: toneL = `C4;
        12'd134: toneL = `SIL;   12'd135: toneL = `SIL;

        12'd136: toneL = `C4;   12'd137: toneL = `C4;
        12'd138: toneL = `C4;   12'd139: toneL = `C4;
        12'd140: toneL = `C4;   12'd141: toneL = `C4;
        12'd142: toneL = `SIL;   12'd143: toneL = `SIL;

        12'd144: toneL = `SIL;   12'd145: toneL = `SIL;
        12'd146: toneL = `SIL;   12'd147: toneL = `SIL;
        12'd148: toneL = `SIL;   12'd149: toneL = `SIL;
        12'd150: toneL = `SIL;   12'd151: toneL = `SIL;

        12'd152: toneL = `SIL;   12'd153: toneL = `SIL;
        12'd154: toneL = `SIL;   12'd155: toneL = `SIL;
        12'd156: toneL = `SIL;   12'd157: toneL = `SIL;
        12'd158: toneL = `SIL;   12'd159: toneL = `SIL;

        12'd160: toneL = `G4;   12'd161: toneL = `G4;
        12'd162: toneL = `G4;   12'd163: toneL = `G4;
        12'd164: toneL = `G4;   12'd165: toneL = `G4;
        12'd166: toneL = `SIL;   12'd167: toneL = `SIL;

        12'd168: toneL = `G4;   12'd169: toneL = `G4;
        12'd170: toneL = `G4;   12'd171: toneL = `G4;
        12'd172: toneL = `G4;   12'd173: toneL = `G4;
        12'd174: toneL = `SIL;   12'd175: toneL = `SIL;

        12'd176: toneL = `SIL;   12'd177: toneL = `SIL;
        12'd178: toneL = `SIL;   12'd179: toneL = `SIL;
        12'd180: toneL = `SIL;   12'd181: toneL = `SIL;
        12'd182: toneL = `SIL;   12'd183: toneL = `SIL;

        12'd184: toneL = `SIL;   12'd185: toneL = `SIL;
        12'd186: toneL = `SIL;   12'd187: toneL = `SIL;
        12'd188: toneL = `SIL;   12'd189: toneL = `SIL;
        12'd190: toneL = `SIL;   12'd191: toneL = `SIL;

        // Measure 4 //
        12'd192: toneL = `C4;   12'd193: toneL = `C4;
        12'd194: toneL = `C4;   12'd195: toneL = `C4;
        12'd196: toneL = `C4;   12'd197: toneL = `C4;
        12'd198: toneL = `SIL;   12'd199: toneL = `SIL;

        12'd200: toneL = `C4;   12'd201: toneL = `C4;
        12'd202: toneL = `C4;   12'd203: toneL = `C4;
        12'd204: toneL = `C4;   12'd205: toneL = `C4;
        12'd206: toneL = `SIL;   12'd207: toneL = `SIL;

        12'd208: toneL = `SIL;   12'd209: toneL = `SIL;
        12'd210: toneL = `SIL;   12'd211: toneL = `SIL;
        12'd212: toneL = `SIL;   12'd213: toneL = `SIL;
        12'd214: toneL = `SIL;   12'd215: toneL = `SIL;

        12'd216: toneL = `SIL;   12'd217: toneL = `SIL;
        12'd218: toneL = `SIL;   12'd219: toneL = `SIL;
        12'd220: toneL = `SIL;   12'd221: toneL = `SIL;
        12'd222: toneL = `SIL;   12'd223: toneL = `SIL;

        12'd224: toneL = `G4;   12'd225: toneL = `G4;
        12'd226: toneL = `G4;   12'd227: toneL = `G4;
        12'd228: toneL = `G4;   12'd229: toneL = `G4;
        12'd230: toneL = `SIL;   12'd231: toneL = `SIL;

        12'd232: toneL = `G4;   12'd233: toneL = `G4;
        12'd234: toneL = `G4;   12'd235: toneL = `G4;
        12'd236: toneL = `G4;   12'd237: toneL = `G4;
        12'd238: toneL = `SIL;   12'd239: toneL = `SIL;

        12'd240: toneL = `SIL;   12'd241: toneL = `SIL;
        12'd242: toneL = `SIL;   12'd243: toneL = `SIL;
        12'd244: toneL = `SIL;   12'd245: toneL = `SIL;
        12'd246: toneL = `SIL;   12'd247: toneL = `SIL;

        12'd248: toneL = `SIL;   12'd249: toneL = `SIL;
        12'd250: toneL = `SIL;   12'd251: toneL = `SIL;
        12'd252: toneL = `SIL;   12'd253: toneL = `SIL;
        12'd254: toneL = `SIL;   12'd255: toneL = `SIL;

        // Measure 5 //
        12'd256: toneL = `B3;   12'd257: toneL = `B3;
        12'd258: toneL = `B3;   12'd259: toneL = `B3;
        12'd260: toneL = `B3;   12'd261: toneL = `B3;
        12'd262: toneL = `SIL;   12'd263: toneL = `SIL;

        12'd264: toneL = `B3;   12'd265: toneL = `B3;
        12'd266: toneL = `B3;   12'd267: toneL = `B3;
        12'd268: toneL = `B3;   12'd269: toneL = `B3;
        12'd270: toneL = `SIL;   12'd271: toneL = `SIL;

        12'd272: toneL = `SIL;   12'd273: toneL = `SIL;
        12'd274: toneL = `SIL;   12'd275: toneL = `SIL;
        12'd276: toneL = `SIL;   12'd277: toneL = `SIL;
        12'd278: toneL = `SIL;   12'd279: toneL = `SIL;

        12'd280: toneL = `SIL;   12'd281: toneL = `SIL;
        12'd282: toneL = `SIL;   12'd283: toneL = `SIL;
        12'd284: toneL = `SIL;   12'd285: toneL = `SIL;
        12'd286: toneL = `SIL;   12'd287: toneL = `SIL;

        12'd288: toneL = `Fs4;   12'd289: toneL = `Fs4;
        12'd290: toneL = `Fs4;   12'd291: toneL = `Fs4;
        12'd292: toneL = `Fs4;   12'd293: toneL = `Fs4;
        12'd294: toneL = `SIL;   12'd295: toneL = `SIL;

        12'd296: toneL = `Fs4;   12'd297: toneL = `Fs4;
        12'd298: toneL = `Fs4;   12'd299: toneL = `Fs4;
        12'd300: toneL = `Fs4;   12'd301: toneL = `Fs4;
        12'd302: toneL = `SIL;   12'd303: toneL = `SIL;

        12'd304: toneL = `SIL;   12'd305: toneL = `SIL;
        12'd306: toneL = `SIL;   12'd307: toneL = `SIL;
        12'd308: toneL = `SIL;   12'd309: toneL = `SIL;
        12'd310: toneL = `SIL;   12'd311: toneL = `SIL;

        12'd312: toneL = `SIL;   12'd313: toneL = `SIL;
        12'd314: toneL = `SIL;   12'd315: toneL = `SIL;
        12'd316: toneL = `SIL;   12'd317: toneL = `SIL;
        12'd318: toneL = `SIL;   12'd319: toneL = `SIL;

        // Measure 6 //
        12'd320: toneL = `B3;   12'd321: toneL = `B3;
        12'd322: toneL = `B3;   12'd323: toneL = `B3;
        12'd324: toneL = `B3;   12'd325: toneL = `B3;
        12'd326: toneL = `SIL;   12'd327: toneL = `SIL;

        12'd328: toneL = `B3;   12'd329: toneL = `B3;
        12'd330: toneL = `B3;   12'd331: toneL = `B3;
        12'd332: toneL = `B3;   12'd333: toneL = `B3;
        12'd334: toneL = `SIL;   12'd335: toneL = `SIL;

        12'd336: toneL = `SIL;   12'd337: toneL = `SIL;
        12'd338: toneL = `SIL;   12'd339: toneL = `SIL;
        12'd340: toneL = `SIL;   12'd341: toneL = `SIL;
        12'd342: toneL = `SIL;   12'd343: toneL = `SIL;

        12'd344: toneL = `SIL;   12'd345: toneL = `SIL;
        12'd346: toneL = `SIL;   12'd347: toneL = `SIL;
        12'd348: toneL = `SIL;   12'd349: toneL = `SIL;
        12'd350: toneL = `SIL;   12'd351: toneL = `SIL;

        12'd352: toneL = `E4;   12'd353: toneL = `E4;
        12'd354: toneL = `E4;   12'd355: toneL = `E4;
        12'd356: toneL = `E4;   12'd357: toneL = `E4;
        12'd358: toneL = `SIL;   12'd359: toneL = `SIL;

        12'd360: toneL = `E4;   12'd361: toneL = `E4;
        12'd362: toneL = `E4;   12'd363: toneL = `E4;
        12'd364: toneL = `E4;   12'd365: toneL = `E4;
        12'd366: toneL = `SIL;   12'd367: toneL = `SIL;

        12'd368: toneL = `SIL;   12'd369: toneL = `SIL;
        12'd370: toneL = `SIL;   12'd371: toneL = `SIL;
        12'd372: toneL = `SIL;   12'd373: toneL = `SIL;
        12'd374: toneL = `SIL;   12'd375: toneL = `SIL;

        12'd376: toneL = `SIL;   12'd377: toneL = `SIL;
        12'd378: toneL = `SIL;   12'd379: toneL = `SIL;
        12'd380: toneL = `SIL;   12'd381: toneL = `SIL;
        12'd382: toneL = `SIL;   12'd383: toneL = `SIL;

        // Measure 7 //
        12'd384: toneL = `B3;   12'd385: toneL = `B3;
        12'd386: toneL = `B3;   12'd387: toneL = `B3;
        12'd388: toneL = `B3;   12'd389: toneL = `B3;
        12'd390: toneL = `SIL;   12'd391: toneL = `SIL;

        12'd392: toneL = `B3;   12'd393: toneL = `B3;
        12'd394: toneL = `B3;   12'd395: toneL = `B3;
        12'd396: toneL = `B3;   12'd397: toneL = `B3;
        12'd398: toneL = `SIL;   12'd399: toneL = `SIL;

        12'd400: toneL = `SIL;   12'd401: toneL = `SIL;
        12'd402: toneL = `SIL;   12'd403: toneL = `SIL;
        12'd404: toneL = `SIL;   12'd405: toneL = `SIL;
        12'd406: toneL = `SIL;   12'd407: toneL = `SIL;

        12'd408: toneL = `SIL;   12'd409: toneL = `SIL;
        12'd410: toneL = `SIL;   12'd411: toneL = `SIL;
        12'd412: toneL = `SIL;   12'd413: toneL = `SIL;
        12'd414: toneL = `SIL;   12'd415: toneL = `SIL;

        12'd416: toneL = `Fs4;   12'd417: toneL = `Fs4;
        12'd418: toneL = `Fs4;   12'd419: toneL = `Fs4;
        12'd420: toneL = `Fs4;   12'd421: toneL = `Fs4;
        12'd422: toneL = `SIL;   12'd423: toneL = `SIL;

        12'd424: toneL = `Fs4;   12'd425: toneL = `Fs4;
        12'd426: toneL = `Fs4;   12'd427: toneL = `Fs4;
        12'd428: toneL = `Fs4;   12'd429: toneL = `Fs4;
        12'd430: toneL = `SIL;   12'd431: toneL = `SIL;

        12'd432: toneL = `SIL;   12'd433: toneL = `SIL;
        12'd434: toneL = `SIL;   12'd435: toneL = `SIL;
        12'd436: toneL = `SIL;   12'd437: toneL = `SIL;
        12'd438: toneL = `SIL;   12'd439: toneL = `SIL;

        12'd440: toneL = `SIL;   12'd441: toneL = `SIL;
        12'd442: toneL = `SIL;   12'd443: toneL = `SIL;
        12'd444: toneL = `SIL;   12'd445: toneL = `SIL;
        12'd446: toneL = `SIL;   12'd447: toneL = `SIL;

        // Measure 8 //
        12'd448: toneL = `B3;   12'd449: toneL = `B3;
        12'd450: toneL = `B3;   12'd451: toneL = `B3;
        12'd452: toneL = `B3;   12'd453: toneL = `B3;
        12'd454: toneL = `SIL;   12'd455: toneL = `SIL;

        12'd456: toneL = `B3;   12'd457: toneL = `B3;
        12'd458: toneL = `B3;   12'd459: toneL = `B3;
        12'd460: toneL = `B3;   12'd461: toneL = `B3;
        12'd462: toneL = `SIL;   12'd463: toneL = `SIL;

        12'd464: toneL = `SIL;   12'd465: toneL = `SIL;
        12'd466: toneL = `SIL;   12'd467: toneL = `SIL;
        12'd468: toneL = `SIL;   12'd469: toneL = `SIL;
        12'd470: toneL = `SIL;   12'd471: toneL = `SIL;

        12'd472: toneL = `SIL;   12'd473: toneL = `SIL;
        12'd474: toneL = `SIL;   12'd475: toneL = `SIL;
        12'd476: toneL = `SIL;   12'd477: toneL = `SIL;
        12'd478: toneL = `SIL;   12'd479: toneL = `SIL;

        12'd480: toneL = `G4;   12'd481: toneL = `G4;
        12'd482: toneL = `G4;   12'd483: toneL = `G4;
        12'd484: toneL = `G4;   12'd485: toneL = `G4;
        12'd486: toneL = `SIL;   12'd487: toneL = `SIL;

        12'd488: toneL = `G4;   12'd489: toneL = `G4;
        12'd490: toneL = `G4;   12'd491: toneL = `G4;
        12'd492: toneL = `G4;   12'd493: toneL = `G4;
        12'd494: toneL = `SIL;   12'd495: toneL = `SIL;

        12'd496: toneL = `SIL;   12'd497: toneL = `SIL;
        12'd498: toneL = `SIL;   12'd499: toneL = `SIL;
        12'd500: toneL = `SIL;   12'd501: toneL = `SIL;
        12'd502: toneL = `SIL;   12'd503: toneL = `SIL;

        12'd504: toneL = `SIL;   12'd505: toneL = `SIL;
        12'd506: toneL = `SIL;   12'd507: toneL = `SIL;
        12'd508: toneL = `SIL;   12'd509: toneL = `SIL;
        12'd510: toneL = `SIL;   12'd511: toneL = `SIL;

        // Measure 9 //
        12'd512: toneL = `C4;   12'd513: toneL = `C4;
        12'd514: toneL = `C4;   12'd515: toneL = `C4;
        12'd516: toneL = `C4;   12'd517: toneL = `C4;
        12'd518: toneL = `SIL;   12'd519: toneL = `SIL;

        12'd520: toneL = `C4;   12'd521: toneL = `C4;
        12'd522: toneL = `C4;   12'd523: toneL = `C4;
        12'd524: toneL = `C4;   12'd525: toneL = `C4;
        12'd526: toneL = `SIL;   12'd527: toneL = `SIL;

        12'd528: toneL = `SIL;   12'd529: toneL = `SIL;
        12'd530: toneL = `SIL;   12'd531: toneL = `SIL;
        12'd532: toneL = `SIL;   12'd533: toneL = `SIL;
        12'd534: toneL = `SIL;   12'd535: toneL = `SIL;

        12'd536: toneL = `SIL;   12'd537: toneL = `SIL;
        12'd538: toneL = `SIL;   12'd539: toneL = `SIL;
        12'd540: toneL = `SIL;   12'd541: toneL = `SIL;
        12'd542: toneL = `SIL;   12'd543: toneL = `SIL;

        12'd544: toneL = `G4;   12'd545: toneL = `G4;
        12'd546: toneL = `G4;   12'd547: toneL = `G4;
        12'd548: toneL = `G4;   12'd549: toneL = `G4;
        12'd550: toneL = `SIL;   12'd551: toneL = `SIL;

        12'd552: toneL = `G4;   12'd553: toneL = `G4;
        12'd554: toneL = `G4;   12'd555: toneL = `G4;
        12'd556: toneL = `G4;   12'd557: toneL = `G4;
        12'd558: toneL = `SIL;   12'd559: toneL = `SIL;

        12'd560: toneL = `SIL;   12'd561: toneL = `SIL;
        12'd562: toneL = `SIL;   12'd563: toneL = `SIL;
        12'd564: toneL = `SIL;   12'd565: toneL = `SIL;
        12'd566: toneL = `SIL;   12'd567: toneL = `SIL;

        12'd568: toneL = `SIL;   12'd569: toneL = `SIL;
        12'd570: toneL = `SIL;   12'd571: toneL = `SIL;
        12'd572: toneL = `SIL;   12'd573: toneL = `SIL;
        12'd574: toneL = `SIL;   12'd575: toneL = `SIL;

        // Measure 10 //
        12'd576: toneL = `C4;   12'd577: toneL = `C4;
        12'd578: toneL = `C4;   12'd579: toneL = `C4;
        12'd580: toneL = `C4;   12'd581: toneL = `C4;
        12'd582: toneL = `SIL;   12'd583: toneL = `SIL;

        12'd584: toneL = `C4;   12'd585: toneL = `C4;
        12'd586: toneL = `C4;   12'd587: toneL = `C4;
        12'd588: toneL = `C4;   12'd589: toneL = `C4;
        12'd590: toneL = `SIL;   12'd591: toneL = `SIL;

        12'd592: toneL = `SIL;   12'd593: toneL = `SIL;
        12'd594: toneL = `SIL;   12'd595: toneL = `SIL;
        12'd596: toneL = `SIL;   12'd597: toneL = `SIL;
        12'd598: toneL = `SIL;   12'd599: toneL = `SIL;

        12'd600: toneL = `SIL;   12'd601: toneL = `SIL;
        12'd602: toneL = `SIL;   12'd603: toneL = `SIL;
        12'd604: toneL = `SIL;   12'd605: toneL = `SIL;
        12'd606: toneL = `SIL;   12'd607: toneL = `SIL;

        12'd608: toneL = `A4;   12'd609: toneL = `A4;
        12'd610: toneL = `A4;   12'd611: toneL = `A4;
        12'd612: toneL = `A4;   12'd613: toneL = `A4;
        12'd614: toneL = `SIL;   12'd615: toneL = `SIL;

        12'd616: toneL = `A4;   12'd617: toneL = `A4;
        12'd618: toneL = `A4;   12'd619: toneL = `A4;
        12'd620: toneL = `A4;   12'd621: toneL = `A4;
        12'd622: toneL = `SIL;   12'd623: toneL = `SIL;

        12'd624: toneL = `SIL;   12'd625: toneL = `SIL;
        12'd626: toneL = `SIL;   12'd627: toneL = `SIL;
        12'd628: toneL = `SIL;   12'd629: toneL = `SIL;
        12'd630: toneL = `SIL;   12'd631: toneL = `SIL;

        12'd632: toneL = `SIL;   12'd633: toneL = `SIL;
        12'd634: toneL = `SIL;   12'd635: toneL = `SIL;
        12'd636: toneL = `SIL;   12'd637: toneL = `SIL;
        12'd638: toneL = `SIL;   12'd639: toneL = `SIL;

        // Measure 11 //
        12'd640: toneL = `C4;   12'd641: toneL = `C4;
        12'd642: toneL = `C4;   12'd643: toneL = `C4;
        12'd644: toneL = `C4;   12'd645: toneL = `C4;
        12'd646: toneL = `SIL;   12'd647: toneL = `SIL;

        12'd648: toneL = `C4;   12'd649: toneL = `C4;
        12'd650: toneL = `C4;   12'd651: toneL = `C4;
        12'd652: toneL = `C4;   12'd653: toneL = `C4;
        12'd654: toneL = `SIL;   12'd655: toneL = `SIL;

        12'd656: toneL = `SIL;   12'd657: toneL = `SIL;
        12'd658: toneL = `SIL;   12'd659: toneL = `SIL;
        12'd660: toneL = `SIL;   12'd661: toneL = `SIL;
        12'd662: toneL = `SIL;   12'd663: toneL = `SIL;

        12'd664: toneL = `SIL;   12'd665: toneL = `SIL;
        12'd666: toneL = `SIL;   12'd667: toneL = `SIL;
        12'd668: toneL = `SIL;   12'd669: toneL = `SIL;
        12'd670: toneL = `SIL;   12'd671: toneL = `SIL;

        12'd672: toneL = `G4;   12'd673: toneL = `G4;
        12'd674: toneL = `G4;   12'd675: toneL = `G4;
        12'd676: toneL = `G4;   12'd677: toneL = `G4;
        12'd678: toneL = `SIL;   12'd679: toneL = `SIL;

        12'd680: toneL = `G4;   12'd681: toneL = `G4;
        12'd682: toneL = `G4;   12'd683: toneL = `G4;
        12'd684: toneL = `G4;   12'd685: toneL = `G4;
        12'd686: toneL = `SIL;   12'd687: toneL = `SIL;

        12'd688: toneL = `SIL;   12'd689: toneL = `SIL;
        12'd690: toneL = `SIL;   12'd691: toneL = `SIL;
        12'd692: toneL = `SIL;   12'd693: toneL = `SIL;
        12'd694: toneL = `SIL;   12'd695: toneL = `SIL;

        12'd696: toneL = `SIL;   12'd697: toneL = `SIL;
        12'd698: toneL = `SIL;   12'd699: toneL = `SIL;
        12'd700: toneL = `SIL;   12'd701: toneL = `SIL;
        12'd702: toneL = `SIL;   12'd703: toneL = `SIL;

        // Measure 12 //
        12'd704: toneL = `C4;   12'd705: toneL = `C4;
        12'd706: toneL = `C4;   12'd707: toneL = `C4;
        12'd708: toneL = `C4;   12'd709: toneL = `C4;
        12'd710: toneL = `SIL;   12'd711: toneL = `SIL;

        12'd712: toneL = `C4;   12'd713: toneL = `C4;
        12'd714: toneL = `C4;   12'd715: toneL = `C4;
        12'd716: toneL = `C4;   12'd717: toneL = `C4;
        12'd718: toneL = `SIL;   12'd719: toneL = `SIL;

        12'd720: toneL = `SIL;   12'd721: toneL = `SIL;
        12'd722: toneL = `SIL;   12'd723: toneL = `SIL;
        12'd724: toneL = `SIL;   12'd725: toneL = `SIL;
        12'd726: toneL = `SIL;   12'd727: toneL = `SIL;

        12'd728: toneL = `SIL;   12'd729: toneL = `SIL;
        12'd730: toneL = `SIL;   12'd731: toneL = `SIL;
        12'd732: toneL = `SIL;   12'd733: toneL = `SIL;
        12'd734: toneL = `SIL;   12'd735: toneL = `SIL;

        12'd736: toneL = `G4;   12'd737: toneL = `G4;
        12'd738: toneL = `G4;   12'd739: toneL = `G4;
        12'd740: toneL = `G4;   12'd741: toneL = `G4;
        12'd742: toneL = `SIL;   12'd743: toneL = `SIL;

        12'd744: toneL = `G4;   12'd745: toneL = `G4;
        12'd746: toneL = `G4;   12'd747: toneL = `G4;
        12'd748: toneL = `G4;   12'd749: toneL = `G4;
        12'd750: toneL = `SIL;   12'd751: toneL = `SIL;

        12'd752: toneL = `SIL;   12'd753: toneL = `SIL;
        12'd754: toneL = `SIL;   12'd755: toneL = `SIL;
        12'd756: toneL = `SIL;   12'd757: toneL = `SIL;
        12'd758: toneL = `SIL;   12'd759: toneL = `SIL;

        12'd760: toneL = `SIL;   12'd761: toneL = `SIL;
        12'd762: toneL = `SIL;   12'd763: toneL = `SIL;
        12'd764: toneL = `SIL;   12'd765: toneL = `SIL;
        12'd766: toneL = `SIL;   12'd767: toneL = `SIL;

        // Measure 13 //
        12'd768: toneL = `B3;   12'd769: toneL = `B3;
        12'd770: toneL = `B3;   12'd771: toneL = `B3;
        12'd772: toneL = `B3;   12'd773: toneL = `B3;
        12'd774: toneL = `SIL;   12'd775: toneL = `SIL;

        12'd776: toneL = `B3;   12'd777: toneL = `B3;
        12'd778: toneL = `B3;   12'd779: toneL = `B3;
        12'd780: toneL = `B3;   12'd781: toneL = `B3;
        12'd782: toneL = `SIL;   12'd783: toneL = `SIL;

        12'd784: toneL = `SIL;   12'd785: toneL = `SIL;
        12'd786: toneL = `SIL;   12'd787: toneL = `SIL;
        12'd788: toneL = `SIL;   12'd789: toneL = `SIL;
        12'd790: toneL = `SIL;   12'd791: toneL = `SIL;

        12'd792: toneL = `SIL;   12'd793: toneL = `SIL;
        12'd794: toneL = `SIL;   12'd795: toneL = `SIL;
        12'd796: toneL = `SIL;   12'd797: toneL = `SIL;
        12'd798: toneL = `SIL;   12'd799: toneL = `SIL;

        12'd800: toneL = `Fs4;   12'd801: toneL = `Fs4;
        12'd802: toneL = `Fs4;   12'd803: toneL = `Fs4;
        12'd804: toneL = `Fs4;   12'd805: toneL = `Fs4;
        12'd806: toneL = `SIL;   12'd807: toneL = `SIL;

        12'd808: toneL = `Fs4;   12'd809: toneL = `Fs4;
        12'd810: toneL = `Fs4;   12'd811: toneL = `Fs4;
        12'd812: toneL = `Fs4;   12'd813: toneL = `Fs4;
        12'd814: toneL = `SIL;   12'd815: toneL = `SIL;

        12'd816: toneL = `SIL;   12'd817: toneL = `SIL;
        12'd818: toneL = `SIL;   12'd819: toneL = `SIL;
        12'd820: toneL = `SIL;   12'd821: toneL = `SIL;
        12'd822: toneL = `SIL;   12'd823: toneL = `SIL;

        12'd824: toneL = `SIL;   12'd825: toneL = `SIL;
        12'd826: toneL = `SIL;   12'd827: toneL = `SIL;
        12'd828: toneL = `SIL;   12'd829: toneL = `SIL;
        12'd830: toneL = `SIL;   12'd831: toneL = `SIL;

        // Measure 14 //
        12'd832: toneL = `B3;   12'd833: toneL = `B3;
        12'd834: toneL = `B3;   12'd835: toneL = `B3;
        12'd836: toneL = `B3;   12'd837: toneL = `B3;
        12'd838: toneL = `SIL;   12'd839: toneL = `SIL;

        12'd840: toneL = `B3;   12'd841: toneL = `B3;
        12'd842: toneL = `B3;   12'd843: toneL = `B3;
        12'd844: toneL = `B3;   12'd845: toneL = `B3;
        12'd846: toneL = `SIL;   12'd847: toneL = `SIL;

        12'd848: toneL = `SIL;   12'd849: toneL = `SIL;
        12'd850: toneL = `SIL;   12'd851: toneL = `SIL;
        12'd852: toneL = `SIL;   12'd853: toneL = `SIL;
        12'd854: toneL = `SIL;   12'd855: toneL = `SIL;

        12'd856: toneL = `SIL;   12'd857: toneL = `SIL;
        12'd858: toneL = `SIL;   12'd859: toneL = `SIL;
        12'd860: toneL = `SIL;   12'd861: toneL = `SIL;
        12'd862: toneL = `SIL;   12'd863: toneL = `SIL;

        12'd864: toneL = `E4;   12'd865: toneL = `E4;
        12'd866: toneL = `E4;   12'd867: toneL = `E4;
        12'd868: toneL = `E4;   12'd869: toneL = `E4;
        12'd870: toneL = `SIL;   12'd871: toneL = `SIL;

        12'd872: toneL = `E4;   12'd873: toneL = `E4;
        12'd874: toneL = `E4;   12'd875: toneL = `E4;
        12'd876: toneL = `E4;   12'd877: toneL = `E4;
        12'd878: toneL = `SIL;   12'd879: toneL = `SIL;

        12'd880: toneL = `SIL;   12'd881: toneL = `SIL;
        12'd882: toneL = `SIL;   12'd883: toneL = `SIL;
        12'd884: toneL = `SIL;   12'd885: toneL = `SIL;
        12'd886: toneL = `SIL;   12'd887: toneL = `SIL;

        12'd888: toneL = `SIL;   12'd889: toneL = `SIL;
        12'd890: toneL = `SIL;   12'd891: toneL = `SIL;
        12'd892: toneL = `SIL;   12'd893: toneL = `SIL;
        12'd894: toneL = `SIL;   12'd895: toneL = `SIL;

        // Measure 15 //
        12'd896: toneL = `B3;   12'd897: toneL = `B3;
        12'd898: toneL = `B3;   12'd899: toneL = `B3;
        12'd900: toneL = `B3;   12'd901: toneL = `B3;
        12'd902: toneL = `SIL;   12'd903: toneL = `SIL;

        12'd904: toneL = `B3;   12'd905: toneL = `B3;
        12'd906: toneL = `B3;   12'd907: toneL = `B3;
        12'd908: toneL = `B3;   12'd909: toneL = `B3;
        12'd910: toneL = `SIL;   12'd911: toneL = `SIL;

        12'd912: toneL = `SIL;   12'd913: toneL = `SIL;
        12'd914: toneL = `SIL;   12'd915: toneL = `SIL;
        12'd916: toneL = `SIL;   12'd917: toneL = `SIL;
        12'd918: toneL = `SIL;   12'd919: toneL = `SIL;

        12'd920: toneL = `SIL;   12'd921: toneL = `SIL;
        12'd922: toneL = `SIL;   12'd923: toneL = `SIL;
        12'd924: toneL = `SIL;   12'd925: toneL = `SIL;
        12'd926: toneL = `SIL;   12'd927: toneL = `SIL;

        12'd928: toneL = `Fs4;   12'd929: toneL = `Fs4;
        12'd930: toneL = `Fs4;   12'd931: toneL = `Fs4;
        12'd932: toneL = `Fs4;   12'd933: toneL = `Fs4;
        12'd934: toneL = `SIL;   12'd935: toneL = `SIL;

        12'd936: toneL = `Fs4;   12'd937: toneL = `Fs4;
        12'd938: toneL = `Fs4;   12'd939: toneL = `Fs4;
        12'd940: toneL = `Fs4;   12'd941: toneL = `Fs4;
        12'd942: toneL = `SIL;   12'd943: toneL = `SIL;

        12'd944: toneL = `SIL;   12'd945: toneL = `SIL;
        12'd946: toneL = `SIL;   12'd947: toneL = `SIL;
        12'd948: toneL = `SIL;   12'd949: toneL = `SIL;
        12'd950: toneL = `SIL;   12'd951: toneL = `SIL;

        12'd952: toneL = `SIL;   12'd953: toneL = `SIL;
        12'd954: toneL = `SIL;   12'd955: toneL = `SIL;
        12'd956: toneL = `SIL;   12'd957: toneL = `SIL;
        12'd958: toneL = `SIL;   12'd959: toneL = `SIL;

        // Measure 16 //
        12'd960: toneL = `B3;   12'd961: toneL = `B3;
        12'd962: toneL = `B3;   12'd963: toneL = `B3;
        12'd964: toneL = `B3;   12'd965: toneL = `B3;
        12'd966: toneL = `SIL;   12'd967: toneL = `SIL;

        12'd968: toneL = `B3;   12'd969: toneL = `B3;
        12'd970: toneL = `B3;   12'd971: toneL = `B3;
        12'd972: toneL = `B3;   12'd973: toneL = `B3;
        12'd974: toneL = `SIL;   12'd975: toneL = `SIL;

        12'd976: toneL = `SIL;   12'd977: toneL = `SIL;
        12'd978: toneL = `SIL;   12'd979: toneL = `SIL;
        12'd980: toneL = `SIL;   12'd981: toneL = `SIL;
        12'd982: toneL = `SIL;   12'd983: toneL = `SIL;

        12'd984: toneL = `SIL;   12'd985: toneL = `SIL;
        12'd986: toneL = `SIL;   12'd987: toneL = `SIL;
        12'd988: toneL = `SIL;   12'd989: toneL = `SIL;
        12'd990: toneL = `SIL;   12'd991: toneL = `SIL;

        12'd992: toneL = `G4;   12'd993: toneL = `G4;
        12'd994: toneL = `G4;   12'd995: toneL = `G4;
        12'd996: toneL = `G4;   12'd997: toneL = `G4;
        12'd998: toneL = `SIL;   12'd999: toneL = `SIL;

        12'd1000: toneL = `G4;   12'd1001: toneL = `G4;
        12'd1002: toneL = `G4;   12'd1003: toneL = `G4;
        12'd1004: toneL = `G4;   12'd1005: toneL = `G4;
        12'd1006: toneL = `SIL;   12'd1007: toneL = `SIL;

        12'd1008: toneL = `SIL;   12'd1009: toneL = `SIL;
        12'd1010: toneL = `SIL;   12'd1011: toneL = `SIL;
        12'd1012: toneL = `SIL;   12'd1013: toneL = `SIL;
        12'd1014: toneL = `SIL;   12'd1015: toneL = `SIL;

        12'd1016: toneL = `SIL;   12'd1017: toneL = `SIL;
        12'd1018: toneL = `SIL;   12'd1019: toneL = `SIL;
        12'd1020: toneL = `SIL;   12'd1021: toneL = `SIL;
        12'd1022: toneL = `SIL;   12'd1023: toneL = `SIL;

        // Measure 17 //
        12'd1024: toneL = `Ef4;   12'd1025: toneL = `Ef4;
        12'd1026: toneL = `Ef4;   12'd1027: toneL = `Ef4;
        12'd1028: toneL = `Ef4;   12'd1029: toneL = `Ef4;
        12'd1030: toneL = `SIL;   12'd1031: toneL = `SIL;

        12'd1032: toneL = `Ef4;   12'd1033: toneL = `Ef4;
        12'd1034: toneL = `Ef4;   12'd1035: toneL = `Ef4;
        12'd1036: toneL = `Ef4;   12'd1037: toneL = `Ef4;
        12'd1038: toneL = `SIL;   12'd1039: toneL = `SIL;

        12'd1040: toneL = `SIL;   12'd1041: toneL = `SIL;
        12'd1042: toneL = `SIL;   12'd1043: toneL = `SIL;
        12'd1044: toneL = `SIL;   12'd1045: toneL = `SIL;
        12'd1046: toneL = `SIL;   12'd1047: toneL = `SIL;

        12'd1048: toneL = `SIL;   12'd1049: toneL = `SIL;
        12'd1050: toneL = `SIL;   12'd1051: toneL = `SIL;
        12'd1052: toneL = `SIL;   12'd1053: toneL = `SIL;
        12'd1054: toneL = `SIL;   12'd1055: toneL = `SIL;

        12'd1056: toneL = `G4;   12'd1057: toneL = `G4;
        12'd1058: toneL = `G4;   12'd1059: toneL = `G4;
        12'd1060: toneL = `G4;   12'd1061: toneL = `G4;
        12'd1062: toneL = `SIL;   12'd1063: toneL = `SIL;

        12'd1064: toneL = `G4;   12'd1065: toneL = `G4;
        12'd1066: toneL = `G4;   12'd1067: toneL = `G4;
        12'd1068: toneL = `G4;   12'd1069: toneL = `G4;
        12'd1070: toneL = `SIL;   12'd1071: toneL = `SIL;

        12'd1072: toneL = `SIL;   12'd1073: toneL = `SIL;
        12'd1074: toneL = `SIL;   12'd1075: toneL = `SIL;
        12'd1076: toneL = `SIL;   12'd1077: toneL = `SIL;
        12'd1078: toneL = `SIL;   12'd1079: toneL = `SIL;

        12'd1080: toneL = `SIL;   12'd1081: toneL = `SIL;
        12'd1082: toneL = `SIL;   12'd1083: toneL = `SIL;
        12'd1084: toneL = `SIL;   12'd1085: toneL = `SIL;
        12'd1086: toneL = `SIL;   12'd1087: toneL = `SIL;

        // Measure 18 //
        12'd1088: toneL = `Ef4;   12'd1089: toneL = `Ef4;
        12'd1090: toneL = `Ef4;   12'd1091: toneL = `Ef4;
        12'd1092: toneL = `Ef4;   12'd1093: toneL = `Ef4;
        12'd1094: toneL = `SIL;   12'd1095: toneL = `SIL;

        12'd1096: toneL = `Ef4;   12'd1097: toneL = `Ef4;
        12'd1098: toneL = `Ef4;   12'd1099: toneL = `Ef4;
        12'd1100: toneL = `Ef4;   12'd1101: toneL = `Ef4;
        12'd1102: toneL = `SIL;   12'd1103: toneL = `SIL;

        12'd1104: toneL = `SIL;   12'd1105: toneL = `SIL;
        12'd1106: toneL = `SIL;   12'd1107: toneL = `SIL;
        12'd1108: toneL = `SIL;   12'd1109: toneL = `SIL;
        12'd1110: toneL = `SIL;   12'd1111: toneL = `SIL;

        12'd1112: toneL = `SIL;   12'd1113: toneL = `SIL;
        12'd1114: toneL = `SIL;   12'd1115: toneL = `SIL;
        12'd1116: toneL = `SIL;   12'd1117: toneL = `SIL;
        12'd1118: toneL = `SIL;   12'd1119: toneL = `SIL;

        12'd1120: toneL = `C5;   12'd1121: toneL = `C5;
        12'd1122: toneL = `C5;   12'd1123: toneL = `C5;
        12'd1124: toneL = `C5;   12'd1125: toneL = `C5;
        12'd1126: toneL = `SIL;   12'd1127: toneL = `SIL;

        12'd1128: toneL = `C5;   12'd1129: toneL = `C5;
        12'd1130: toneL = `C5;   12'd1131: toneL = `C5;
        12'd1132: toneL = `C5;   12'd1133: toneL = `C5;
        12'd1134: toneL = `SIL;   12'd1135: toneL = `SIL;

        12'd1136: toneL = `SIL;   12'd1137: toneL = `SIL;
        12'd1138: toneL = `SIL;   12'd1139: toneL = `SIL;
        12'd1140: toneL = `SIL;   12'd1141: toneL = `SIL;
        12'd1142: toneL = `SIL;   12'd1143: toneL = `SIL;

        12'd1144: toneL = `SIL;   12'd1145: toneL = `SIL;
        12'd1146: toneL = `SIL;   12'd1147: toneL = `SIL;
        12'd1148: toneL = `SIL;   12'd1149: toneL = `SIL;
        12'd1150: toneL = `SIL;   12'd1151: toneL = `SIL;

        // Measure 19 //
        12'd1152: toneL = `Ef4;   12'd1153: toneL = `Ef4;
        12'd1154: toneL = `Ef4;   12'd1155: toneL = `Ef4;
        12'd1156: toneL = `Ef4;   12'd1157: toneL = `Ef4;
        12'd1158: toneL = `SIL;   12'd1159: toneL = `SIL;

        12'd1160: toneL = `Ef4;   12'd1161: toneL = `Ef4;
        12'd1162: toneL = `Ef4;   12'd1163: toneL = `Ef4;
        12'd1164: toneL = `Ef4;   12'd1165: toneL = `Ef4;
        12'd1166: toneL = `SIL;   12'd1167: toneL = `SIL;

        12'd1168: toneL = `SIL;   12'd1169: toneL = `SIL;
        12'd1170: toneL = `SIL;   12'd1171: toneL = `SIL;
        12'd1172: toneL = `SIL;   12'd1173: toneL = `SIL;
        12'd1174: toneL = `SIL;   12'd1175: toneL = `SIL;

        12'd1176: toneL = `SIL;   12'd1177: toneL = `SIL;
        12'd1178: toneL = `SIL;   12'd1179: toneL = `SIL;
        12'd1180: toneL = `SIL;   12'd1181: toneL = `SIL;
        12'd1182: toneL = `SIL;   12'd1183: toneL = `SIL;

        12'd1184: toneL = `G4;   12'd1185: toneL = `G4;
        12'd1186: toneL = `G4;   12'd1187: toneL = `G4;
        12'd1188: toneL = `G4;   12'd1189: toneL = `G4;
        12'd1190: toneL = `SIL;   12'd1191: toneL = `SIL;

        12'd1192: toneL = `G4;   12'd1193: toneL = `G4;
        12'd1194: toneL = `G4;   12'd1195: toneL = `G4;
        12'd1196: toneL = `G4;   12'd1197: toneL = `G4;
        12'd1198: toneL = `SIL;   12'd1199: toneL = `SIL;

        12'd1200: toneL = `SIL;   12'd1201: toneL = `SIL;
        12'd1202: toneL = `SIL;   12'd1203: toneL = `SIL;
        12'd1204: toneL = `SIL;   12'd1205: toneL = `SIL;
        12'd1206: toneL = `SIL;   12'd1207: toneL = `SIL;

        12'd1208: toneL = `SIL;   12'd1209: toneL = `SIL;
        12'd1210: toneL = `SIL;   12'd1211: toneL = `SIL;
        12'd1212: toneL = `SIL;   12'd1213: toneL = `SIL;
        12'd1214: toneL = `SIL;   12'd1215: toneL = `SIL;

        // Measure 20 //
        12'd1216: toneL = `Ef4;   12'd1217: toneL = `Ef4;
        12'd1218: toneL = `Ef4;   12'd1219: toneL = `Ef4;
        12'd1220: toneL = `Ef4;   12'd1221: toneL = `Ef4;
        12'd1222: toneL = `SIL;   12'd1223: toneL = `SIL;

        12'd1224: toneL = `Ef4;   12'd1225: toneL = `Ef4;
        12'd1226: toneL = `Ef4;   12'd1227: toneL = `Ef4;
        12'd1228: toneL = `Ef4;   12'd1229: toneL = `Ef4;
        12'd1230: toneL = `SIL;   12'd1231: toneL = `SIL;

        12'd1232: toneL = `SIL;   12'd1233: toneL = `SIL;
        12'd1234: toneL = `SIL;   12'd1235: toneL = `SIL;
        12'd1236: toneL = `SIL;   12'd1237: toneL = `SIL;
        12'd1238: toneL = `SIL;   12'd1239: toneL = `SIL;

        12'd1240: toneL = `SIL;   12'd1241: toneL = `SIL;
        12'd1242: toneL = `SIL;   12'd1243: toneL = `SIL;
        12'd1244: toneL = `SIL;   12'd1245: toneL = `SIL;
        12'd1246: toneL = `SIL;   12'd1247: toneL = `SIL;

        12'd1248: toneL = `C5;   12'd1249: toneL = `C5;
        12'd1250: toneL = `C5;   12'd1251: toneL = `C5;
        12'd1252: toneL = `C5;   12'd1253: toneL = `C5;
        12'd1254: toneL = `SIL;   12'd1255: toneL = `SIL;

        12'd1256: toneL = `C5;   12'd1257: toneL = `C5;
        12'd1258: toneL = `C5;   12'd1259: toneL = `C5;
        12'd1260: toneL = `C5;   12'd1261: toneL = `C5;
        12'd1262: toneL = `SIL;   12'd1263: toneL = `SIL;

        12'd1264: toneL = `SIL;   12'd1265: toneL = `SIL;
        12'd1266: toneL = `SIL;   12'd1267: toneL = `SIL;
        12'd1268: toneL = `SIL;   12'd1269: toneL = `SIL;
        12'd1270: toneL = `SIL;   12'd1271: toneL = `SIL;

        12'd1272: toneL = `SIL;   12'd1273: toneL = `SIL;
        12'd1274: toneL = `SIL;   12'd1275: toneL = `SIL;
        12'd1276: toneL = `SIL;   12'd1277: toneL = `SIL;
        12'd1278: toneL = `SIL;   12'd1279: toneL = `SIL;

        // Measure 21 //
        12'd1280: toneL = `D4;   12'd1281: toneL = `D4;
        12'd1282: toneL = `D4;   12'd1283: toneL = `D4;
        12'd1284: toneL = `D4;   12'd1285: toneL = `D4;
        12'd1286: toneL = `SIL;   12'd1287: toneL = `SIL;

        12'd1288: toneL = `D4;   12'd1289: toneL = `D4;
        12'd1290: toneL = `D4;   12'd1291: toneL = `D4;
        12'd1292: toneL = `D4;   12'd1293: toneL = `D4;
        12'd1294: toneL = `SIL;   12'd1295: toneL = `SIL;

        12'd1296: toneL = `SIL;   12'd1297: toneL = `SIL;
        12'd1298: toneL = `SIL;   12'd1299: toneL = `SIL;
        12'd1300: toneL = `SIL;   12'd1301: toneL = `SIL;
        12'd1302: toneL = `SIL;   12'd1303: toneL = `SIL;

        12'd1304: toneL = `SIL;   12'd1305: toneL = `SIL;
        12'd1306: toneL = `SIL;   12'd1307: toneL = `SIL;
        12'd1308: toneL = `SIL;   12'd1309: toneL = `SIL;
        12'd1310: toneL = `SIL;   12'd1311: toneL = `SIL;

        12'd1312: toneL = `A4;   12'd1313: toneL = `A4;
        12'd1314: toneL = `A4;   12'd1315: toneL = `A4;
        12'd1316: toneL = `A4;   12'd1317: toneL = `A4;
        12'd1318: toneL = `SIL;   12'd1319: toneL = `SIL;

        12'd1320: toneL = `A4;   12'd1321: toneL = `A4;
        12'd1322: toneL = `A4;   12'd1323: toneL = `A4;
        12'd1324: toneL = `A4;   12'd1325: toneL = `A4;
        12'd1326: toneL = `SIL;   12'd1327: toneL = `SIL;

        12'd1328: toneL = `SIL;   12'd1329: toneL = `SIL;
        12'd1330: toneL = `SIL;   12'd1331: toneL = `SIL;
        12'd1332: toneL = `SIL;   12'd1333: toneL = `SIL;
        12'd1334: toneL = `SIL;   12'd1335: toneL = `SIL;

        12'd1336: toneL = `SIL;   12'd1337: toneL = `SIL;
        12'd1338: toneL = `SIL;   12'd1339: toneL = `SIL;
        12'd1340: toneL = `SIL;   12'd1341: toneL = `SIL;
        12'd1342: toneL = `SIL;   12'd1343: toneL = `SIL;

        // Measure 22 //
        12'd1344: toneL = `D4;   12'd1345: toneL = `D4;
        12'd1346: toneL = `D4;   12'd1347: toneL = `D4;
        12'd1348: toneL = `D4;   12'd1349: toneL = `D4;
        12'd1350: toneL = `SIL;   12'd1351: toneL = `SIL;

        12'd1352: toneL = `D4;   12'd1353: toneL = `D4;
        12'd1354: toneL = `D4;   12'd1355: toneL = `D4;
        12'd1356: toneL = `D4;   12'd1357: toneL = `D4;
        12'd1358: toneL = `SIL;   12'd1359: toneL = `SIL;

        12'd1360: toneL = `SIL;   12'd1361: toneL = `SIL;
        12'd1362: toneL = `SIL;   12'd1363: toneL = `SIL;
        12'd1364: toneL = `SIL;   12'd1365: toneL = `SIL;
        12'd1366: toneL = `SIL;   12'd1367: toneL = `SIL;

        12'd1368: toneL = `SIL;   12'd1369: toneL = `SIL;
        12'd1370: toneL = `SIL;   12'd1371: toneL = `SIL;
        12'd1372: toneL = `SIL;   12'd1373: toneL = `SIL;
        12'd1374: toneL = `SIL;   12'd1375: toneL = `SIL;

        12'd1376: toneL = `B4;   12'd1377: toneL = `B4;
        12'd1378: toneL = `B4;   12'd1379: toneL = `B4;
        12'd1380: toneL = `B4;   12'd1381: toneL = `B4;
        12'd1382: toneL = `SIL;   12'd1383: toneL = `SIL;

        12'd1384: toneL = `B4;   12'd1385: toneL = `B4;
        12'd1386: toneL = `B4;   12'd1387: toneL = `B4;
        12'd1388: toneL = `B4;   12'd1389: toneL = `B4;
        12'd1390: toneL = `SIL;   12'd1391: toneL = `SIL;

        12'd1392: toneL = `SIL;   12'd1393: toneL = `SIL;
        12'd1394: toneL = `SIL;   12'd1395: toneL = `SIL;
        12'd1396: toneL = `SIL;   12'd1397: toneL = `SIL;
        12'd1398: toneL = `SIL;   12'd1399: toneL = `SIL;

        12'd1400: toneL = `SIL;   12'd1401: toneL = `SIL;
        12'd1402: toneL = `SIL;   12'd1403: toneL = `SIL;
        12'd1404: toneL = `SIL;   12'd1405: toneL = `SIL;
        12'd1406: toneL = `SIL;   12'd1407: toneL = `SIL;

        // Measure 23 //
        12'd1408: toneL = `D4;   12'd1409: toneL = `D4;
        12'd1410: toneL = `D4;   12'd1411: toneL = `D4;
        12'd1412: toneL = `D4;   12'd1413: toneL = `D4;
        12'd1414: toneL = `SIL;   12'd1415: toneL = `SIL;

        12'd1416: toneL = `D4;   12'd1417: toneL = `D4;
        12'd1418: toneL = `D4;   12'd1419: toneL = `D4;
        12'd1420: toneL = `D4;   12'd1421: toneL = `D4;
        12'd1422: toneL = `SIL;   12'd1423: toneL = `SIL;

        12'd1424: toneL = `SIL;   12'd1425: toneL = `SIL;
        12'd1426: toneL = `SIL;   12'd1427: toneL = `SIL;
        12'd1428: toneL = `SIL;   12'd1429: toneL = `SIL;
        12'd1430: toneL = `SIL;   12'd1431: toneL = `SIL;

        12'd1432: toneL = `SIL;   12'd1433: toneL = `SIL;
        12'd1434: toneL = `SIL;   12'd1435: toneL = `SIL;
        12'd1436: toneL = `SIL;   12'd1437: toneL = `SIL;
        12'd1438: toneL = `SIL;   12'd1439: toneL = `SIL;

        12'd1440: toneL = `A4;   12'd1441: toneL = `A4;
        12'd1442: toneL = `A4;   12'd1443: toneL = `A4;
        12'd1444: toneL = `A4;   12'd1445: toneL = `A4;
        12'd1446: toneL = `SIL;   12'd1447: toneL = `SIL;

        12'd1448: toneL = `A4;   12'd1449: toneL = `A4;
        12'd1450: toneL = `A4;   12'd1451: toneL = `A4;
        12'd1452: toneL = `A4;   12'd1453: toneL = `A4;
        12'd1454: toneL = `SIL;   12'd1455: toneL = `SIL;

        12'd1456: toneL = `SIL;   12'd1457: toneL = `SIL;
        12'd1458: toneL = `SIL;   12'd1459: toneL = `SIL;
        12'd1460: toneL = `SIL;   12'd1461: toneL = `SIL;
        12'd1462: toneL = `SIL;   12'd1463: toneL = `SIL;

        12'd1464: toneL = `SIL;   12'd1465: toneL = `SIL;
        12'd1466: toneL = `SIL;   12'd1467: toneL = `SIL;
        12'd1468: toneL = `SIL;   12'd1469: toneL = `SIL;
        12'd1470: toneL = `SIL;   12'd1471: toneL = `SIL;

        // Measure 24 //
        12'd1472: toneL = `D4;   12'd1473: toneL = `D4;
        12'd1474: toneL = `D4;   12'd1475: toneL = `D4;
        12'd1476: toneL = `D4;   12'd1477: toneL = `D4;
        12'd1478: toneL = `SIL;   12'd1479: toneL = `SIL;

        12'd1480: toneL = `D4;   12'd1481: toneL = `D4;
        12'd1482: toneL = `D4;   12'd1483: toneL = `D4;
        12'd1484: toneL = `D4;   12'd1485: toneL = `D4;
        12'd1486: toneL = `SIL;   12'd1487: toneL = `SIL;

        12'd1488: toneL = `SIL;   12'd1489: toneL = `SIL;
        12'd1490: toneL = `SIL;   12'd1491: toneL = `SIL;
        12'd1492: toneL = `SIL;   12'd1493: toneL = `SIL;
        12'd1494: toneL = `SIL;   12'd1495: toneL = `SIL;

        12'd1496: toneL = `SIL;   12'd1497: toneL = `SIL;
        12'd1498: toneL = `SIL;   12'd1499: toneL = `SIL;
        12'd1500: toneL = `SIL;   12'd1501: toneL = `SIL;
        12'd1502: toneL = `SIL;   12'd1503: toneL = `SIL;

        12'd1504: toneL = `B4;   12'd1505: toneL = `B4;
        12'd1506: toneL = `B4;   12'd1507: toneL = `B4;
        12'd1508: toneL = `B4;   12'd1509: toneL = `B4;
        12'd1510: toneL = `SIL;   12'd1511: toneL = `SIL;

        12'd1512: toneL = `B4;   12'd1513: toneL = `B4;
        12'd1514: toneL = `B4;   12'd1515: toneL = `B4;
        12'd1516: toneL = `B4;   12'd1517: toneL = `B4;
        12'd1518: toneL = `SIL;   12'd1519: toneL = `SIL;

        12'd1520: toneL = `SIL;   12'd1521: toneL = `SIL;
        12'd1522: toneL = `SIL;   12'd1523: toneL = `SIL;
        12'd1524: toneL = `SIL;   12'd1525: toneL = `SIL;
        12'd1526: toneL = `SIL;   12'd1527: toneL = `SIL;

        12'd1528: toneL = `SIL;   12'd1529: toneL = `SIL;
        12'd1530: toneL = `SIL;   12'd1531: toneL = `SIL;
        12'd1532: toneL = `SIL;   12'd1533: toneL = `SIL;
        12'd1534: toneL = `SIL;   12'd1535: toneL = `SIL;

        // Measure 25 //
        12'd1536: toneL = `Ef4;   12'd1537: toneL = `Ef4;
        12'd1538: toneL = `Ef4;   12'd1539: toneL = `Ef4;
        12'd1540: toneL = `Ef4;   12'd1541: toneL = `Ef4;
        12'd1542: toneL = `SIL;   12'd1543: toneL = `SIL;

        12'd1544: toneL = `Ef4;   12'd1545: toneL = `Ef4;
        12'd1546: toneL = `Ef4;   12'd1547: toneL = `Ef4;
        12'd1548: toneL = `Ef4;   12'd1549: toneL = `Ef4;
        12'd1550: toneL = `SIL;   12'd1551: toneL = `SIL;

        12'd1552: toneL = `SIL;   12'd1553: toneL = `SIL;
        12'd1554: toneL = `SIL;   12'd1555: toneL = `SIL;
        12'd1556: toneL = `SIL;   12'd1557: toneL = `SIL;
        12'd1558: toneL = `SIL;   12'd1559: toneL = `SIL;

        12'd1560: toneL = `SIL;   12'd1561: toneL = `SIL;
        12'd1562: toneL = `SIL;   12'd1563: toneL = `SIL;
        12'd1564: toneL = `SIL;   12'd1565: toneL = `SIL;
        12'd1566: toneL = `SIL;   12'd1567: toneL = `SIL;

        12'd1568: toneL = `G4;   12'd1569: toneL = `G4;
        12'd1570: toneL = `G4;   12'd1571: toneL = `G4;
        12'd1572: toneL = `G4;   12'd1573: toneL = `G4;
        12'd1574: toneL = `SIL;   12'd1575: toneL = `SIL;

        12'd1576: toneL = `G4;   12'd1577: toneL = `G4;
        12'd1578: toneL = `G4;   12'd1579: toneL = `G4;
        12'd1580: toneL = `G4;   12'd1581: toneL = `G4;
        12'd1582: toneL = `SIL;   12'd1583: toneL = `SIL;

        12'd1584: toneL = `SIL;   12'd1585: toneL = `SIL;
        12'd1586: toneL = `SIL;   12'd1587: toneL = `SIL;
        12'd1588: toneL = `SIL;   12'd1589: toneL = `SIL;
        12'd1590: toneL = `SIL;   12'd1591: toneL = `SIL;

        12'd1592: toneL = `SIL;   12'd1593: toneL = `SIL;
        12'd1594: toneL = `SIL;   12'd1595: toneL = `SIL;
        12'd1596: toneL = `SIL;   12'd1597: toneL = `SIL;
        12'd1598: toneL = `SIL;   12'd1599: toneL = `SIL;

        // Measure 26 //
        12'd1600: toneL = `Ef4;   12'd1601: toneL = `Ef4;
        12'd1602: toneL = `Ef4;   12'd1603: toneL = `Ef4;
        12'd1604: toneL = `Ef4;   12'd1605: toneL = `Ef4;
        12'd1606: toneL = `SIL;   12'd1607: toneL = `SIL;

        12'd1608: toneL = `Ef4;   12'd1609: toneL = `Ef4;
        12'd1610: toneL = `Ef4;   12'd1611: toneL = `Ef4;
        12'd1612: toneL = `Ef4;   12'd1613: toneL = `Ef4;
        12'd1614: toneL = `SIL;   12'd1615: toneL = `SIL;

        12'd1616: toneL = `SIL;   12'd1617: toneL = `SIL;
        12'd1618: toneL = `SIL;   12'd1619: toneL = `SIL;
        12'd1620: toneL = `SIL;   12'd1621: toneL = `SIL;
        12'd1622: toneL = `SIL;   12'd1623: toneL = `SIL;

        12'd1624: toneL = `SIL;   12'd1625: toneL = `SIL;
        12'd1626: toneL = `SIL;   12'd1627: toneL = `SIL;
        12'd1628: toneL = `SIL;   12'd1629: toneL = `SIL;
        12'd1630: toneL = `SIL;   12'd1631: toneL = `SIL;

        12'd1632: toneL = `C5;   12'd1633: toneL = `C5;
        12'd1634: toneL = `C5;   12'd1635: toneL = `C5;
        12'd1636: toneL = `C5;   12'd1637: toneL = `C5;
        12'd1638: toneL = `SIL;   12'd1639: toneL = `SIL;

        12'd1640: toneL = `C5;   12'd1641: toneL = `C5;
        12'd1642: toneL = `C5;   12'd1643: toneL = `C5;
        12'd1644: toneL = `C5;   12'd1645: toneL = `C5;
        12'd1646: toneL = `SIL;   12'd1647: toneL = `SIL;

        12'd1648: toneL = `SIL;   12'd1649: toneL = `SIL;
        12'd1650: toneL = `SIL;   12'd1651: toneL = `SIL;
        12'd1652: toneL = `SIL;   12'd1653: toneL = `SIL;
        12'd1654: toneL = `SIL;   12'd1655: toneL = `SIL;

        12'd1656: toneL = `SIL;   12'd1657: toneL = `SIL;
        12'd1658: toneL = `SIL;   12'd1659: toneL = `SIL;
        12'd1660: toneL = `SIL;   12'd1661: toneL = `SIL;
        12'd1662: toneL = `SIL;   12'd1663: toneL = `SIL;

        // Measure 27 //
        12'd1664: toneL = `Ef4;   12'd1665: toneL = `Ef4;
        12'd1666: toneL = `Ef4;   12'd1667: toneL = `Ef4;
        12'd1668: toneL = `Ef4;   12'd1669: toneL = `Ef4;
        12'd1670: toneL = `SIL;   12'd1671: toneL = `SIL;

        12'd1672: toneL = `Ef4;   12'd1673: toneL = `Ef4;
        12'd1674: toneL = `Ef4;   12'd1675: toneL = `Ef4;
        12'd1676: toneL = `Ef4;   12'd1677: toneL = `Ef4;
        12'd1678: toneL = `SIL;   12'd1679: toneL = `SIL;

        12'd1680: toneL = `SIL;   12'd1681: toneL = `SIL;
        12'd1682: toneL = `SIL;   12'd1683: toneL = `SIL;
        12'd1684: toneL = `SIL;   12'd1685: toneL = `SIL;
        12'd1686: toneL = `SIL;   12'd1687: toneL = `SIL;

        12'd1688: toneL = `SIL;   12'd1689: toneL = `SIL;
        12'd1690: toneL = `SIL;   12'd1691: toneL = `SIL;
        12'd1692: toneL = `SIL;   12'd1693: toneL = `SIL;
        12'd1694: toneL = `SIL;   12'd1695: toneL = `SIL;

        12'd1696: toneL = `G4;   12'd1697: toneL = `G4;
        12'd1698: toneL = `G4;   12'd1699: toneL = `G4;
        12'd1700: toneL = `G4;   12'd1701: toneL = `G4;
        12'd1702: toneL = `SIL;   12'd1703: toneL = `SIL;

        12'd1704: toneL = `G4;   12'd1705: toneL = `G4;
        12'd1706: toneL = `G4;   12'd1707: toneL = `G4;
        12'd1708: toneL = `G4;   12'd1709: toneL = `G4;
        12'd1710: toneL = `SIL;   12'd1711: toneL = `SIL;

        12'd1712: toneL = `SIL;   12'd1713: toneL = `SIL;
        12'd1714: toneL = `SIL;   12'd1715: toneL = `SIL;
        12'd1716: toneL = `SIL;   12'd1717: toneL = `SIL;
        12'd1718: toneL = `SIL;   12'd1719: toneL = `SIL;

        12'd1720: toneL = `SIL;   12'd1721: toneL = `SIL;
        12'd1722: toneL = `SIL;   12'd1723: toneL = `SIL;
        12'd1724: toneL = `SIL;   12'd1725: toneL = `SIL;
        12'd1726: toneL = `SIL;   12'd1727: toneL = `SIL;

        // Measure 28 //
        12'd1728: toneL = `Ef4;   12'd1729: toneL = `Ef4;
        12'd1730: toneL = `Ef4;   12'd1731: toneL = `Ef4;
        12'd1732: toneL = `Ef4;   12'd1733: toneL = `Ef4;
        12'd1734: toneL = `SIL;   12'd1735: toneL = `SIL;

        12'd1736: toneL = `Ef4;   12'd1737: toneL = `Ef4;
        12'd1738: toneL = `Ef4;   12'd1739: toneL = `Ef4;
        12'd1740: toneL = `Ef4;   12'd1741: toneL = `Ef4;
        12'd1742: toneL = `SIL;   12'd1743: toneL = `SIL;

        12'd1744: toneL = `SIL;   12'd1745: toneL = `SIL;
        12'd1746: toneL = `SIL;   12'd1747: toneL = `SIL;
        12'd1748: toneL = `SIL;   12'd1749: toneL = `SIL;
        12'd1750: toneL = `SIL;   12'd1751: toneL = `SIL;

        12'd1752: toneL = `SIL;   12'd1753: toneL = `SIL;
        12'd1754: toneL = `SIL;   12'd1755: toneL = `SIL;
        12'd1756: toneL = `SIL;   12'd1757: toneL = `SIL;
        12'd1758: toneL = `SIL;   12'd1759: toneL = `SIL;

        12'd1760: toneL = `C5;   12'd1761: toneL = `C5;
        12'd1762: toneL = `C5;   12'd1763: toneL = `C5;
        12'd1764: toneL = `C5;   12'd1765: toneL = `C5;
        12'd1766: toneL = `SIL;   12'd1767: toneL = `SIL;

        12'd1768: toneL = `C5;   12'd1769: toneL = `C5;
        12'd1770: toneL = `C5;   12'd1771: toneL = `C5;
        12'd1772: toneL = `C5;   12'd1773: toneL = `C5;
        12'd1774: toneL = `SIL;   12'd1775: toneL = `SIL;

        12'd1776: toneL = `SIL;   12'd1777: toneL = `SIL;
        12'd1778: toneL = `SIL;   12'd1779: toneL = `SIL;
        12'd1780: toneL = `SIL;   12'd1781: toneL = `SIL;
        12'd1782: toneL = `SIL;   12'd1783: toneL = `SIL;

        12'd1784: toneL = `SIL;   12'd1785: toneL = `SIL;
        12'd1786: toneL = `SIL;   12'd1787: toneL = `SIL;
        12'd1788: toneL = `SIL;   12'd1789: toneL = `SIL;
        12'd1790: toneL = `SIL;   12'd1791: toneL = `SIL;

        // Measure 29 //
        12'd1792: toneL = `D4;   12'd1793: toneL = `D4;
        12'd1794: toneL = `D4;   12'd1795: toneL = `D4;
        12'd1796: toneL = `D4;   12'd1797: toneL = `D4;
        12'd1798: toneL = `SIL;   12'd1799: toneL = `SIL;

        12'd1800: toneL = `D4;   12'd1801: toneL = `D4;
        12'd1802: toneL = `D4;   12'd1803: toneL = `D4;
        12'd1804: toneL = `D4;   12'd1805: toneL = `D4;
        12'd1806: toneL = `SIL;   12'd1807: toneL = `SIL;

        12'd1808: toneL = `SIL;   12'd1809: toneL = `SIL;
        12'd1810: toneL = `SIL;   12'd1811: toneL = `SIL;
        12'd1812: toneL = `SIL;   12'd1813: toneL = `SIL;
        12'd1814: toneL = `SIL;   12'd1815: toneL = `SIL;

        12'd1816: toneL = `SIL;   12'd1817: toneL = `SIL;
        12'd1818: toneL = `SIL;   12'd1819: toneL = `SIL;
        12'd1820: toneL = `SIL;   12'd1821: toneL = `SIL;
        12'd1822: toneL = `SIL;   12'd1823: toneL = `SIL;

        12'd1824: toneL = `A4;   12'd1825: toneL = `A4;
        12'd1826: toneL = `A4;   12'd1827: toneL = `A4;
        12'd1828: toneL = `A4;   12'd1829: toneL = `A4;
        12'd1830: toneL = `SIL;   12'd1831: toneL = `SIL;

        12'd1832: toneL = `A4;   12'd1833: toneL = `A4;
        12'd1834: toneL = `A4;   12'd1835: toneL = `A4;
        12'd1836: toneL = `A4;   12'd1837: toneL = `A4;
        12'd1838: toneL = `SIL;   12'd1839: toneL = `SIL;

        12'd1840: toneL = `SIL;   12'd1841: toneL = `SIL;
        12'd1842: toneL = `SIL;   12'd1843: toneL = `SIL;
        12'd1844: toneL = `SIL;   12'd1845: toneL = `SIL;
        12'd1846: toneL = `SIL;   12'd1847: toneL = `SIL;

        12'd1848: toneL = `SIL;   12'd1849: toneL = `SIL;
        12'd1850: toneL = `SIL;   12'd1851: toneL = `SIL;
        12'd1852: toneL = `SIL;   12'd1853: toneL = `SIL;
        12'd1854: toneL = `SIL;   12'd1855: toneL = `SIL;

        // Measure 30 //
        12'd1856: toneL = `D4;   12'd1857: toneL = `D4;
        12'd1858: toneL = `D4;   12'd1859: toneL = `D4;
        12'd1860: toneL = `D4;   12'd1861: toneL = `D4;
        12'd1862: toneL = `SIL;   12'd1863: toneL = `SIL;

        12'd1864: toneL = `D4;   12'd1865: toneL = `D4;
        12'd1866: toneL = `D4;   12'd1867: toneL = `D4;
        12'd1868: toneL = `D4;   12'd1869: toneL = `D4;
        12'd1870: toneL = `SIL;   12'd1871: toneL = `SIL;

        12'd1872: toneL = `SIL;   12'd1873: toneL = `SIL;
        12'd1874: toneL = `SIL;   12'd1875: toneL = `SIL;
        12'd1876: toneL = `SIL;   12'd1877: toneL = `SIL;
        12'd1878: toneL = `SIL;   12'd1879: toneL = `SIL;

        12'd1880: toneL = `SIL;   12'd1881: toneL = `SIL;
        12'd1882: toneL = `SIL;   12'd1883: toneL = `SIL;
        12'd1884: toneL = `SIL;   12'd1885: toneL = `SIL;
        12'd1886: toneL = `SIL;   12'd1887: toneL = `SIL;

        12'd1888: toneL = `B4;   12'd1889: toneL = `B4;
        12'd1890: toneL = `B4;   12'd1891: toneL = `B4;
        12'd1892: toneL = `B4;   12'd1893: toneL = `B4;
        12'd1894: toneL = `SIL;   12'd1895: toneL = `SIL;

        12'd1896: toneL = `B4;   12'd1897: toneL = `B4;
        12'd1898: toneL = `B4;   12'd1899: toneL = `B4;
        12'd1900: toneL = `B4;   12'd1901: toneL = `B4;
        12'd1902: toneL = `SIL;   12'd1903: toneL = `SIL;

        12'd1904: toneL = `SIL;   12'd1905: toneL = `SIL;
        12'd1906: toneL = `SIL;   12'd1907: toneL = `SIL;
        12'd1908: toneL = `SIL;   12'd1909: toneL = `SIL;
        12'd1910: toneL = `SIL;   12'd1911: toneL = `SIL;

        12'd1912: toneL = `SIL;   12'd1913: toneL = `SIL;
        12'd1914: toneL = `SIL;   12'd1915: toneL = `SIL;
        12'd1916: toneL = `SIL;   12'd1917: toneL = `SIL;
        12'd1918: toneL = `SIL;   12'd1919: toneL = `SIL;

        // Measure 31 //
        12'd1920: toneL = `E4;   12'd1921: toneL = `E4;
        12'd1922: toneL = `E4;   12'd1923: toneL = `E4;
        12'd1924: toneL = `E4;   12'd1925: toneL = `E4;
        12'd1926: toneL = `SIL;   12'd1927: toneL = `SIL;

        12'd1928: toneL = `E4;   12'd1929: toneL = `E4;
        12'd1930: toneL = `E4;   12'd1931: toneL = `E4;
        12'd1932: toneL = `E4;   12'd1933: toneL = `E4;
        12'd1934: toneL = `SIL;   12'd1935: toneL = `SIL;

        12'd1936: toneL = `SIL;   12'd1937: toneL = `SIL;
        12'd1938: toneL = `SIL;   12'd1939: toneL = `SIL;
        12'd1940: toneL = `SIL;   12'd1941: toneL = `SIL;
        12'd1942: toneL = `SIL;   12'd1943: toneL = `SIL;

        12'd1944: toneL = `SIL;   12'd1945: toneL = `SIL;
        12'd1946: toneL = `SIL;   12'd1947: toneL = `SIL;
        12'd1948: toneL = `SIL;   12'd1949: toneL = `SIL;
        12'd1950: toneL = `SIL;   12'd1951: toneL = `SIL;

        12'd1952: toneL = `B4;   12'd1953: toneL = `B4;
        12'd1954: toneL = `B4;   12'd1955: toneL = `B4;
        12'd1956: toneL = `B4;   12'd1957: toneL = `B4;
        12'd1958: toneL = `SIL;   12'd1959: toneL = `SIL;

        12'd1960: toneL = `B4;   12'd1961: toneL = `B4;
        12'd1962: toneL = `B4;   12'd1963: toneL = `B4;
        12'd1964: toneL = `B4;   12'd1965: toneL = `B4;
        12'd1966: toneL = `SIL;   12'd1967: toneL = `SIL;

        12'd1968: toneL = `SIL;   12'd1969: toneL = `SIL;
        12'd1970: toneL = `SIL;   12'd1971: toneL = `SIL;
        12'd1972: toneL = `SIL;   12'd1973: toneL = `SIL;
        12'd1974: toneL = `SIL;   12'd1975: toneL = `SIL;

        12'd1976: toneL = `SIL;   12'd1977: toneL = `SIL;
        12'd1978: toneL = `SIL;   12'd1979: toneL = `SIL;
        12'd1980: toneL = `SIL;   12'd1981: toneL = `SIL;
        12'd1982: toneL = `SIL;   12'd1983: toneL = `SIL;

        // Measure 32 //
        12'd1984: toneL = `E4;   12'd1985: toneL = `E4;
        12'd1986: toneL = `E4;   12'd1987: toneL = `E4;
        12'd1988: toneL = `E4;   12'd1989: toneL = `E4;
        12'd1990: toneL = `SIL;   12'd1991: toneL = `SIL;

        12'd1992: toneL = `E4;   12'd1993: toneL = `E4;
        12'd1994: toneL = `E4;   12'd1995: toneL = `E4;
        12'd1996: toneL = `E4;   12'd1997: toneL = `E4;
        12'd1998: toneL = `SIL;   12'd1999: toneL = `SIL;

        12'd2000: toneL = `SIL;   12'd2001: toneL = `SIL;
        12'd2002: toneL = `SIL;   12'd2003: toneL = `SIL;
        12'd2004: toneL = `SIL;   12'd2005: toneL = `SIL;
        12'd2006: toneL = `SIL;   12'd2007: toneL = `SIL;

        12'd2008: toneL = `SIL;   12'd2009: toneL = `SIL;
        12'd2010: toneL = `SIL;   12'd2011: toneL = `SIL;
        12'd2012: toneL = `SIL;   12'd2013: toneL = `SIL;
        12'd2014: toneL = `SIL;   12'd2015: toneL = `SIL;

        12'd2016: toneL = `B4;   12'd2017: toneL = `B4;
        12'd2018: toneL = `B4;   12'd2019: toneL = `B4;
        12'd2020: toneL = `B4;   12'd2021: toneL = `B4;
        12'd2022: toneL = `SIL;   12'd2023: toneL = `SIL;

        12'd2024: toneL = `B4;   12'd2025: toneL = `B4;
        12'd2026: toneL = `B4;   12'd2027: toneL = `B4;
        12'd2028: toneL = `B4;   12'd2029: toneL = `B4;
        12'd2030: toneL = `SIL;   12'd2031: toneL = `SIL;

        12'd2032: toneL = `SIL;   12'd2033: toneL = `SIL;
        12'd2034: toneL = `SIL;   12'd2035: toneL = `SIL;
        12'd2036: toneL = `SIL;   12'd2037: toneL = `SIL;
        12'd2038: toneL = `SIL;   12'd2039: toneL = `SIL;

        12'd2040: toneL = `SIL;   12'd2041: toneL = `SIL;
        12'd2042: toneL = `SIL;   12'd2043: toneL = `SIL;
        12'd2044: toneL = `SIL;   12'd2045: toneL = `SIL;
        12'd2046: toneL = `SIL;   12'd2047: toneL = `SIL;

        // Measure 33 //
        12'd2048: toneL = `Gf4;   12'd2049: toneL = `Gf4;
        12'd2050: toneL = `Gf4;   12'd2051: toneL = `Gf4;
        12'd2052: toneL = `Gf4;   12'd2053: toneL = `Gf4;
        12'd2054: toneL = `SIL;   12'd2055: toneL = `SIL;

        12'd2056: toneL = `Gf4;   12'd2057: toneL = `Gf4;
        12'd2058: toneL = `Gf4;   12'd2059: toneL = `Gf4;
        12'd2060: toneL = `Gf4;   12'd2061: toneL = `Gf4;
        12'd2062: toneL = `SIL;   12'd2063: toneL = `SIL;

        12'd2064: toneL = `SIL;   12'd2065: toneL = `SIL;
        12'd2066: toneL = `SIL;   12'd2067: toneL = `SIL;
        12'd2068: toneL = `SIL;   12'd2069: toneL = `SIL;
        12'd2070: toneL = `SIL;   12'd2071: toneL = `SIL;

        12'd2072: toneL = `SIL;   12'd2073: toneL = `SIL;
        12'd2074: toneL = `SIL;   12'd2075: toneL = `SIL;
        12'd2076: toneL = `SIL;   12'd2077: toneL = `SIL;
        12'd2078: toneL = `SIL;   12'd2079: toneL = `SIL;

        12'd2080: toneL = `Df5;   12'd2081: toneL = `Df5;
        12'd2082: toneL = `Df5;   12'd2083: toneL = `Df5;
        12'd2084: toneL = `Df5;   12'd2085: toneL = `Df5;
        12'd2086: toneL = `SIL;   12'd2087: toneL = `SIL;

        12'd2088: toneL = `Df5;   12'd2089: toneL = `Df5;
        12'd2090: toneL = `Df5;   12'd2091: toneL = `Df5;
        12'd2092: toneL = `Df5;   12'd2093: toneL = `Df5;
        12'd2094: toneL = `SIL;   12'd2095: toneL = `SIL;

        12'd2096: toneL = `SIL;   12'd2097: toneL = `SIL;
        12'd2098: toneL = `SIL;   12'd2099: toneL = `SIL;
        12'd2100: toneL = `SIL;   12'd2101: toneL = `SIL;
        12'd2102: toneL = `SIL;   12'd2103: toneL = `SIL;

        12'd2104: toneL = `SIL;   12'd2105: toneL = `SIL;
        12'd2106: toneL = `SIL;   12'd2107: toneL = `SIL;
        12'd2108: toneL = `SIL;   12'd2109: toneL = `SIL;
        12'd2110: toneL = `SIL;   12'd2111: toneL = `SIL;

        // Measure 34 //
        12'd2112: toneL = `Gf4;   12'd2113: toneL = `Gf4;
        12'd2114: toneL = `Gf4;   12'd2115: toneL = `Gf4;
        12'd2116: toneL = `Gf4;   12'd2117: toneL = `Gf4;
        12'd2118: toneL = `SIL;   12'd2119: toneL = `SIL;

        12'd2120: toneL = `Gf4;   12'd2121: toneL = `Gf4;
        12'd2122: toneL = `Gf4;   12'd2123: toneL = `Gf4;
        12'd2124: toneL = `Gf4;   12'd2125: toneL = `Gf4;
        12'd2126: toneL = `SIL;   12'd2127: toneL = `SIL;

        12'd2128: toneL = `SIL;   12'd2129: toneL = `SIL;
        12'd2130: toneL = `SIL;   12'd2131: toneL = `SIL;
        12'd2132: toneL = `SIL;   12'd2133: toneL = `SIL;
        12'd2134: toneL = `SIL;   12'd2135: toneL = `SIL;

        12'd2136: toneL = `SIL;   12'd2137: toneL = `SIL;
        12'd2138: toneL = `SIL;   12'd2139: toneL = `SIL;
        12'd2140: toneL = `SIL;   12'd2141: toneL = `SIL;
        12'd2142: toneL = `SIL;   12'd2143: toneL = `SIL;

        12'd2144: toneL = `B4;   12'd2145: toneL = `B4;
        12'd2146: toneL = `B4;   12'd2147: toneL = `B4;
        12'd2148: toneL = `B4;   12'd2149: toneL = `B4;
        12'd2150: toneL = `SIL;   12'd2151: toneL = `SIL;

        12'd2152: toneL = `B4;   12'd2153: toneL = `B4;
        12'd2154: toneL = `B4;   12'd2155: toneL = `B4;
        12'd2156: toneL = `B4;   12'd2157: toneL = `B4;
        12'd2158: toneL = `SIL;   12'd2159: toneL = `SIL;

        12'd2160: toneL = `Af4;   12'd2161: toneL = `Af4;
        12'd2162: toneL = `Af4;   12'd2163: toneL = `Af4;
        12'd2164: toneL = `Af4;   12'd2165: toneL = `Af4;
        12'd2166: toneL = `SIL;   12'd2167: toneL = `SIL;

        12'd2168: toneL = `Af4;   12'd2169: toneL = `Af4;
        12'd2170: toneL = `Af4;   12'd2171: toneL = `Af4;
        12'd2172: toneL = `Af4;   12'd2173: toneL = `Af4;
        12'd2174: toneL = `SIL;   12'd2175: toneL = `SIL;

        // Measure 35 //
        12'd2176: toneL = `Bf4;   12'd2177: toneL = `Bf4;
        12'd2178: toneL = `Bf4;   12'd2179: toneL = `Bf4;
        12'd2180: toneL = `Bf4;   12'd2181: toneL = `Bf4;
        12'd2182: toneL = `SIL;   12'd2183: toneL = `SIL;

        12'd2184: toneL = `Bf4;   12'd2185: toneL = `Bf4;
        12'd2186: toneL = `Bf4;   12'd2187: toneL = `Bf4;
        12'd2188: toneL = `Bf4;   12'd2189: toneL = `Bf4;
        12'd2190: toneL = `SIL;   12'd2191: toneL = `SIL;

        12'd2192: toneL = `Bf4;   12'd2193: toneL = `Bf4;
        12'd2194: toneL = `Bf4;   12'd2195: toneL = `Bf4;
        12'd2196: toneL = `Bf4;   12'd2197: toneL = `Bf4;
        12'd2198: toneL = `SIL;   12'd2199: toneL = `SIL;

        12'd2200: toneL = `Bf4;   12'd2201: toneL = `Bf4;
        12'd2202: toneL = `Bf4;   12'd2203: toneL = `Bf4;
        12'd2204: toneL = `Bf4;   12'd2205: toneL = `Bf4;
        12'd2206: toneL = `SIL;   12'd2207: toneL = `SIL;

        12'd2208: toneL = `Bf4;   12'd2209: toneL = `Bf4;
        12'd2210: toneL = `Bf4;   12'd2211: toneL = `Bf4;
        12'd2212: toneL = `Bf4;   12'd2213: toneL = `Bf4;
        12'd2214: toneL = `SIL;   12'd2215: toneL = `SIL;

        12'd2216: toneL = `Bf4;   12'd2217: toneL = `Bf4;
        12'd2218: toneL = `Bf4;   12'd2219: toneL = `Bf4;
        12'd2220: toneL = `Bf4;   12'd2221: toneL = `Bf4;
        12'd2222: toneL = `SIL;   12'd2223: toneL = `SIL;

        12'd2224: toneL = `SIL;   12'd2225: toneL = `SIL;
        12'd2226: toneL = `SIL;   12'd2227: toneL = `SIL;
        12'd2228: toneL = `SIL;   12'd2229: toneL = `SIL;
        12'd2230: toneL = `SIL;   12'd2231: toneL = `SIL;

        12'd2232: toneL = `SIL;   12'd2233: toneL = `SIL;
        12'd2234: toneL = `SIL;   12'd2235: toneL = `SIL;
        12'd2236: toneL = `SIL;   12'd2237: toneL = `SIL;
        12'd2238: toneL = `SIL;   12'd2239: toneL = `SIL;

        default : toneL = `SIL;
        endcase
    end else begin
        toneL = `SIL;
    end
end
endmodule