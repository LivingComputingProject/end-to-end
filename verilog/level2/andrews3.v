module sr_latch(q, s, r);

   input  s, r;
   output q;
   wire   p;

   nor(q, r, p);
   nor(p, q, s);

endmodule

module andrews3(y, a, b, c, d);

   output y;
   input  a, b, c, d;
   wire   q1, q2;

   sr_latch sr1(q1, b, a);
   sr_latch sr2(q2, c, a);
   nor(y, q1, q2, d);

endmodule
