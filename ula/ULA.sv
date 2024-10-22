module ULA (input [5:0] A, [5:0] B, Reset, Set, [2:0]Setop,
				output [5:0] Out, Carry_out, Zero);	
				
always @(*)begin
if (Set == 0) begin
case(Setop)
3'b000: Out = A and B;
3'b001: Out = not(A);
3'b010: Out = not(B);
3'b011: Out = A or B;
3'b100: Out = A xor B;
3'b101: Out = A nand B;
3'b110: Out = A;
3'b111: Out = B;
end case

end else begin
case(Setop)
3'b000: Out = A + B;
3'b001: Out = A - B;
3'b010: Out = A + not(B);
3'b011: Out = A – not(B);
3'b100: Out = A + 1 ;
3'b101: Out = A – 1 ;
3'b110: Out = B + 1 ;
3'b111: Out = B - 1;
end case
end
end module 