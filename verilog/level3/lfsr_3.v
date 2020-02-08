module d_ff(q, e, d);

   input  d, e;
   output q;
   wire   s, r, p, c;

   not(c, d);
   and(r, c, e);
   and(s, d, e);
   nor(q, r, p);
   nor(p, s, q);

endmodule

module lfsr_3(q, e);

   output [2:0] q;
   input 		e;
   wire 		d;

   d_ff dff1 (q[0], e, d);
   d_ff dff2 (q[1], e, q[0]);
   d_ff dff3 (q[2], e, q[1]);
   xor(d, q[0], q[2]);
   
endmodule
