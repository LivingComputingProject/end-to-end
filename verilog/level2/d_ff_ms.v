module d_ff(q, p, d, e);

   input  d, e;
   output q, p;
   wire   s, r;

   nand(r, e, d);
   nand(s, r, e);
   nand(q, r, p);
   nand(p, q, s);
   
endmodule

module d_ff_ms(q, p, d, e);

   input  d, e;
   output q, p;
   wire   f, c, x;

   not(f, e);
   
   d_ff d1(c, x, d, f);
   d_ff d2(q, p, c, e);
   
endmodule
