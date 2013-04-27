module testdec ( dec, selbar, a );
  input [0:2] dec;
  output [0:7] a;
  input selbar;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31;

  GTECH_AND2 C8 ( .A(dec[0]), .B(dec[1]), .Z(N8) );
  GTECH_AND2 C9 ( .A(N8), .B(dec[2]), .Z(N9) );
  GTECH_OR2 C17 ( .A(N26), .B(N27), .Z(N10) );
  GTECH_OR2 C18 ( .A(N10), .B(dec[2]), .Z(N11) );
  GTECH_OR2 C27 ( .A(N26), .B(dec[1]), .Z(N13) );
  GTECH_OR2 C28 ( .A(N13), .B(N28), .Z(N14) );
  GTECH_OR2 C37 ( .A(N13), .B(dec[2]), .Z(N16) );
  GTECH_OR2 C46 ( .A(dec[0]), .B(N27), .Z(N18) );
  GTECH_OR2 C47 ( .A(N18), .B(N28), .Z(N19) );
  GTECH_OR2 C56 ( .A(N18), .B(dec[2]), .Z(N21) );
  GTECH_OR2 C64 ( .A(dec[0]), .B(dec[1]), .Z(N23) );
  GTECH_OR2 C65 ( .A(N23), .B(N28), .Z(N24) );
  GTECH_AND2 C75 ( .A(N26), .B(N27), .Z(N29) );
  GTECH_AND2 C76 ( .A(N29), .B(N28), .Z(N30) );
  \**TSGEN**  \a_tri[0]  ( .\function (N9), .three_state(N0), .\output (a[0])
         );
  GTECH_NOT I_0 ( .A(N31), .Z(N0) );
  \**TSGEN**  \a_tri[1]  ( .\function (N12), .three_state(N1), .\output (a[1])
         );
  GTECH_NOT I_1 ( .A(N31), .Z(N1) );
  \**TSGEN**  \a_tri[2]  ( .\function (N15), .three_state(N2), .\output (a[2])
         );
  GTECH_NOT I_2 ( .A(N31), .Z(N2) );
  \**TSGEN**  \a_tri[3]  ( .\function (N17), .three_state(N3), .\output (a[3])
         );
  GTECH_NOT I_3 ( .A(N31), .Z(N3) );
  \**TSGEN**  \a_tri[4]  ( .\function (N20), .three_state(N4), .\output (a[4])
         );
  GTECH_NOT I_4 ( .A(N31), .Z(N4) );
  \**TSGEN**  \a_tri[5]  ( .\function (N22), .three_state(N5), .\output (a[5])
         );
  GTECH_NOT I_5 ( .A(N31), .Z(N5) );
  \**TSGEN**  \a_tri[6]  ( .\function (N25), .three_state(N6), .\output (a[6])
         );
  GTECH_NOT I_6 ( .A(N31), .Z(N6) );
  \**TSGEN**  \a_tri[7]  ( .\function (N30), .three_state(N7), .\output (a[7])
         );
  GTECH_NOT I_7 ( .A(N31), .Z(N7) );
  GTECH_NOT I_8 ( .A(N11), .Z(N12) );
  GTECH_NOT I_9 ( .A(N14), .Z(N15) );
  GTECH_NOT I_10 ( .A(N16), .Z(N17) );
  GTECH_NOT I_11 ( .A(N19), .Z(N20) );
  GTECH_NOT I_12 ( .A(N21), .Z(N22) );
  GTECH_NOT I_13 ( .A(N24), .Z(N25) );
  GTECH_NOT I_14 ( .A(dec[0]), .Z(N26) );
  GTECH_NOT I_15 ( .A(dec[1]), .Z(N27) );
  GTECH_NOT I_16 ( .A(dec[2]), .Z(N28) );
  GTECH_NOT I_17 ( .A(selbar), .Z(N31) );
endmodule

