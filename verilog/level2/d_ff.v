module d_ff(q, p, e, d);

   input  d, e;
   output q, p;
   wire   s, r, c;

   not(c, d);
   and(r, c, e);
   and(s, d, e);
   nor(q, r, p);
   nor(p, s, q);

endmodule
