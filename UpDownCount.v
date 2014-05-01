module UpDownCount(Clock,/*E*/,up_down,Q);
	input Clock/*,E*/,up_down;
	output reg [4:0]Q; 
	integer direction;
	
	always@(posedge Clock)
	begin
		if(up_down) //if high then there added up 
			direction=1;
		else // if low then subtract
			direction=-1;
		Q<=Q+direction;
	end
endmodule
