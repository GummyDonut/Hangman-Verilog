module statemachineforpigs(Q, confirm, Resetn, clock,T,a,b,c,d,e,f,slotA,slotB,slotC,slotD,slotE,slotF,W);

	input confirm, clock, Resetn;
	input [4:0]Q;
	
	output reg T = 0;
	
	output reg [4:0] slotA;
	output reg [4:0] slotB;
	output reg [4:0] slotC;
	output reg [4:0] slotD;
	output reg [4:0] slotE;
	output reg [4:0] slotF;
	
	reg [4:1] y;
	
	output reg a,b,c,d,e,f;
	output integer W = 0;
	//reg count = 3'b000;
	reg c1=0,c2=0,c3=0,c4=0,c5=0,c6=0;
	//output reg W1=0,W2=0,W3=0,W4=0,W5=0,W6=0;
	
	parameter A= 4'b0000, B = 4'b0001, C=4'b0010, D=4'b0011, E= 4'b0100, F= 4'b0101, G=4'b0110, H=4'b0111, Z=4'b1100, LO=4'b1101, WI=4'b1110;
	
	
	always@(negedge Resetn, posedge clock)
	if (Resetn==0) 
		begin
			W=0;
			c1=0;c2=0;c3=0;c4=0;c5=0;c6=0;
			y<=A;
			slotA = 5'b00000; slotB = 5'b00000; slotC = 5'b00000; slotD = 5'b00000; slotE = 5'b00000; slotF = 5'b00000;
		end
		else
			case(y)
					A: if(confirm)
						begin
							a=1;b=1;c=1;d=1;e=1;f=1;
							y <= B;
							slotA <= Q;
						end
						else y <= A;
					B: if(confirm)
						begin
							y <= C;
							slotB <= Q;
						end
						else y <= B;
					C:	if(confirm)
						begin
							y <= D;
							slotC <= Q;
						end
						else y <= C;
					D: if(confirm)
						begin
							y <= E;
							slotD <= Q;
						end
						else y <= D;
					E: if(confirm)
						begin
							y <= F;
							slotE <= Q;
						end
						else y <= E;
					F:	if(confirm)
						begin
							slotF <= Q;
							
							y<=Z;
						end
						else y <= F;
					Z: if(confirm)
						begin
							y<=G;
							a=0;b=0;c=0;d=0;e=0;f=0;
						end
					G: if(confirm)
						begin
							if(Q==slotA) a=1;
								else c1=1;
							if(Q==slotB) b=1;
								else c2=1;
							if(Q==slotC) c=1;
								else c3=1;
							if(Q==slotD) d=1;
								else c4=1;
							if(Q==slotE) e=1;
								else c5=1;
							if(Q==slotF) f=1;
								else c6=1;
							
							if (W==6) begin
							y<=LO; end
							else if (c1==1&c2==1&c3==1&c4==1&c5==1&c6==1) begin c1=0;c2=0;c3=0;c4=0;c5=0;c6=0; W=W+1; y<=G; end
							else if (a==1&b==1&c==1&d==1&e==1&f==1) y<=WI;
							else begin c1=0;c2=0;c3=0;c4=0;c5=0;c6=0; y<=G; end
							
						end
						else y<=G;
					WI: begin
						y<= WI;
						slotC=5'b10111;
						slotD=5'b01001;
						slotE=5'b01110;
						slotA=5'b00000;
						slotB=5'b00000;
						slotF=5'b00000;
						end
					LO: begin y<= LO; a=1;b=1;c=1;d=1;e=1;f=1;
						slotC=5'b01100;
						slotD=5'b01111;
						slotE=5'b10011;
						slotF=5'b00101;
						slotA=5'b00000;
						slotB=5'b00000; 
						end
					
					default: y <=4'bxxxx;
				endcase
				
			
			
endmodule
