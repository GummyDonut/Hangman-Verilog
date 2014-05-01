module losedisp(W,led1,led2,led3,led4,led5,led6);
input [2:0] W;
output reg led1,led2,led3,led4,led5,led6;
	always@(W)
		case(W)
			0:begin led1=0;led2=0;led3=0;led4=0;led5=0;led6=0; end
			1:begin led1=1;led2=0;led3=0;led4=0;led5=0;led6=0; end
			2:begin led1=1;led2=1;led3=0;led4=0;led5=0;led6=0; end
			3:begin led1=1;led2=1;led3=1;led4=0;led5=0;led6=0; end
			4:begin led1=1;led2=1;led3=1;led4=1;led5=0;led6=0; end
			5:begin led1=1;led2=1;led3=1;led4=1;led5=1;led6=0; end
			6:begin led6=1;led5=1;led4=1;led3=1;led2=1;led1=1; end

		endcase

endmodule
