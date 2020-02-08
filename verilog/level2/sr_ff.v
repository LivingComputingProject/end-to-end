module sr_ff(q, p, e, s, r);

   input  s, r, e;
   output q, p;
   wire   si, ri;

   and(si, s, e);
   and(ri, r, e);
   nor(q, ri, p);
   nor(q, si, q);
   
endmodule
