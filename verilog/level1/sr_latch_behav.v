module sr_latch(q, p, s, r);

   input  s, r;
   output q, p;

   always@(s or r)
	 begin
		q = ~(r | p);
		p = ~(q | s);
	 end

endmodule // sr_latch
