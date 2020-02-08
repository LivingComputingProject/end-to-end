module sr_ff(q, p, e, s, r);

   input  s, r, e;
   output q, p;
   wire   si, ri;

   and(si, s, e);
   and(ri, r, e);
   nor(q, ri, p);
   nor(p, si, q);
   
endmodule

module sr_ff_ms(s, r, e, q, p);

   input  s, r, e;
   output q, p;
   wire   si, ri, f;

   not(f,e);
   sr_ff sr1(s, r, e, si, ri);
   sr_ff sr2(si, ri, f, q, p);
   
endmodule
