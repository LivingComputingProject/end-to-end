module sr_ff(q, p, e, s, r);

   input  s, r, e;
   output q, p;
   wire   si, ri;

   and(si, s, e);
   and(ri, r, e);
   nor(q, ri, p);
   nor(p, si, q);
   
endmodule

module sr_ff_ms(q, p, e, s, r);

   input  s, r, e;
   output q, p;
   wire   si, ri, f;

   not(f, e);
   sr_ff sr1(ri, si, e, s, r);
   sr_ff sr2(q, p, f, si, ri);
   
endmodule
