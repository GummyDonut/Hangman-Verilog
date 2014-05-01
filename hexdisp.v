module hexdisp (enter,display,letter);
	input[4:0]enter;
	input letter;
	output reg [6:0]display;
	
	always@(enter)
		if (letter)
			begin 
			case(enter) //1,0,2,3,4,5,6 // note
										//-
			0:display = 7'b1111110;//A
			1:display = 7'b0001000;//B
			2:display = 7'b1100000;//C
			3:display = 7'b0110001;//D
			4:display = 7'b1000010;//E
			5:display = 7'b0110000;//F
			6:display = 7'b0111000;//G
			7:display = 7'b0000100;//H
			8:display = 7'b1101000;//I // note that each reg vector 1,0,etc corresponds to a light
			9:display = 7'b1001111;//J
			10:display = 7'b1000111;//K
			11:display = 7'b0101000;//L
			12:display = 7'b1110001;//M
			13:display = 7'b0101011;//N
			14:display = 7'b0001001;//O
			15:display = 7'b0000001;//P
			16:display = 7'b0011000;//Q
			17:display = 7'b0001100;//R
			18:display = 7'b0111001;//S
			19:display = 7'b0100100;//T
			20:display = 7'b0010101;//U
			21:display = 7'b1000001;//V
			22:display = 7'b1010101;//W
			23:display = 7'b1000000;//X
			24:display = 7'b1001000;//Y
			25:display = 7'b1000100;//Z
			26:display = 7'b0010010;//1
			27:display = 7'b1111001;//2
			28:display = 7'b0010110;//3
			29:display = 7'b0000110;//4
			30:display = 7'b1001100;//5
			31:display = 7'b0110100;//5
			default: display = 7'bx;
			endcase
			end
		else
			display = 7'b1111110;
		
		
endmodule