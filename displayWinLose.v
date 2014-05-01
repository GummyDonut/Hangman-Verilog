module displayWinLose(a,b,c,d,e,f,slotA,slotB,slotC,slotD,slotE,slotF,display1,display2,display3,display4,display5,display6);
	input a,b,c,d,e,f;
	input [0:4] slotA,slotB,slotC,slotD,slotE,slotF;
	output reg [0:4] display1,display2,display3,display4,display5,display6;
	always@(posedge a,posedge b,posedge c,posedge d,posedge e,posedge f)
		begin
			if(a==1)
				begin
					display1=slotA;
				end
			else if(b==1)
				begin
					display2=slotB;
				end
			else if(c==1)
				begin
					display3=slotC; // Note that there is so much fan out that there is a significant delay,
					//please ask Mike and mitch to change their outputs
				end
			else if(d==1)
				begin
					display4=slotD;
				end
			else if(e==1)
				begin
					display5=slotE;
				end
			else if(f==1)
				begin 
					display6=slotF;
				end
		end

endmodule
