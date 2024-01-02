`define SIL   26'd50000000

`define C1 26'd33
`define Cs1 26'd35
`define D1 26'd37
`define Ds1 26'd39
`define E1 26'd41
`define F1 26'd44
`define Fs1 26'd46
`define G1 26'd49
`define Gs1 26'd52
`define A1 26'd55
`define As1 26'd58
`define B1 26'd62
`define C2 26'd65
`define Cs2 26'd69
`define D2 26'd73
`define Ds2 26'd78
`define E2 26'd82
`define F2 26'd87
`define Fs2 26'd92
`define G2 26'd98
`define Gs2 26'd104
`define A2 26'd110
`define As2 26'd117
`define B2 26'd123
`define C3 26'd131
`define Cs3 26'd139
`define D3 26'd147
`define Ds3 26'd156
`define E3 26'd165
`define F3 26'd175
`define Fs3 26'd185
`define G3 26'd196
`define Gs3 26'd208
`define A3 26'd220
`define As3 26'd233
`define B3 26'd247
`define C4 26'd262
`define Cs4 26'd277
`define D4 26'd294
`define Ds4 26'd311
`define E4 26'd330
`define F4 26'd349
`define Fs4 26'd370
`define G4 26'd392
`define Gs4 26'd415
`define A4 26'd440
`define As4 26'd466
`define B4 26'd494
`define C5 26'd523
`define Cs5 26'd554
`define D5 26'd587
`define Ds5 26'd622
`define E5 26'd659
`define F5 26'd698
`define Fs5 26'd740
`define G5 26'd784
`define Gs5 26'd831
`define A5 26'd880
`define As5 26'd932
`define B5 26'd988
`define C6 26'd1047
`define Cs6 26'd1109
`define D6 26'd1175
`define Ds6 26'd1245
`define E6 26'd1319
`define F6 26'd1397
`define Fs6 26'd1480
`define G6 26'd1568
`define Gs6 26'd1661
`define A6 26'd1760
`define As6 26'd1864
`define B6 26'd1975
`define C7 26'd2093
`define Cs7 26'd2217
`define D7 26'd2349
`define Ds7 26'd2489
`define E7 26'd2637
`define F7 26'd2794
`define Fs7 26'd2960
`define G7 26'd3136
`define Gs7 26'd3322
`define A7 26'd3520
`define As7 26'd3729
`define B7 26'd3951


module help_bgm(
    input clk,
    input rst,
	input en,
	output reg [31:0] toneL,
    output reg [31:0] toneR
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
        12'd0: toneR = `SIL;   12'd1: toneR = `SIL;
        12'd2: toneR = `SIL;   12'd3: toneR = `SIL;
        12'd4: toneR = `SIL;   12'd5: toneR = `SIL;
        12'd6: toneR = `SIL;   12'd7: toneR = `SIL;

        12'd8: toneR = `SIL;   12'd9: toneR = `SIL;
        12'd10: toneR = `SIL;   12'd11: toneR = `SIL;
        12'd12: toneR = `SIL;   12'd13: toneR = `SIL;
        12'd14: toneR = `SIL;   12'd15: toneR = `SIL;

        12'd16: toneR = `SIL;   12'd17: toneR = `SIL;
        12'd18: toneR = `SIL;   12'd19: toneR = `SIL;
        12'd20: toneR = `SIL;   12'd21: toneR = `SIL;
        12'd22: toneR = `SIL;   12'd23: toneR = `SIL;

        12'd24: toneR = `SIL;   12'd25: toneR = `SIL;
        12'd26: toneR = `SIL;   12'd27: toneR = `SIL;
        12'd28: toneR = `SIL;   12'd29: toneR = `SIL;
        12'd30: toneR = `SIL;   12'd31: toneR = `SIL;

        12'd32: toneR = `G5;   12'd33: toneR = `G5;
        12'd34: toneR = `G5;   12'd35: toneR = `G5;
        12'd36: toneR = `G5;   12'd37: toneR = `G5;
        12'd38: toneR = `G5;   12'd39: toneR = `G5;

        12'd40: toneR = `G5;   12'd41: toneR = `G5;
        12'd42: toneR = `G5;   12'd43: toneR = `G5;
        12'd44: toneR = `G5;   12'd45: toneR = `G5;
        12'd46: toneR = `G5;   12'd47: toneR = `G5;

        12'd48: toneR = `E5;   12'd49: toneR = `E5;
        12'd50: toneR = `E5;   12'd51: toneR = `E5;
        12'd52: toneR = `E5;   12'd53: toneR = `E5;
        12'd54: toneR = `E5;   12'd55: toneR = `E5;

        12'd56: toneR = `E5;   12'd57: toneR = `E5;
        12'd58: toneR = `E5;   12'd59: toneR = `E5;
        12'd60: toneR = `E5;   12'd61: toneR = `E5;
        12'd62: toneR = `E5;   12'd63: toneR = `E5;

        // Measure 2 //
        12'd64: toneR = `D5;   12'd65: toneR = `D5;
        12'd66: toneR = `D5;   12'd67: toneR = `D5;
        12'd68: toneR = `D5;   12'd69: toneR = `D5;
        12'd70: toneR = `D5;   12'd71: toneR = `D5;

        12'd72: toneR = `D5;   12'd73: toneR = `D5;
        12'd74: toneR = `D5;   12'd75: toneR = `D5;
        12'd76: toneR = `D5;   12'd77: toneR = `D5;
        12'd78: toneR = `D5;   12'd79: toneR = `D5;

        12'd80: toneR = `D5;   12'd81: toneR = `D5;
        12'd82: toneR = `D5;   12'd83: toneR = `D5;
        12'd84: toneR = `D5;   12'd85: toneR = `D5;
        12'd86: toneR = `D5;   12'd87: toneR = `D5;

        12'd88: toneR = `G5;   12'd89: toneR = `G5;
        12'd90: toneR = `G5;   12'd91: toneR = `G5;
        12'd92: toneR = `G5;   12'd93: toneR = `G5;
        12'd94: toneR = `G5;   12'd95: toneR = `G5;

        12'd96: toneR = `G5;   12'd97: toneR = `G5;
        12'd98: toneR = `G5;   12'd99: toneR = `G5;
        12'd100: toneR = `G5;   12'd101: toneR = `G5;
        12'd102: toneR = `G5;   12'd103: toneR = `G5;

        12'd104: toneR = `G5;   12'd105: toneR = `G5;
        12'd106: toneR = `G5;   12'd107: toneR = `G5;
        12'd108: toneR = `G5;   12'd109: toneR = `G5;
        12'd110: toneR = `G5;   12'd111: toneR = `G5;

        12'd112: toneR = `E5;   12'd113: toneR = `E5;
        12'd114: toneR = `E5;   12'd115: toneR = `E5;
        12'd116: toneR = `E5;   12'd117: toneR = `E5;
        12'd118: toneR = `E5;   12'd119: toneR = `E5;

        12'd120: toneR = `E5;   12'd121: toneR = `E5;
        12'd122: toneR = `E5;   12'd123: toneR = `E5;
        12'd124: toneR = `E5;   12'd125: toneR = `E5;
        12'd126: toneR = `E5;   12'd127: toneR = `E5;

        // Measure 3 //
        12'd128: toneR = `D5;   12'd129: toneR = `D5;
        12'd130: toneR = `D5;   12'd131: toneR = `D5;
        12'd132: toneR = `D5;   12'd133: toneR = `D5;
        12'd134: toneR = `D5;   12'd135: toneR = `D5;

        12'd136: toneR = `D5;   12'd137: toneR = `D5;
        12'd138: toneR = `D5;   12'd139: toneR = `D5;
        12'd140: toneR = `D5;   12'd141: toneR = `D5;
        12'd142: toneR = `D5;   12'd143: toneR = `D5;

        12'd144: toneR = `D5;   12'd145: toneR = `D5;
        12'd146: toneR = `D5;   12'd147: toneR = `D5;
        12'd148: toneR = `D5;   12'd149: toneR = `D5;
        12'd150: toneR = `D5;   12'd151: toneR = `D5;

        12'd152: toneR = `G5;   12'd153: toneR = `G5;
        12'd154: toneR = `G5;   12'd155: toneR = `G5;
        12'd156: toneR = `G5;   12'd157: toneR = `G5;
        12'd158: toneR = `G5;   12'd159: toneR = `G5;

        12'd160: toneR = `G5;   12'd161: toneR = `G5;
        12'd162: toneR = `G5;   12'd163: toneR = `G5;
        12'd164: toneR = `G5;   12'd165: toneR = `G5;
        12'd166: toneR = `G5;   12'd167: toneR = `G5;

        12'd168: toneR = `G5;   12'd169: toneR = `G5;
        12'd170: toneR = `G5;   12'd171: toneR = `G5;
        12'd172: toneR = `G5;   12'd173: toneR = `G5;
        12'd174: toneR = `G5;   12'd175: toneR = `G5;

        12'd176: toneR = `E5;   12'd177: toneR = `E5;
        12'd178: toneR = `E5;   12'd179: toneR = `E5;
        12'd180: toneR = `E5;   12'd181: toneR = `E5;
        12'd182: toneR = `E5;   12'd183: toneR = `E5;

        12'd184: toneR = `E5;   12'd185: toneR = `E5;
        12'd186: toneR = `E5;   12'd187: toneR = `E5;
        12'd188: toneR = `E5;   12'd189: toneR = `E5;
        12'd190: toneR = `E5;   12'd191: toneR = `E5;

        // Measure 4 //
        12'd192: toneR = `C5;   12'd193: toneR = `C5;
        12'd194: toneR = `C5;   12'd195: toneR = `C5;
        12'd196: toneR = `C5;   12'd197: toneR = `C5;
        12'd198: toneR = `C5;   12'd199: toneR = `C5;

        12'd200: toneR = `C5;   12'd201: toneR = `C5;
        12'd202: toneR = `C5;   12'd203: toneR = `C5;
        12'd204: toneR = `C5;   12'd205: toneR = `C5;
        12'd206: toneR = `C5;   12'd207: toneR = `C5;

        12'd208: toneR = `C5;   12'd209: toneR = `C5;
        12'd210: toneR = `C5;   12'd211: toneR = `C5;
        12'd212: toneR = `C5;   12'd213: toneR = `C5;
        12'd214: toneR = `C5;   12'd215: toneR = `C5;

        12'd216: toneR = `C5;   12'd217: toneR = `C5;
        12'd218: toneR = `C5;   12'd219: toneR = `C5;
        12'd220: toneR = `C5;   12'd221: toneR = `C5;
        12'd222: toneR = `C5;   12'd223: toneR = `C5;

        12'd224: toneR = `C5;   12'd225: toneR = `C5;
        12'd226: toneR = `C5;   12'd227: toneR = `C5;
        12'd228: toneR = `C5;   12'd229: toneR = `C5;
        12'd230: toneR = `C5;   12'd231: toneR = `C5;

        12'd232: toneR = `C5;   12'd233: toneR = `C5;
        12'd234: toneR = `C5;   12'd235: toneR = `C5;
        12'd236: toneR = `C5;   12'd237: toneR = `C5;
        12'd238: toneR = `C5;   12'd239: toneR = `C5;

        12'd240: toneR = `SIL;   12'd241: toneR = `SIL;
        12'd242: toneR = `SIL;   12'd243: toneR = `SIL;
        12'd244: toneR = `SIL;   12'd245: toneR = `SIL;
        12'd246: toneR = `SIL;   12'd247: toneR = `SIL;

        12'd248: toneR = `SIL;   12'd249: toneR = `SIL;
        12'd250: toneR = `SIL;   12'd251: toneR = `SIL;
        12'd252: toneR = `SIL;   12'd253: toneR = `SIL;
        12'd254: toneR = `SIL;   12'd255: toneR = `SIL;

        // Measure 5 //
        12'd256: toneR = `SIL;   12'd257: toneR = `SIL;
        12'd258: toneR = `SIL;   12'd259: toneR = `SIL;
        12'd260: toneR = `SIL;   12'd261: toneR = `SIL;
        12'd262: toneR = `SIL;   12'd263: toneR = `SIL;

        12'd264: toneR = `SIL;   12'd265: toneR = `SIL;
        12'd266: toneR = `SIL;   12'd267: toneR = `SIL;
        12'd268: toneR = `SIL;   12'd269: toneR = `SIL;
        12'd270: toneR = `SIL;   12'd271: toneR = `SIL;

        12'd272: toneR = `G4;   12'd273: toneR = `G4;
        12'd274: toneR = `G4;   12'd275: toneR = `G4;
        12'd276: toneR = `G4;   12'd277: toneR = `G4;
        12'd278: toneR = `G4;   12'd279: toneR = `G4;

        12'd280: toneR = `G4;   12'd281: toneR = `G4;
        12'd282: toneR = `G4;   12'd283: toneR = `G4;
        12'd284: toneR = `G4;   12'd285: toneR = `G4;
        12'd286: toneR = `G4;   12'd287: toneR = `G4;

        12'd288: toneR = `A4;   12'd289: toneR = `A4;
        12'd290: toneR = `A4;   12'd291: toneR = `A4;
        12'd292: toneR = `A4;   12'd293: toneR = `A4;
        12'd294: toneR = `A4;   12'd295: toneR = `A4;

        12'd296: toneR = `A4;   12'd297: toneR = `A4;
        12'd298: toneR = `A4;   12'd299: toneR = `A4;
        12'd300: toneR = `A4;   12'd301: toneR = `A4;
        12'd302: toneR = `A4;   12'd303: toneR = `A4;

        12'd304: toneR = `E5;   12'd305: toneR = `E5;
        12'd306: toneR = `E5;   12'd307: toneR = `E5;
        12'd308: toneR = `E5;   12'd309: toneR = `E5;
        12'd310: toneR = `E5;   12'd311: toneR = `E5;

        12'd312: toneR = `E5;   12'd313: toneR = `E5;
        12'd314: toneR = `E5;   12'd315: toneR = `E5;
        12'd316: toneR = `E5;   12'd317: toneR = `E5;
        12'd318: toneR = `E5;   12'd319: toneR = `E5;

        // Measure 6 //
        12'd320: toneR = `D5;   12'd321: toneR = `D5;
        12'd322: toneR = `D5;   12'd323: toneR = `D5;
        12'd324: toneR = `D5;   12'd325: toneR = `D5;
        12'd326: toneR = `D5;   12'd327: toneR = `D5;

        12'd328: toneR = `D5;   12'd329: toneR = `D5;
        12'd330: toneR = `D5;   12'd331: toneR = `D5;
        12'd332: toneR = `D5;   12'd333: toneR = `D5;
        12'd334: toneR = `D5;   12'd335: toneR = `D5;

        12'd336: toneR = `D5;   12'd337: toneR = `D5;
        12'd338: toneR = `D5;   12'd339: toneR = `D5;
        12'd340: toneR = `D5;   12'd341: toneR = `D5;
        12'd342: toneR = `D5;   12'd343: toneR = `D5;

        12'd344: toneR = `D5;   12'd345: toneR = `D5;
        12'd346: toneR = `D5;   12'd347: toneR = `D5;
        12'd348: toneR = `D5;   12'd349: toneR = `D5;
        12'd350: toneR = `D5;   12'd351: toneR = `D5;

        12'd352: toneR = `D5;   12'd353: toneR = `D5;
        12'd354: toneR = `D5;   12'd355: toneR = `D5;
        12'd356: toneR = `D5;   12'd357: toneR = `D5;
        12'd358: toneR = `D5;   12'd359: toneR = `D5;

        12'd360: toneR = `D5;   12'd361: toneR = `D5;
        12'd362: toneR = `D5;   12'd363: toneR = `D5;
        12'd364: toneR = `D5;   12'd365: toneR = `D5;
        12'd366: toneR = `D5;   12'd367: toneR = `D5;

        12'd368: toneR = `C5;   12'd369: toneR = `C5;
        12'd370: toneR = `C5;   12'd371: toneR = `C5;
        12'd372: toneR = `C5;   12'd373: toneR = `C5;
        12'd374: toneR = `C5;   12'd375: toneR = `C5;

        12'd376: toneR = `C5;   12'd377: toneR = `C5;
        12'd378: toneR = `C5;   12'd379: toneR = `C5;
        12'd380: toneR = `C5;   12'd381: toneR = `C5;
        12'd382: toneR = `C5;   12'd383: toneR = `C5;

        // Measure 7 //
        12'd384: toneR = `D5;   12'd385: toneR = `D5;
        12'd386: toneR = `D5;   12'd387: toneR = `D5;
        12'd388: toneR = `D5;   12'd389: toneR = `D5;
        12'd390: toneR = `D5;   12'd391: toneR = `D5;

        12'd392: toneR = `D5;   12'd393: toneR = `D5;
        12'd394: toneR = `D5;   12'd395: toneR = `D5;
        12'd396: toneR = `D5;   12'd397: toneR = `D5;
        12'd398: toneR = `D5;   12'd399: toneR = `D5;

        12'd400: toneR = `D5;   12'd401: toneR = `D5;
        12'd402: toneR = `D5;   12'd403: toneR = `D5;
        12'd404: toneR = `D5;   12'd405: toneR = `D5;
        12'd406: toneR = `D5;   12'd407: toneR = `D5;

        12'd408: toneR = `C5;   12'd409: toneR = `C5;
        12'd410: toneR = `C5;   12'd411: toneR = `C5;
        12'd412: toneR = `C5;   12'd413: toneR = `C5;
        12'd414: toneR = `C5;   12'd415: toneR = `C5;

        12'd416: toneR = `C5;   12'd417: toneR = `C5;
        12'd418: toneR = `C5;   12'd419: toneR = `C5;
        12'd420: toneR = `C5;   12'd421: toneR = `C5;
        12'd422: toneR = `C5;   12'd423: toneR = `C5;

        12'd424: toneR = `C5;   12'd425: toneR = `C5;
        12'd426: toneR = `C5;   12'd427: toneR = `C5;
        12'd428: toneR = `C5;   12'd429: toneR = `C5;
        12'd430: toneR = `C5;   12'd431: toneR = `C5;

        12'd432: toneR = `G5;   12'd433: toneR = `G5;
        12'd434: toneR = `G5;   12'd435: toneR = `G5;
        12'd436: toneR = `G5;   12'd437: toneR = `G5;
        12'd438: toneR = `G5;   12'd439: toneR = `G5;

        12'd440: toneR = `G5;   12'd441: toneR = `G5;
        12'd442: toneR = `G5;   12'd443: toneR = `G5;
        12'd444: toneR = `G5;   12'd445: toneR = `G5;
        12'd446: toneR = `G5;   12'd447: toneR = `G5;

        // Measure 8 //
        12'd448: toneR = `E5;   12'd449: toneR = `E5;
        12'd450: toneR = `E5;   12'd451: toneR = `E5;
        12'd452: toneR = `E5;   12'd453: toneR = `E5;
        12'd454: toneR = `E5;   12'd455: toneR = `E5;

        12'd456: toneR = `E5;   12'd457: toneR = `E5;
        12'd458: toneR = `E5;   12'd459: toneR = `E5;
        12'd460: toneR = `E5;   12'd461: toneR = `E5;
        12'd462: toneR = `E5;   12'd463: toneR = `E5;

        12'd464: toneR = `E5;   12'd465: toneR = `E5;
        12'd466: toneR = `E5;   12'd467: toneR = `E5;
        12'd468: toneR = `E5;   12'd469: toneR = `E5;
        12'd470: toneR = `E5;   12'd471: toneR = `E5;

        12'd472: toneR = `E5;   12'd473: toneR = `E5;
        12'd474: toneR = `E5;   12'd475: toneR = `E5;
        12'd476: toneR = `E5;   12'd477: toneR = `E5;
        12'd478: toneR = `E5;   12'd479: toneR = `E5;

        12'd480: toneR = `E5;   12'd481: toneR = `E5;
        12'd482: toneR = `E5;   12'd483: toneR = `E5;
        12'd484: toneR = `E5;   12'd485: toneR = `E5;
        12'd486: toneR = `E5;   12'd487: toneR = `E5;

        12'd488: toneR = `E5;   12'd489: toneR = `E5;
        12'd490: toneR = `E5;   12'd491: toneR = `E5;
        12'd492: toneR = `E5;   12'd493: toneR = `E5;
        12'd494: toneR = `E5;   12'd495: toneR = `E5;

        12'd496: toneR = `E5;   12'd497: toneR = `E5;
        12'd498: toneR = `E5;   12'd499: toneR = `E5;
        12'd500: toneR = `E5;   12'd501: toneR = `E5;
        12'd502: toneR = `E5;   12'd503: toneR = `E5;

        12'd504: toneR = `E5;   12'd505: toneR = `E5;
        12'd506: toneR = `E5;   12'd507: toneR = `E5;
        12'd508: toneR = `E5;   12'd509: toneR = `E5;
        12'd510: toneR = `E5;   12'd511: toneR = `E5;

        // Measure 9 //
        12'd512: toneR = `SIL;   12'd513: toneR = `SIL;
        12'd514: toneR = `SIL;   12'd515: toneR = `SIL;
        12'd516: toneR = `SIL;   12'd517: toneR = `SIL;
        12'd518: toneR = `SIL;   12'd519: toneR = `SIL;

        12'd520: toneR = `SIL;   12'd521: toneR = `SIL;
        12'd522: toneR = `SIL;   12'd523: toneR = `SIL;
        12'd524: toneR = `SIL;   12'd525: toneR = `SIL;
        12'd526: toneR = `SIL;   12'd527: toneR = `SIL;

        12'd528: toneR = `SIL;   12'd529: toneR = `SIL;
        12'd530: toneR = `SIL;   12'd531: toneR = `SIL;
        12'd532: toneR = `SIL;   12'd533: toneR = `SIL;
        12'd534: toneR = `SIL;   12'd535: toneR = `SIL;

        12'd536: toneR = `SIL;   12'd537: toneR = `SIL;
        12'd538: toneR = `SIL;   12'd539: toneR = `SIL;
        12'd540: toneR = `SIL;   12'd541: toneR = `SIL;
        12'd542: toneR = `SIL;   12'd543: toneR = `SIL;

        12'd544: toneR = `E4;   12'd545: toneR = `E4;
        12'd546: toneR = `E4;   12'd547: toneR = `E4;
        12'd548: toneR = `E4;   12'd549: toneR = `E4;
        12'd550: toneR = `E4;   12'd551: toneR = `E4;

        12'd552: toneR = `E4;   12'd553: toneR = `E4;
        12'd554: toneR = `E4;   12'd555: toneR = `E4;
        12'd556: toneR = `E4;   12'd557: toneR = `E4;
        12'd558: toneR = `E4;   12'd559: toneR = `E4;

        12'd560: toneR = `G4;   12'd561: toneR = `G4;
        12'd562: toneR = `G4;   12'd563: toneR = `G4;
        12'd564: toneR = `G4;   12'd565: toneR = `G4;
        12'd566: toneR = `G4;   12'd567: toneR = `G4;

        12'd568: toneR = `G4;   12'd569: toneR = `G4;
        12'd570: toneR = `G4;   12'd571: toneR = `G4;
        12'd572: toneR = `G4;   12'd573: toneR = `G4;
        12'd574: toneR = `G4;   12'd575: toneR = `G4;

        // Measure 10 //
        12'd576: toneR = `A4;   12'd577: toneR = `A4;
        12'd578: toneR = `A4;   12'd579: toneR = `A4;
        12'd580: toneR = `A4;   12'd581: toneR = `A4;
        12'd582: toneR = `A4;   12'd583: toneR = `A4;

        12'd584: toneR = `A4;   12'd585: toneR = `A4;
        12'd586: toneR = `A4;   12'd587: toneR = `A4;
        12'd588: toneR = `A4;   12'd589: toneR = `A4;
        12'd590: toneR = `A4;   12'd591: toneR = `A4;

        12'd592: toneR = `A4;   12'd593: toneR = `A4;
        12'd594: toneR = `A4;   12'd595: toneR = `A4;
        12'd596: toneR = `A4;   12'd597: toneR = `A4;
        12'd598: toneR = `A4;   12'd599: toneR = `A4;

        12'd600: toneR = `G4;   12'd601: toneR = `G4;
        12'd602: toneR = `G4;   12'd603: toneR = `G4;
        12'd604: toneR = `G4;   12'd605: toneR = `G4;
        12'd606: toneR = `G4;   12'd607: toneR = `G4;

        12'd608: toneR = `G4;   12'd609: toneR = `G4;
        12'd610: toneR = `G4;   12'd611: toneR = `G4;
        12'd612: toneR = `G4;   12'd613: toneR = `G4;
        12'd614: toneR = `G4;   12'd615: toneR = `G4;

        12'd616: toneR = `G4;   12'd617: toneR = `G4;
        12'd618: toneR = `G4;   12'd619: toneR = `G4;
        12'd620: toneR = `G4;   12'd621: toneR = `G4;
        12'd622: toneR = `G4;   12'd623: toneR = `G4;

        12'd624: toneR = `E4;   12'd625: toneR = `E4;
        12'd626: toneR = `E4;   12'd627: toneR = `E4;
        12'd628: toneR = `E4;   12'd629: toneR = `E4;
        12'd630: toneR = `E4;   12'd631: toneR = `E4;

        12'd632: toneR = `E4;   12'd633: toneR = `E4;
        12'd634: toneR = `E4;   12'd635: toneR = `E4;
        12'd636: toneR = `E4;   12'd637: toneR = `E4;
        12'd638: toneR = `E4;   12'd639: toneR = `E4;

        // Measure 11 //
        12'd640: toneR = `E4;   12'd641: toneR = `E4;
        12'd642: toneR = `E4;   12'd643: toneR = `E4;
        12'd644: toneR = `E4;   12'd645: toneR = `E4;
        12'd646: toneR = `E4;   12'd647: toneR = `E4;

        12'd648: toneR = `D4;   12'd649: toneR = `D4;
        12'd650: toneR = `D4;   12'd651: toneR = `D4;
        12'd652: toneR = `D4;   12'd653: toneR = `D4;
        12'd654: toneR = `D4;   12'd655: toneR = `D4;

        12'd656: toneR = `D4;   12'd657: toneR = `D4;
        12'd658: toneR = `D4;   12'd659: toneR = `D4;
        12'd660: toneR = `D4;   12'd661: toneR = `D4;
        12'd662: toneR = `D4;   12'd663: toneR = `D4;

        12'd664: toneR = `D4;   12'd665: toneR = `D4;
        12'd666: toneR = `D4;   12'd667: toneR = `D4;
        12'd668: toneR = `D4;   12'd669: toneR = `D4;
        12'd670: toneR = `D4;   12'd671: toneR = `D4;

        12'd672: toneR = `C4;   12'd673: toneR = `C4;
        12'd674: toneR = `C4;   12'd675: toneR = `C4;
        12'd676: toneR = `C4;   12'd677: toneR = `C4;
        12'd678: toneR = `C4;   12'd679: toneR = `C4;

        12'd680: toneR = `C4;   12'd681: toneR = `C4;
        12'd682: toneR = `C4;   12'd683: toneR = `C4;
        12'd684: toneR = `C4;   12'd685: toneR = `C4;
        12'd686: toneR = `C4;   12'd687: toneR = `C4;

        12'd688: toneR = `G4;   12'd689: toneR = `G4;
        12'd690: toneR = `G4;   12'd691: toneR = `G4;
        12'd692: toneR = `G4;   12'd693: toneR = `G4;
        12'd694: toneR = `G4;   12'd695: toneR = `G4;

        12'd696: toneR = `G4;   12'd697: toneR = `G4;
        12'd698: toneR = `G4;   12'd699: toneR = `G4;
        12'd700: toneR = `G4;   12'd701: toneR = `G4;
        12'd702: toneR = `G4;   12'd703: toneR = `G4;

        // Measure 12 //
        12'd704: toneR = `A4;   12'd705: toneR = `A4;
        12'd706: toneR = `A4;   12'd707: toneR = `A4;
        12'd708: toneR = `A4;   12'd709: toneR = `A4;
        12'd710: toneR = `A4;   12'd711: toneR = `A4;

        12'd712: toneR = `A4;   12'd713: toneR = `A4;
        12'd714: toneR = `A4;   12'd715: toneR = `A4;
        12'd716: toneR = `A4;   12'd717: toneR = `A4;
        12'd718: toneR = `A4;   12'd719: toneR = `A4;

        12'd720: toneR = `A4;   12'd721: toneR = `A4;
        12'd722: toneR = `A4;   12'd723: toneR = `A4;
        12'd724: toneR = `A4;   12'd725: toneR = `A4;
        12'd726: toneR = `A4;   12'd727: toneR = `A4;

        12'd728: toneR = `G4;   12'd729: toneR = `G4;
        12'd730: toneR = `G4;   12'd731: toneR = `G4;
        12'd732: toneR = `G4;   12'd733: toneR = `G4;
        12'd734: toneR = `G4;   12'd735: toneR = `G4;

        12'd736: toneR = `G4;   12'd737: toneR = `G4;
        12'd738: toneR = `G4;   12'd739: toneR = `G4;
        12'd740: toneR = `G4;   12'd741: toneR = `G4;
        12'd742: toneR = `G4;   12'd743: toneR = `G4;

        12'd744: toneR = `G4;   12'd745: toneR = `G4;
        12'd746: toneR = `G4;   12'd747: toneR = `G4;
        12'd748: toneR = `G4;   12'd749: toneR = `G4;
        12'd750: toneR = `G4;   12'd751: toneR = `G4;

        12'd752: toneR = `E4;   12'd753: toneR = `E4;
        12'd754: toneR = `E4;   12'd755: toneR = `E4;
        12'd756: toneR = `E4;   12'd757: toneR = `E4;
        12'd758: toneR = `E4;   12'd759: toneR = `E4;

        12'd760: toneR = `E4;   12'd761: toneR = `E4;
        12'd762: toneR = `E4;   12'd763: toneR = `E4;
        12'd764: toneR = `E4;   12'd765: toneR = `E4;
        12'd766: toneR = `E4;   12'd767: toneR = `E4;

        // Measure 13 //
        12'd768: toneR = `E4;   12'd769: toneR = `E4;
        12'd770: toneR = `E4;   12'd771: toneR = `E4;
        12'd772: toneR = `E4;   12'd773: toneR = `E4;
        12'd774: toneR = `E4;   12'd775: toneR = `E4;

        12'd776: toneR = `D4;   12'd777: toneR = `D4;
        12'd778: toneR = `D4;   12'd779: toneR = `D4;
        12'd780: toneR = `D4;   12'd781: toneR = `D4;
        12'd782: toneR = `D4;   12'd783: toneR = `D4;

        12'd784: toneR = `D4;   12'd785: toneR = `D4;
        12'd786: toneR = `D4;   12'd787: toneR = `D4;
        12'd788: toneR = `D4;   12'd789: toneR = `D4;
        12'd790: toneR = `D4;   12'd791: toneR = `D4;

        12'd792: toneR = `D4;   12'd793: toneR = `D4;
        12'd794: toneR = `D4;   12'd795: toneR = `D4;
        12'd796: toneR = `D4;   12'd797: toneR = `D4;
        12'd798: toneR = `D4;   12'd799: toneR = `D4;

        12'd800: toneR = `C4;   12'd801: toneR = `C4;
        12'd802: toneR = `C4;   12'd803: toneR = `C4;
        12'd804: toneR = `C4;   12'd805: toneR = `C4;
        12'd806: toneR = `C4;   12'd807: toneR = `C4;

        12'd808: toneR = `C4;   12'd809: toneR = `C4;
        12'd810: toneR = `C4;   12'd811: toneR = `C4;
        12'd812: toneR = `C4;   12'd813: toneR = `C4;
        12'd814: toneR = `C4;   12'd815: toneR = `C4;

        12'd816: toneR = `G3;   12'd817: toneR = `G3;
        12'd818: toneR = `G3;   12'd819: toneR = `G3;
        12'd820: toneR = `G3;   12'd821: toneR = `G3;
        12'd822: toneR = `G3;   12'd823: toneR = `G3;

        12'd824: toneR = `G3;   12'd825: toneR = `G3;
        12'd826: toneR = `G3;   12'd827: toneR = `G3;
        12'd828: toneR = `G3;   12'd829: toneR = `G3;
        12'd830: toneR = `G3;   12'd831: toneR = `G3;

        // Measure 14 //
        12'd832: toneR = `C4;   12'd833: toneR = `C4;
        12'd834: toneR = `C4;   12'd835: toneR = `C4;
        12'd836: toneR = `C4;   12'd837: toneR = `C4;
        12'd838: toneR = `C4;   12'd839: toneR = `C4;

        12'd840: toneR = `C4;   12'd841: toneR = `C4;
        12'd842: toneR = `C4;   12'd843: toneR = `C4;
        12'd844: toneR = `C4;   12'd845: toneR = `C4;
        12'd846: toneR = `C4;   12'd847: toneR = `C4;

        12'd848: toneR = `C4;   12'd849: toneR = `C4;
        12'd850: toneR = `C4;   12'd851: toneR = `C4;
        12'd852: toneR = `C4;   12'd853: toneR = `C4;
        12'd854: toneR = `C4;   12'd855: toneR = `C4;

        12'd856: toneR = `E4;   12'd857: toneR = `E4;
        12'd858: toneR = `E4;   12'd859: toneR = `E4;
        12'd860: toneR = `E4;   12'd861: toneR = `E4;
        12'd862: toneR = `E4;   12'd863: toneR = `E4;

        12'd864: toneR = `E4;   12'd865: toneR = `E4;
        12'd866: toneR = `E4;   12'd867: toneR = `E4;
        12'd868: toneR = `E4;   12'd869: toneR = `E4;
        12'd870: toneR = `E4;   12'd871: toneR = `E4;

        12'd872: toneR = `E4;   12'd873: toneR = `E4;
        12'd874: toneR = `E4;   12'd875: toneR = `E4;
        12'd876: toneR = `E4;   12'd877: toneR = `E4;
        12'd878: toneR = `E4;   12'd879: toneR = `E4;

        12'd880: toneR = `D4;   12'd881: toneR = `D4;
        12'd882: toneR = `D4;   12'd883: toneR = `D4;
        12'd884: toneR = `D4;   12'd885: toneR = `D4;
        12'd886: toneR = `D4;   12'd887: toneR = `D4;

        12'd888: toneR = `D4;   12'd889: toneR = `D4;
        12'd890: toneR = `D4;   12'd891: toneR = `D4;
        12'd892: toneR = `D4;   12'd893: toneR = `D4;
        12'd894: toneR = `D4;   12'd895: toneR = `D4;

        // Measure 15 //
        12'd896: toneR = `C4;   12'd897: toneR = `C4;
        12'd898: toneR = `C4;   12'd899: toneR = `C4;
        12'd900: toneR = `C4;   12'd901: toneR = `C4;
        12'd902: toneR = `C4;   12'd903: toneR = `C4;

        12'd904: toneR = `C4;   12'd905: toneR = `C4;
        12'd906: toneR = `C4;   12'd907: toneR = `C4;
        12'd908: toneR = `C4;   12'd909: toneR = `C4;
        12'd910: toneR = `C4;   12'd911: toneR = `C4;

        12'd912: toneR = `C4;   12'd913: toneR = `C4;
        12'd914: toneR = `C4;   12'd915: toneR = `C4;
        12'd916: toneR = `C4;   12'd917: toneR = `C4;
        12'd918: toneR = `C4;   12'd919: toneR = `C4;

        12'd920: toneR = `E4;   12'd921: toneR = `E4;
        12'd922: toneR = `E4;   12'd923: toneR = `E4;
        12'd924: toneR = `E4;   12'd925: toneR = `E4;
        12'd926: toneR = `E4;   12'd927: toneR = `E4;

        12'd928: toneR = `E4;   12'd929: toneR = `E4;
        12'd930: toneR = `E4;   12'd931: toneR = `E4;
        12'd932: toneR = `E4;   12'd933: toneR = `E4;
        12'd934: toneR = `E4;   12'd935: toneR = `E4;

        12'd936: toneR = `E4;   12'd937: toneR = `E4;
        12'd938: toneR = `E4;   12'd939: toneR = `E4;
        12'd940: toneR = `E4;   12'd941: toneR = `E4;
        12'd942: toneR = `E4;   12'd943: toneR = `E4;

        12'd944: toneR = `D4;   12'd945: toneR = `D4;
        12'd946: toneR = `D4;   12'd947: toneR = `D4;
        12'd948: toneR = `D4;   12'd949: toneR = `D4;
        12'd950: toneR = `D4;   12'd951: toneR = `D4;

        12'd952: toneR = `D4;   12'd953: toneR = `D4;
        12'd954: toneR = `D4;   12'd955: toneR = `D4;
        12'd956: toneR = `D4;   12'd957: toneR = `D4;
        12'd958: toneR = `D4;   12'd959: toneR = `D4;

        // Measure 16 //
        12'd960: toneR = `C4;   12'd961: toneR = `C4;
        12'd962: toneR = `C4;   12'd963: toneR = `C4;
        12'd964: toneR = `C4;   12'd965: toneR = `C4;
        12'd966: toneR = `C4;   12'd967: toneR = `C4;

        12'd968: toneR = `C4;   12'd969: toneR = `C4;
        12'd970: toneR = `C4;   12'd971: toneR = `C4;
        12'd972: toneR = `C4;   12'd973: toneR = `C4;
        12'd974: toneR = `C4;   12'd975: toneR = `C4;

        12'd976: toneR = `C4;   12'd977: toneR = `C4;
        12'd978: toneR = `C4;   12'd979: toneR = `C4;
        12'd980: toneR = `C4;   12'd981: toneR = `C4;
        12'd982: toneR = `C4;   12'd983: toneR = `C4;

        12'd984: toneR = `C4;   12'd985: toneR = `C4;
        12'd986: toneR = `C4;   12'd987: toneR = `C4;
        12'd988: toneR = `C4;   12'd989: toneR = `C4;
        12'd990: toneR = `C4;   12'd991: toneR = `C4;

        12'd992: toneR = `C4;   12'd993: toneR = `C4;
        12'd994: toneR = `C4;   12'd995: toneR = `C4;
        12'd996: toneR = `C4;   12'd997: toneR = `C4;
        12'd998: toneR = `C4;   12'd999: toneR = `C4;

        12'd1000: toneR = `C4;   12'd1001: toneR = `C4;
        12'd1002: toneR = `C4;   12'd1003: toneR = `C4;
        12'd1004: toneR = `C4;   12'd1005: toneR = `C4;
        12'd1006: toneR = `C4;   12'd1007: toneR = `C4;

        12'd1008: toneR = `C4;   12'd1009: toneR = `C4;
        12'd1010: toneR = `C4;   12'd1011: toneR = `C4;
        12'd1012: toneR = `C4;   12'd1013: toneR = `C4;
        12'd1014: toneR = `C4;   12'd1015: toneR = `C4;

        12'd1016: toneR = `C4;   12'd1017: toneR = `C4;
        12'd1018: toneR = `C4;   12'd1019: toneR = `C4;
        12'd1020: toneR = `C4;   12'd1021: toneR = `C4;
        12'd1022: toneR = `C4;   12'd1023: toneR = `C4;
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
        12'd0: toneL = `SIL;   12'd1: toneL = `SIL;
        12'd2: toneL = `SIL;   12'd3: toneL = `SIL;
        12'd4: toneL = `SIL;   12'd5: toneL = `SIL;
        12'd6: toneL = `SIL;   12'd7: toneL = `SIL;

        12'd8: toneL = `SIL;   12'd9: toneL = `SIL;
        12'd10: toneL = `SIL;   12'd11: toneL = `SIL;
        12'd12: toneL = `SIL;   12'd13: toneL = `SIL;
        12'd14: toneL = `SIL;   12'd15: toneL = `SIL;

        12'd16: toneL = `SIL;   12'd17: toneL = `SIL;
        12'd18: toneL = `SIL;   12'd19: toneL = `SIL;
        12'd20: toneL = `SIL;   12'd21: toneL = `SIL;
        12'd22: toneL = `SIL;   12'd23: toneL = `SIL;

        12'd24: toneL = `SIL;   12'd25: toneL = `SIL;
        12'd26: toneL = `SIL;   12'd27: toneL = `SIL;
        12'd28: toneL = `SIL;   12'd29: toneL = `SIL;
        12'd30: toneL = `SIL;   12'd31: toneL = `SIL;

        12'd32: toneL = `SIL;   12'd33: toneL = `SIL;
        12'd34: toneL = `SIL;   12'd35: toneL = `SIL;
        12'd36: toneL = `SIL;   12'd37: toneL = `SIL;
        12'd38: toneL = `SIL;   12'd39: toneL = `SIL;

        12'd40: toneL = `SIL;   12'd41: toneL = `SIL;
        12'd42: toneL = `SIL;   12'd43: toneL = `SIL;
        12'd44: toneL = `SIL;   12'd45: toneL = `SIL;
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
        12'd64: toneL = `F2;   12'd65: toneL = `F2;
        12'd66: toneL = `F2;   12'd67: toneL = `F2;
        12'd68: toneL = `F2;   12'd69: toneL = `F2;
        12'd70: toneL = `F2;   12'd71: toneL = `F2;

        12'd72: toneL = `A2;   12'd73: toneL = `A2;
        12'd74: toneL = `A2;   12'd75: toneL = `A2;
        12'd76: toneL = `A2;   12'd77: toneL = `A2;
        12'd78: toneL = `A2;   12'd79: toneL = `A2;

        12'd80: toneL = `C3;   12'd81: toneL = `C3;
        12'd82: toneL = `C3;   12'd83: toneL = `C3;
        12'd84: toneL = `C3;   12'd85: toneL = `C3;
        12'd86: toneL = `C3;   12'd87: toneL = `C3;

        12'd88: toneL = `F3;   12'd89: toneL = `F3;
        12'd90: toneL = `F3;   12'd91: toneL = `F3;
        12'd92: toneL = `F3;   12'd93: toneL = `F3;
        12'd94: toneL = `F3;   12'd95: toneL = `F3;

        12'd96: toneL = `SIL;   12'd97: toneL = `SIL;
        12'd98: toneL = `SIL;   12'd99: toneL = `SIL;
        12'd100: toneL = `SIL;   12'd101: toneL = `SIL;
        12'd102: toneL = `SIL;   12'd103: toneL = `SIL;

        12'd104: toneL = `SIL;   12'd105: toneL = `SIL;
        12'd106: toneL = `SIL;   12'd107: toneL = `SIL;
        12'd108: toneL = `SIL;   12'd109: toneL = `SIL;
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
        12'd128: toneL = `G2;   12'd129: toneL = `G2;
        12'd130: toneL = `G2;   12'd131: toneL = `G2;
        12'd132: toneL = `G2;   12'd133: toneL = `G2;
        12'd134: toneL = `G2;   12'd135: toneL = `G2;

        12'd136: toneL = `B2;   12'd137: toneL = `B2;
        12'd138: toneL = `B2;   12'd139: toneL = `B2;
        12'd140: toneL = `B2;   12'd141: toneL = `B2;
        12'd142: toneL = `B2;   12'd143: toneL = `B2;

        12'd144: toneL = `D3;   12'd145: toneL = `D3;
        12'd146: toneL = `D3;   12'd147: toneL = `D3;
        12'd148: toneL = `D3;   12'd149: toneL = `D3;
        12'd150: toneL = `D3;   12'd151: toneL = `D3;

        12'd152: toneL = `G3;   12'd153: toneL = `G3;
        12'd154: toneL = `G3;   12'd155: toneL = `G3;
        12'd156: toneL = `G3;   12'd157: toneL = `G3;
        12'd158: toneL = `G3;   12'd159: toneL = `G3;

        12'd160: toneL = `SIL;   12'd161: toneL = `SIL;
        12'd162: toneL = `SIL;   12'd163: toneL = `SIL;
        12'd164: toneL = `SIL;   12'd165: toneL = `SIL;
        12'd166: toneL = `SIL;   12'd167: toneL = `SIL;

        12'd168: toneL = `SIL;   12'd169: toneL = `SIL;
        12'd170: toneL = `SIL;   12'd171: toneL = `SIL;
        12'd172: toneL = `SIL;   12'd173: toneL = `SIL;
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
        12'd192: toneL = `A2;   12'd193: toneL = `A2;
        12'd194: toneL = `A2;   12'd195: toneL = `A2;
        12'd196: toneL = `A2;   12'd197: toneL = `A2;
        12'd198: toneL = `A2;   12'd199: toneL = `A2;

        12'd200: toneL = `C3;   12'd201: toneL = `C3;
        12'd202: toneL = `C3;   12'd203: toneL = `C3;
        12'd204: toneL = `C3;   12'd205: toneL = `C3;
        12'd206: toneL = `C3;   12'd207: toneL = `C3;

        12'd208: toneL = `E3;   12'd209: toneL = `E3;
        12'd210: toneL = `E3;   12'd211: toneL = `E3;
        12'd212: toneL = `E3;   12'd213: toneL = `E3;
        12'd214: toneL = `E3;   12'd215: toneL = `E3;

        12'd216: toneL = `A3;   12'd217: toneL = `A3;
        12'd218: toneL = `A3;   12'd219: toneL = `A3;
        12'd220: toneL = `A3;   12'd221: toneL = `A3;
        12'd222: toneL = `A3;   12'd223: toneL = `A3;

        12'd224: toneL = `SIL;   12'd225: toneL = `SIL;
        12'd226: toneL = `SIL;   12'd227: toneL = `SIL;
        12'd228: toneL = `SIL;   12'd229: toneL = `SIL;
        12'd230: toneL = `SIL;   12'd231: toneL = `SIL;

        12'd232: toneL = `SIL;   12'd233: toneL = `SIL;
        12'd234: toneL = `SIL;   12'd235: toneL = `SIL;
        12'd236: toneL = `SIL;   12'd237: toneL = `SIL;
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
        12'd256: toneL = `A2;   12'd257: toneL = `A2;
        12'd258: toneL = `A2;   12'd259: toneL = `A2;
        12'd260: toneL = `A2;   12'd261: toneL = `A2;
        12'd262: toneL = `A2;   12'd263: toneL = `A2;

        12'd264: toneL = `C2;   12'd265: toneL = `C2;
        12'd266: toneL = `C2;   12'd267: toneL = `C2;
        12'd268: toneL = `C2;   12'd269: toneL = `C2;
        12'd270: toneL = `C2;   12'd271: toneL = `C2;

        12'd272: toneL = `E3;   12'd273: toneL = `E3;
        12'd274: toneL = `E3;   12'd275: toneL = `E3;
        12'd276: toneL = `E3;   12'd277: toneL = `E3;
        12'd278: toneL = `E3;   12'd279: toneL = `E3;

        12'd280: toneL = `A3;   12'd281: toneL = `A3;
        12'd282: toneL = `A3;   12'd283: toneL = `A3;
        12'd284: toneL = `A3;   12'd285: toneL = `A3;
        12'd286: toneL = `A3;   12'd287: toneL = `A3;

        12'd288: toneL = `SIL;   12'd289: toneL = `SIL;
        12'd290: toneL = `SIL;   12'd291: toneL = `SIL;
        12'd292: toneL = `SIL;   12'd293: toneL = `SIL;
        12'd294: toneL = `SIL;   12'd295: toneL = `SIL;

        12'd296: toneL = `SIL;   12'd297: toneL = `SIL;
        12'd298: toneL = `SIL;   12'd299: toneL = `SIL;
        12'd300: toneL = `SIL;   12'd301: toneL = `SIL;
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
        12'd320: toneL = `F2;   12'd321: toneL = `F2;
        12'd322: toneL = `F2;   12'd323: toneL = `F2;
        12'd324: toneL = `F2;   12'd325: toneL = `F2;
        12'd326: toneL = `F2;   12'd327: toneL = `F2;

        12'd328: toneL = `A2;   12'd329: toneL = `A2;
        12'd330: toneL = `A2;   12'd331: toneL = `A2;
        12'd332: toneL = `A2;   12'd333: toneL = `A2;
        12'd334: toneL = `A2;   12'd335: toneL = `A2;

        12'd336: toneL = `C3;   12'd337: toneL = `C3;
        12'd338: toneL = `C3;   12'd339: toneL = `C3;
        12'd340: toneL = `C3;   12'd341: toneL = `C3;
        12'd342: toneL = `C3;   12'd343: toneL = `C3;

        12'd344: toneL = `F3;   12'd345: toneL = `F3;
        12'd346: toneL = `F3;   12'd347: toneL = `F3;
        12'd348: toneL = `F3;   12'd349: toneL = `F3;
        12'd350: toneL = `F3;   12'd351: toneL = `F3;

        12'd352: toneL = `SIL;   12'd353: toneL = `SIL;
        12'd354: toneL = `SIL;   12'd355: toneL = `SIL;
        12'd356: toneL = `SIL;   12'd357: toneL = `SIL;
        12'd358: toneL = `SIL;   12'd359: toneL = `SIL;

        12'd360: toneL = `SIL;   12'd361: toneL = `SIL;
        12'd362: toneL = `SIL;   12'd363: toneL = `SIL;
        12'd364: toneL = `SIL;   12'd365: toneL = `SIL;
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
        12'd384: toneL = `G2;   12'd385: toneL = `G2;
        12'd386: toneL = `G2;   12'd387: toneL = `G2;
        12'd388: toneL = `G2;   12'd389: toneL = `G2;
        12'd390: toneL = `G2;   12'd391: toneL = `G2;

        12'd392: toneL = `B2;   12'd393: toneL = `B2;
        12'd394: toneL = `B2;   12'd395: toneL = `B2;
        12'd396: toneL = `B2;   12'd397: toneL = `B2;
        12'd398: toneL = `B2;   12'd399: toneL = `B2;

        12'd400: toneL = `D3;   12'd401: toneL = `D3;
        12'd402: toneL = `D3;   12'd403: toneL = `D3;
        12'd404: toneL = `D3;   12'd405: toneL = `D3;
        12'd406: toneL = `D3;   12'd407: toneL = `D3;

        12'd408: toneL = `G3;   12'd409: toneL = `G3;
        12'd410: toneL = `G3;   12'd411: toneL = `G3;
        12'd412: toneL = `G3;   12'd413: toneL = `G3;
        12'd414: toneL = `G3;   12'd415: toneL = `G3;

        12'd416: toneL = `SIL;   12'd417: toneL = `SIL;
        12'd418: toneL = `SIL;   12'd419: toneL = `SIL;
        12'd420: toneL = `SIL;   12'd421: toneL = `SIL;
        12'd422: toneL = `SIL;   12'd423: toneL = `SIL;

        12'd424: toneL = `SIL;   12'd425: toneL = `SIL;
        12'd426: toneL = `SIL;   12'd427: toneL = `SIL;
        12'd428: toneL = `SIL;   12'd429: toneL = `SIL;
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
        12'd448: toneL = `A2;   12'd449: toneL = `A2;
        12'd450: toneL = `A2;   12'd451: toneL = `A2;
        12'd452: toneL = `A2;   12'd453: toneL = `A2;
        12'd454: toneL = `A2;   12'd455: toneL = `A2;

        12'd456: toneL = `C3;   12'd457: toneL = `C3;
        12'd458: toneL = `C3;   12'd459: toneL = `C3;
        12'd460: toneL = `C3;   12'd461: toneL = `C3;
        12'd462: toneL = `C3;   12'd463: toneL = `C3;

        12'd464: toneL = `E3;   12'd465: toneL = `E3;
        12'd466: toneL = `E3;   12'd467: toneL = `E3;
        12'd468: toneL = `E3;   12'd469: toneL = `E3;
        12'd470: toneL = `E3;   12'd471: toneL = `E3;

        12'd472: toneL = `A3;   12'd473: toneL = `A3;
        12'd474: toneL = `A3;   12'd475: toneL = `A3;
        12'd476: toneL = `A3;   12'd477: toneL = `A3;
        12'd478: toneL = `A3;   12'd479: toneL = `A3;

        12'd480: toneL = `SIL;   12'd481: toneL = `SIL;
        12'd482: toneL = `SIL;   12'd483: toneL = `SIL;
        12'd484: toneL = `SIL;   12'd485: toneL = `SIL;
        12'd486: toneL = `SIL;   12'd487: toneL = `SIL;

        12'd488: toneL = `SIL;   12'd489: toneL = `SIL;
        12'd490: toneL = `SIL;   12'd491: toneL = `SIL;
        12'd492: toneL = `SIL;   12'd493: toneL = `SIL;
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
        12'd512: toneL = `A2;   12'd513: toneL = `A2;
        12'd514: toneL = `A2;   12'd515: toneL = `A2;
        12'd516: toneL = `A2;   12'd517: toneL = `A2;
        12'd518: toneL = `A2;   12'd519: toneL = `A2;

        12'd520: toneL = `C3;   12'd521: toneL = `C3;
        12'd522: toneL = `C3;   12'd523: toneL = `C3;
        12'd524: toneL = `C3;   12'd525: toneL = `C3;
        12'd526: toneL = `C3;   12'd527: toneL = `C3;

        12'd528: toneL = `E3;   12'd529: toneL = `E3;
        12'd530: toneL = `E3;   12'd531: toneL = `E3;
        12'd532: toneL = `E3;   12'd533: toneL = `E3;
        12'd534: toneL = `E3;   12'd535: toneL = `E3;

        12'd536: toneL = `A3;   12'd537: toneL = `A3;
        12'd538: toneL = `A3;   12'd539: toneL = `A3;
        12'd540: toneL = `A3;   12'd541: toneL = `A3;
        12'd542: toneL = `A3;   12'd543: toneL = `A3;

        12'd544: toneL = `SIL;   12'd545: toneL = `SIL;
        12'd546: toneL = `SIL;   12'd547: toneL = `SIL;
        12'd548: toneL = `SIL;   12'd549: toneL = `SIL;
        12'd550: toneL = `SIL;   12'd551: toneL = `SIL;

        12'd552: toneL = `SIL;   12'd553: toneL = `SIL;
        12'd554: toneL = `SIL;   12'd555: toneL = `SIL;
        12'd556: toneL = `SIL;   12'd557: toneL = `SIL;
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
        12'd576: toneL = `F2;   12'd577: toneL = `F2;
        12'd578: toneL = `F2;   12'd579: toneL = `F2;
        12'd580: toneL = `F2;   12'd581: toneL = `F2;
        12'd582: toneL = `F2;   12'd583: toneL = `F2;

        12'd584: toneL = `A2;   12'd585: toneL = `A2;
        12'd586: toneL = `A2;   12'd587: toneL = `A2;
        12'd588: toneL = `A2;   12'd589: toneL = `A2;
        12'd590: toneL = `A2;   12'd591: toneL = `A2;

        12'd592: toneL = `C3;   12'd593: toneL = `C3;
        12'd594: toneL = `C3;   12'd595: toneL = `C3;
        12'd596: toneL = `C3;   12'd597: toneL = `C3;
        12'd598: toneL = `C3;   12'd599: toneL = `C3;

        12'd600: toneL = `F3;   12'd601: toneL = `F3;
        12'd602: toneL = `F3;   12'd603: toneL = `F3;
        12'd604: toneL = `F3;   12'd605: toneL = `F3;
        12'd606: toneL = `F3;   12'd607: toneL = `F3;

        12'd608: toneL = `SIL;   12'd609: toneL = `SIL;
        12'd610: toneL = `SIL;   12'd611: toneL = `SIL;
        12'd612: toneL = `SIL;   12'd613: toneL = `SIL;
        12'd614: toneL = `SIL;   12'd615: toneL = `SIL;

        12'd616: toneL = `C3;   12'd617: toneL = `C3;
        12'd618: toneL = `C3;   12'd619: toneL = `C3;
        12'd620: toneL = `C3;   12'd621: toneL = `C3;
        12'd622: toneL = `C3;   12'd623: toneL = `C3;

        12'd624: toneL = `A2;   12'd625: toneL = `A2;
        12'd626: toneL = `A2;   12'd627: toneL = `A2;
        12'd628: toneL = `A2;   12'd629: toneL = `A2;
        12'd630: toneL = `A2;   12'd631: toneL = `A2;

        12'd632: toneL = `F2;   12'd633: toneL = `F2;
        12'd634: toneL = `F2;   12'd635: toneL = `F2;
        12'd636: toneL = `F2;   12'd637: toneL = `F2;
        12'd638: toneL = `F2;   12'd639: toneL = `F2;

        // Measure 11 //
        12'd640: toneL = `G2;   12'd641: toneL = `G2;
        12'd642: toneL = `G2;   12'd643: toneL = `G2;
        12'd644: toneL = `G2;   12'd645: toneL = `G2;
        12'd646: toneL = `G2;   12'd647: toneL = `G2;

        12'd648: toneL = `B2;   12'd649: toneL = `B2;
        12'd650: toneL = `B2;   12'd651: toneL = `B2;
        12'd652: toneL = `B2;   12'd653: toneL = `B2;
        12'd654: toneL = `B2;   12'd655: toneL = `B2;

        12'd656: toneL = `D3;   12'd657: toneL = `D3;
        12'd658: toneL = `D3;   12'd659: toneL = `D3;
        12'd660: toneL = `D3;   12'd661: toneL = `D3;
        12'd662: toneL = `D3;   12'd663: toneL = `D3;

        12'd664: toneL = `G3;   12'd665: toneL = `G3;
        12'd666: toneL = `G3;   12'd667: toneL = `G3;
        12'd668: toneL = `G3;   12'd669: toneL = `G3;
        12'd670: toneL = `G3;   12'd671: toneL = `G3;

        12'd672: toneL = `SIL;   12'd673: toneL = `SIL;
        12'd674: toneL = `SIL;   12'd675: toneL = `SIL;
        12'd676: toneL = `SIL;   12'd677: toneL = `SIL;
        12'd678: toneL = `SIL;   12'd679: toneL = `SIL;

        12'd680: toneL = `D3;   12'd681: toneL = `D3;
        12'd682: toneL = `D3;   12'd683: toneL = `D3;
        12'd684: toneL = `D3;   12'd685: toneL = `D3;
        12'd686: toneL = `D3;   12'd687: toneL = `D3;

        12'd688: toneL = `B2;   12'd689: toneL = `B2;
        12'd690: toneL = `B2;   12'd691: toneL = `B2;
        12'd692: toneL = `B2;   12'd693: toneL = `B2;
        12'd694: toneL = `B2;   12'd695: toneL = `B2;

        12'd696: toneL = `G2;   12'd697: toneL = `G2;
        12'd698: toneL = `G2;   12'd699: toneL = `G2;
        12'd700: toneL = `G2;   12'd701: toneL = `G2;
        12'd702: toneL = `G2;   12'd703: toneL = `G2;

        // Measure 12 //
        12'd704: toneL = `A2;   12'd705: toneL = `A2;
        12'd706: toneL = `A2;   12'd707: toneL = `A2;
        12'd708: toneL = `A2;   12'd709: toneL = `A2;
        12'd710: toneL = `A2;   12'd711: toneL = `A2;

        12'd712: toneL = `C3;   12'd713: toneL = `C3;
        12'd714: toneL = `C3;   12'd715: toneL = `C3;
        12'd716: toneL = `C3;   12'd717: toneL = `C3;
        12'd718: toneL = `C3;   12'd719: toneL = `C3;

        12'd720: toneL = `E3;   12'd721: toneL = `E3;
        12'd722: toneL = `E3;   12'd723: toneL = `E3;
        12'd724: toneL = `E3;   12'd725: toneL = `E3;
        12'd726: toneL = `E3;   12'd727: toneL = `E3;

        12'd728: toneL = `A3;   12'd729: toneL = `A3;
        12'd730: toneL = `A3;   12'd731: toneL = `A3;
        12'd732: toneL = `A3;   12'd733: toneL = `A3;
        12'd734: toneL = `A3;   12'd735: toneL = `A3;

        12'd736: toneL = `SIL;   12'd737: toneL = `SIL;
        12'd738: toneL = `SIL;   12'd739: toneL = `SIL;
        12'd740: toneL = `SIL;   12'd741: toneL = `SIL;
        12'd742: toneL = `SIL;   12'd743: toneL = `SIL;

        12'd744: toneL = `E3;   12'd745: toneL = `E3;
        12'd746: toneL = `E3;   12'd747: toneL = `E3;
        12'd748: toneL = `E3;   12'd749: toneL = `E3;
        12'd750: toneL = `E3;   12'd751: toneL = `E3;

        12'd752: toneL = `C3;   12'd753: toneL = `C3;
        12'd754: toneL = `C3;   12'd755: toneL = `C3;
        12'd756: toneL = `C3;   12'd757: toneL = `C3;
        12'd758: toneL = `C3;   12'd759: toneL = `C3;

        12'd760: toneL = `A2;   12'd761: toneL = `A2;
        12'd762: toneL = `A2;   12'd763: toneL = `A2;
        12'd764: toneL = `A2;   12'd765: toneL = `A2;
        12'd766: toneL = `A2;   12'd767: toneL = `A2;

        // Measure 13 //
        12'd768: toneL = `A2;   12'd769: toneL = `A2;
        12'd770: toneL = `A2;   12'd771: toneL = `A2;
        12'd772: toneL = `A2;   12'd773: toneL = `A2;
        12'd774: toneL = `A2;   12'd775: toneL = `A2;

        12'd776: toneL = `C3;   12'd777: toneL = `C3;
        12'd778: toneL = `C3;   12'd779: toneL = `C3;
        12'd780: toneL = `C3;   12'd781: toneL = `C3;
        12'd782: toneL = `C3;   12'd783: toneL = `C3;

        12'd784: toneL = `E3;   12'd785: toneL = `E3;
        12'd786: toneL = `E3;   12'd787: toneL = `E3;
        12'd788: toneL = `E3;   12'd789: toneL = `E3;
        12'd790: toneL = `E3;   12'd791: toneL = `E3;

        12'd792: toneL = `A3;   12'd793: toneL = `A3;
        12'd794: toneL = `A3;   12'd795: toneL = `A3;
        12'd796: toneL = `A3;   12'd797: toneL = `A3;
        12'd798: toneL = `A3;   12'd799: toneL = `A3;

        12'd800: toneL = `SIL;   12'd801: toneL = `SIL;
        12'd802: toneL = `SIL;   12'd803: toneL = `SIL;
        12'd804: toneL = `SIL;   12'd805: toneL = `SIL;
        12'd806: toneL = `SIL;   12'd807: toneL = `SIL;

        12'd808: toneL = `E3;   12'd809: toneL = `E3;
        12'd810: toneL = `E3;   12'd811: toneL = `E3;
        12'd812: toneL = `E3;   12'd813: toneL = `E3;
        12'd814: toneL = `E3;   12'd815: toneL = `E3;

        12'd816: toneL = `C3;   12'd817: toneL = `C3;
        12'd818: toneL = `C3;   12'd819: toneL = `C3;
        12'd820: toneL = `C3;   12'd821: toneL = `C3;
        12'd822: toneL = `C3;   12'd823: toneL = `C3;

        12'd824: toneL = `A2;   12'd825: toneL = `A2;
        12'd826: toneL = `A2;   12'd827: toneL = `A2;
        12'd828: toneL = `A2;   12'd829: toneL = `A2;
        12'd830: toneL = `A2;   12'd831: toneL = `A2;

        // Measure 14 //
        12'd832: toneL = `F2;   12'd833: toneL = `F2;
        12'd834: toneL = `F2;   12'd835: toneL = `F2;
        12'd836: toneL = `F2;   12'd837: toneL = `F2;
        12'd838: toneL = `F2;   12'd839: toneL = `F2;

        12'd840: toneL = `A2;   12'd841: toneL = `A2;
        12'd842: toneL = `A2;   12'd843: toneL = `A2;
        12'd844: toneL = `A2;   12'd845: toneL = `A2;
        12'd846: toneL = `A2;   12'd847: toneL = `A2;

        12'd848: toneL = `C3;   12'd849: toneL = `C3;
        12'd850: toneL = `C3;   12'd851: toneL = `C3;
        12'd852: toneL = `C3;   12'd853: toneL = `C3;
        12'd854: toneL = `C3;   12'd855: toneL = `C3;

        12'd856: toneL = `F3;   12'd857: toneL = `F3;
        12'd858: toneL = `F3;   12'd859: toneL = `F3;
        12'd860: toneL = `F3;   12'd861: toneL = `F3;
        12'd862: toneL = `F3;   12'd863: toneL = `F3;

        12'd864: toneL = `SIL;   12'd865: toneL = `SIL;
        12'd866: toneL = `SIL;   12'd867: toneL = `SIL;
        12'd868: toneL = `SIL;   12'd869: toneL = `SIL;
        12'd870: toneL = `SIL;   12'd871: toneL = `SIL;

        12'd872: toneL = `C3;   12'd873: toneL = `C3;
        12'd874: toneL = `C3;   12'd875: toneL = `C3;
        12'd876: toneL = `C3;   12'd877: toneL = `C3;
        12'd878: toneL = `C3;   12'd879: toneL = `C3;

        12'd880: toneL = `A2;   12'd881: toneL = `A2;
        12'd882: toneL = `A2;   12'd883: toneL = `A2;
        12'd884: toneL = `A2;   12'd885: toneL = `A2;
        12'd886: toneL = `A2;   12'd887: toneL = `A2;

        12'd888: toneL = `F2;   12'd889: toneL = `F2;
        12'd890: toneL = `F2;   12'd891: toneL = `F2;
        12'd892: toneL = `F2;   12'd893: toneL = `F2;
        12'd894: toneL = `F2;   12'd895: toneL = `F2;

        // Measure 15 //
        12'd896: toneL = `G2;   12'd897: toneL = `G2;
        12'd898: toneL = `G2;   12'd899: toneL = `G2;
        12'd900: toneL = `G2;   12'd901: toneL = `G2;
        12'd902: toneL = `G2;   12'd903: toneL = `G2;

        12'd904: toneL = `B2;   12'd905: toneL = `B2;
        12'd906: toneL = `B2;   12'd907: toneL = `B2;
        12'd908: toneL = `B2;   12'd909: toneL = `B2;
        12'd910: toneL = `B2;   12'd911: toneL = `B2;

        12'd912: toneL = `D3;   12'd913: toneL = `D3;
        12'd914: toneL = `D3;   12'd915: toneL = `D3;
        12'd916: toneL = `D3;   12'd917: toneL = `D3;
        12'd918: toneL = `D3;   12'd919: toneL = `D3;

        12'd920: toneL = `G3;   12'd921: toneL = `G3;
        12'd922: toneL = `G3;   12'd923: toneL = `G3;
        12'd924: toneL = `G3;   12'd925: toneL = `G3;
        12'd926: toneL = `G3;   12'd927: toneL = `G3;

        12'd928: toneL = `SIL;   12'd929: toneL = `SIL;
        12'd930: toneL = `SIL;   12'd931: toneL = `SIL;
        12'd932: toneL = `SIL;   12'd933: toneL = `SIL;
        12'd934: toneL = `SIL;   12'd935: toneL = `SIL;

        12'd936: toneL = `D3;   12'd937: toneL = `D3;
        12'd938: toneL = `D3;   12'd939: toneL = `D3;
        12'd940: toneL = `D3;   12'd941: toneL = `D3;
        12'd942: toneL = `D3;   12'd943: toneL = `D3;

        12'd944: toneL = `B2;   12'd945: toneL = `B2;
        12'd946: toneL = `B2;   12'd947: toneL = `B2;
        12'd948: toneL = `B2;   12'd949: toneL = `B2;
        12'd950: toneL = `B2;   12'd951: toneL = `B2;

        12'd952: toneL = `G2;   12'd953: toneL = `G2;
        12'd954: toneL = `G2;   12'd955: toneL = `G2;
        12'd956: toneL = `G2;   12'd957: toneL = `G2;
        12'd958: toneL = `G2;   12'd959: toneL = `G2;

        // Measure 16 //
        12'd960: toneL = `A2;   12'd961: toneL = `A2;
        12'd962: toneL = `A2;   12'd963: toneL = `A2;
        12'd964: toneL = `A2;   12'd965: toneL = `A2;
        12'd966: toneL = `A2;   12'd967: toneL = `A2;

        12'd968: toneL = `C3;   12'd969: toneL = `C3;
        12'd970: toneL = `C3;   12'd971: toneL = `C3;
        12'd972: toneL = `C3;   12'd973: toneL = `C3;
        12'd974: toneL = `C3;   12'd975: toneL = `C3;

        12'd976: toneL = `E3;   12'd977: toneL = `E3;
        12'd978: toneL = `E3;   12'd979: toneL = `E3;
        12'd980: toneL = `E3;   12'd981: toneL = `E3;
        12'd982: toneL = `E3;   12'd983: toneL = `E3;

        12'd984: toneL = `A3;   12'd985: toneL = `A3;
        12'd986: toneL = `A3;   12'd987: toneL = `A3;
        12'd988: toneL = `A3;   12'd989: toneL = `A3;
        12'd990: toneL = `A3;   12'd991: toneL = `A3;

        12'd992: toneL = `SIL;   12'd993: toneL = `SIL;
        12'd994: toneL = `SIL;   12'd995: toneL = `SIL;
        12'd996: toneL = `SIL;   12'd997: toneL = `SIL;
        12'd998: toneL = `SIL;   12'd999: toneL = `SIL;

        12'd1000: toneL = `SIL;   12'd1001: toneL = `SIL;
        12'd1002: toneL = `SIL;   12'd1003: toneL = `SIL;
        12'd1004: toneL = `SIL;   12'd1005: toneL = `SIL;
        12'd1006: toneL = `SIL;   12'd1007: toneL = `SIL;

        12'd1008: toneL = `SIL;   12'd1009: toneL = `SIL;
        12'd1010: toneL = `SIL;   12'd1011: toneL = `SIL;
        12'd1012: toneL = `SIL;   12'd1013: toneL = `SIL;
        12'd1014: toneL = `SIL;   12'd1015: toneL = `SIL;

        12'd1016: toneL = `SIL;   12'd1017: toneL = `SIL;
        12'd1018: toneL = `SIL;   12'd1019: toneL = `SIL;
        12'd1020: toneL = `SIL;   12'd1021: toneL = `SIL;
        12'd1022: toneL = `SIL;   12'd1023: toneL = `SIL;

        default : toneL = `SIL;
        endcase
    end
    else begin
        toneL = `SIL;
    end
end
endmodule