module storageFinal(Clock,up_down,display,confirm,clock,T, Resetn,displayA,displayB,displayC,displayD,displayE,displayF,led1,led2,led3,led4,led5,led6);
	input Clock,up_down,confirm,clock,Resetn;
	
	wire [4:0]Q,slotA,slotB,slotC,slotD,slotE,slotF;
	wire[2:0] W;
	wire a,b,c,d,e,f;
	
	output[6:0]display,displayA,displayB,displayC,displayD,displayE,displayF;
	
	output T,led1,led2,led3,led4,led5,led6;
	
	UpDownCount StoreQ(Clock,up_down,Q);
	storageChar HexDisplay(Q, display);
	statemachineforpigs biobvosf(Q,confirm, Resetn, clock,T,a,b,c,d,e,f,slotA,slotB,slotC,slotD,slotE,slotF,W);
	//displayWinLose[a,b,c,d,e,f,slotA,slotB,slotC,slotD,slotE,slotF,display1,display2,display3,display4,display5,display6]
	hexdisp h(slotA, displayA,a);
	hexdisp B(slotB, displayB,b);
	hexdisp C(slotC, displayC,c);
	hexdisp D(slotD, displayD,d);
	hexdisp E(slotE, displayE,e);
	hexdisp F(slotF, displayF,f);
	losedisp screwyou(W,led1,led2,led3,led4,led5,led6);

endmodule 
	