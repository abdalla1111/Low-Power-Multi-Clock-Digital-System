/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 09:29:13 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module Reg_file_ADDR_WIDHT4_DATA_WIDTH8_DATA_DEPTH16_test_1 ( Wrdata, Address, 
        WrEn, RdEn, CLK, RST, RdData, RdData_Valid, REG0, REG1, REG2, REG3, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] Wrdata;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \reg_file[4][7] , \reg_file[4][6] ,
         \reg_file[4][5] , \reg_file[4][4] , \reg_file[4][3] ,
         \reg_file[4][2] , \reg_file[4][1] , \reg_file[4][0] ,
         \reg_file[5][7] , \reg_file[5][6] , \reg_file[5][5] ,
         \reg_file[5][4] , \reg_file[5][3] , \reg_file[5][2] ,
         \reg_file[5][1] , \reg_file[5][0] , \reg_file[6][7] ,
         \reg_file[6][6] , \reg_file[6][5] , \reg_file[6][4] ,
         \reg_file[6][3] , \reg_file[6][2] , \reg_file[6][1] ,
         \reg_file[6][0] , \reg_file[7][7] , \reg_file[7][6] ,
         \reg_file[7][5] , \reg_file[7][4] , \reg_file[7][3] ,
         \reg_file[7][2] , \reg_file[7][1] , \reg_file[7][0] ,
         \reg_file[8][7] , \reg_file[8][6] , \reg_file[8][5] ,
         \reg_file[8][4] , \reg_file[8][3] , \reg_file[8][2] ,
         \reg_file[8][1] , \reg_file[8][0] , \reg_file[9][7] ,
         \reg_file[9][6] , \reg_file[9][5] , \reg_file[9][4] ,
         \reg_file[9][3] , \reg_file[9][2] , \reg_file[9][1] ,
         \reg_file[9][0] , \reg_file[10][7] , \reg_file[10][6] ,
         \reg_file[10][5] , \reg_file[10][4] , \reg_file[10][3] ,
         \reg_file[10][2] , \reg_file[10][1] , \reg_file[10][0] ,
         \reg_file[11][7] , \reg_file[11][6] , \reg_file[11][5] ,
         \reg_file[11][4] , \reg_file[11][3] , \reg_file[11][2] ,
         \reg_file[11][1] , \reg_file[11][0] , \reg_file[12][7] ,
         \reg_file[12][6] , \reg_file[12][5] , \reg_file[12][4] ,
         \reg_file[12][3] , \reg_file[12][2] , \reg_file[12][1] ,
         \reg_file[12][0] , \reg_file[13][7] , \reg_file[13][6] ,
         \reg_file[13][5] , \reg_file[13][4] , \reg_file[13][3] ,
         \reg_file[13][2] , \reg_file[13][1] , \reg_file[13][0] ,
         \reg_file[14][7] , \reg_file[14][6] , \reg_file[14][5] ,
         \reg_file[14][4] , \reg_file[14][3] , \reg_file[14][2] ,
         \reg_file[14][1] , \reg_file[14][0] , \reg_file[15][7] ,
         \reg_file[15][6] , \reg_file[15][5] , \reg_file[15][4] ,
         \reg_file[15][3] , \reg_file[15][2] , \reg_file[15][1] ,
         \reg_file[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so1 = \reg_file[6][7] ;
  assign test_so2 = \reg_file[15][7] ;

  SDFFRQX2M \RdData_reg[7]  ( .D(n314), .SI(RdData[6]), .SE(n492), .CK(CLK), 
        .RN(n438), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n313), .SI(RdData[5]), .SE(n491), .CK(CLK), 
        .RN(n448), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n312), .SI(RdData[4]), .SE(n490), .CK(CLK), 
        .RN(n448), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n311), .SI(RdData[3]), .SE(n488), .CK(CLK), 
        .RN(n448), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n310), .SI(RdData[2]), .SE(n485), .CK(CLK), 
        .RN(n448), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n309), .SI(RdData[1]), .SE(n484), .CK(CLK), 
        .RN(n448), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n308), .SI(RdData[0]), .SE(n481), .CK(CLK), 
        .RN(n448), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n307), .SI(RdData_Valid), .SE(n480), .CK(CLK), 
        .RN(n448), .Q(RdData[0]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n454), .SI(test_si1), .SE(n485), .CK(CLK), 
        .RN(n443), .Q(RdData_Valid) );
  SDFFRQX2M \reg_file_reg[5][7]  ( .D(n266), .SI(\reg_file[5][6] ), .SE(n481), 
        .CK(CLK), .RN(n445), .Q(\reg_file[5][7] ) );
  SDFFRQX2M \reg_file_reg[5][6]  ( .D(n265), .SI(\reg_file[5][5] ), .SE(n501), 
        .CK(CLK), .RN(n445), .Q(\reg_file[5][6] ) );
  SDFFRQX2M \reg_file_reg[5][5]  ( .D(n264), .SI(\reg_file[5][4] ), .SE(n501), 
        .CK(CLK), .RN(n444), .Q(\reg_file[5][5] ) );
  SDFFRQX2M \reg_file_reg[5][4]  ( .D(n263), .SI(\reg_file[5][3] ), .SE(n501), 
        .CK(CLK), .RN(n444), .Q(\reg_file[5][4] ) );
  SDFFRQX2M \reg_file_reg[5][3]  ( .D(n262), .SI(\reg_file[5][2] ), .SE(n501), 
        .CK(CLK), .RN(n444), .Q(\reg_file[5][3] ) );
  SDFFRQX2M \reg_file_reg[5][2]  ( .D(n261), .SI(\reg_file[5][1] ), .SE(n501), 
        .CK(CLK), .RN(n444), .Q(\reg_file[5][2] ) );
  SDFFRQX2M \reg_file_reg[5][1]  ( .D(n260), .SI(\reg_file[5][0] ), .SE(n501), 
        .CK(CLK), .RN(n444), .Q(\reg_file[5][1] ) );
  SDFFRQX2M \reg_file_reg[5][0]  ( .D(n259), .SI(\reg_file[4][7] ), .SE(n489), 
        .CK(CLK), .RN(n444), .Q(\reg_file[5][0] ) );
  SDFFRQX2M \reg_file_reg[7][7]  ( .D(n250), .SI(\reg_file[7][6] ), .SE(n486), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][7] ) );
  SDFFRQX2M \reg_file_reg[7][6]  ( .D(n249), .SI(\reg_file[7][5] ), .SE(n488), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][6] ) );
  SDFFRQX2M \reg_file_reg[7][5]  ( .D(n248), .SI(\reg_file[7][4] ), .SE(n487), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][5] ) );
  SDFFRQX2M \reg_file_reg[7][4]  ( .D(n247), .SI(\reg_file[7][3] ), .SE(n486), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][4] ) );
  SDFFRQX2M \reg_file_reg[7][3]  ( .D(n246), .SI(\reg_file[7][2] ), .SE(n488), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][3] ) );
  SDFFRQX2M \reg_file_reg[7][2]  ( .D(n245), .SI(\reg_file[7][1] ), .SE(n487), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][2] ) );
  SDFFRQX2M \reg_file_reg[7][1]  ( .D(n244), .SI(\reg_file[7][0] ), .SE(n486), 
        .CK(CLK), .RN(n443), .Q(\reg_file[7][1] ) );
  SDFFRQX2M \reg_file_reg[7][0]  ( .D(n243), .SI(test_si2), .SE(n499), .CK(CLK), .RN(n443), .Q(\reg_file[7][0] ) );
  SDFFRQX2M \reg_file_reg[9][7]  ( .D(n234), .SI(\reg_file[9][6] ), .SE(n499), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][7] ) );
  SDFFRQX2M \reg_file_reg[9][6]  ( .D(n233), .SI(\reg_file[9][5] ), .SE(n499), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][6] ) );
  SDFFRQX2M \reg_file_reg[9][5]  ( .D(n232), .SI(\reg_file[9][4] ), .SE(n499), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][5] ) );
  SDFFRQX2M \reg_file_reg[9][4]  ( .D(n231), .SI(\reg_file[9][3] ), .SE(n499), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][4] ) );
  SDFFRQX2M \reg_file_reg[9][3]  ( .D(n230), .SI(\reg_file[9][2] ), .SE(n499), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][3] ) );
  SDFFRQX2M \reg_file_reg[9][2]  ( .D(n229), .SI(\reg_file[9][1] ), .SE(n477), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][2] ) );
  SDFFRQX2M \reg_file_reg[9][1]  ( .D(n228), .SI(\reg_file[9][0] ), .SE(n498), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][1] ) );
  SDFFRQX2M \reg_file_reg[9][0]  ( .D(n227), .SI(\reg_file[8][7] ), .SE(n498), 
        .CK(CLK), .RN(n442), .Q(\reg_file[9][0] ) );
  SDFFRQX2M \reg_file_reg[11][7]  ( .D(n218), .SI(\reg_file[11][6] ), .SE(n498), .CK(CLK), .RN(n441), .Q(\reg_file[11][7] ) );
  SDFFRQX2M \reg_file_reg[11][6]  ( .D(n217), .SI(\reg_file[11][5] ), .SE(n498), .CK(CLK), .RN(n441), .Q(\reg_file[11][6] ) );
  SDFFRQX2M \reg_file_reg[11][5]  ( .D(n216), .SI(\reg_file[11][4] ), .SE(n498), .CK(CLK), .RN(n441), .Q(\reg_file[11][5] ) );
  SDFFRQX2M \reg_file_reg[11][4]  ( .D(n215), .SI(\reg_file[11][3] ), .SE(n498), .CK(CLK), .RN(n441), .Q(\reg_file[11][4] ) );
  SDFFRQX2M \reg_file_reg[11][3]  ( .D(n214), .SI(\reg_file[11][2] ), .SE(n485), .CK(CLK), .RN(n441), .Q(\reg_file[11][3] ) );
  SDFFRQX2M \reg_file_reg[11][2]  ( .D(n213), .SI(\reg_file[11][1] ), .SE(n482), .CK(CLK), .RN(n440), .Q(\reg_file[11][2] ) );
  SDFFRQX2M \reg_file_reg[11][1]  ( .D(n212), .SI(\reg_file[11][0] ), .SE(n484), .CK(CLK), .RN(n440), .Q(\reg_file[11][1] ) );
  SDFFRQX2M \reg_file_reg[11][0]  ( .D(n211), .SI(\reg_file[10][7] ), .SE(n483), .CK(CLK), .RN(n440), .Q(\reg_file[11][0] ) );
  SDFFRQX2M \reg_file_reg[13][7]  ( .D(n202), .SI(\reg_file[13][6] ), .SE(n482), .CK(CLK), .RN(n440), .Q(\reg_file[13][7] ) );
  SDFFRQX2M \reg_file_reg[13][6]  ( .D(n201), .SI(\reg_file[13][5] ), .SE(n484), .CK(CLK), .RN(n440), .Q(\reg_file[13][6] ) );
  SDFFRQX2M \reg_file_reg[13][5]  ( .D(n200), .SI(\reg_file[13][4] ), .SE(n483), .CK(CLK), .RN(n439), .Q(\reg_file[13][5] ) );
  SDFFRQX2M \reg_file_reg[13][4]  ( .D(n199), .SI(\reg_file[13][3] ), .SE(n482), .CK(CLK), .RN(n439), .Q(\reg_file[13][4] ) );
  SDFFRQX2M \reg_file_reg[13][3]  ( .D(n198), .SI(\reg_file[13][2] ), .SE(n476), .CK(CLK), .RN(n439), .Q(\reg_file[13][3] ) );
  SDFFRQX2M \reg_file_reg[13][2]  ( .D(n197), .SI(\reg_file[13][1] ), .SE(n496), .CK(CLK), .RN(n439), .Q(\reg_file[13][2] ) );
  SDFFRQX2M \reg_file_reg[13][1]  ( .D(n196), .SI(\reg_file[13][0] ), .SE(n496), .CK(CLK), .RN(n439), .Q(\reg_file[13][1] ) );
  SDFFRQX2M \reg_file_reg[13][0]  ( .D(n195), .SI(\reg_file[12][7] ), .SE(n496), .CK(CLK), .RN(n439), .Q(\reg_file[13][0] ) );
  SDFFRQX2M \reg_file_reg[15][7]  ( .D(n186), .SI(\reg_file[15][6] ), .SE(n496), .CK(CLK), .RN(n438), .Q(\reg_file[15][7] ) );
  SDFFRQX2M \reg_file_reg[15][6]  ( .D(n185), .SI(\reg_file[15][5] ), .SE(n496), .CK(CLK), .RN(n438), .Q(\reg_file[15][6] ) );
  SDFFRQX2M \reg_file_reg[15][5]  ( .D(n184), .SI(\reg_file[15][4] ), .SE(n496), .CK(CLK), .RN(n438), .Q(\reg_file[15][5] ) );
  SDFFRQX2M \reg_file_reg[15][4]  ( .D(n183), .SI(\reg_file[15][3] ), .SE(n495), .CK(CLK), .RN(n438), .Q(\reg_file[15][4] ) );
  SDFFRQX2M \reg_file_reg[15][3]  ( .D(n182), .SI(\reg_file[15][2] ), .SE(n495), .CK(CLK), .RN(n438), .Q(\reg_file[15][3] ) );
  SDFFRQX2M \reg_file_reg[15][2]  ( .D(n181), .SI(\reg_file[15][1] ), .SE(n495), .CK(CLK), .RN(n438), .Q(\reg_file[15][2] ) );
  SDFFRQX2M \reg_file_reg[15][1]  ( .D(n180), .SI(\reg_file[15][0] ), .SE(n495), .CK(CLK), .RN(n438), .Q(\reg_file[15][1] ) );
  SDFFRQX2M \reg_file_reg[15][0]  ( .D(n179), .SI(\reg_file[14][7] ), .SE(n495), .CK(CLK), .RN(n438), .Q(\reg_file[15][0] ) );
  SDFFRQX2M \reg_file_reg[4][7]  ( .D(n274), .SI(\reg_file[4][6] ), .SE(n495), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][7] ) );
  SDFFRQX2M \reg_file_reg[4][6]  ( .D(n273), .SI(\reg_file[4][5] ), .SE(n481), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][6] ) );
  SDFFRQX2M \reg_file_reg[4][5]  ( .D(n272), .SI(\reg_file[4][4] ), .SE(n478), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][5] ) );
  SDFFRQX2M \reg_file_reg[4][4]  ( .D(n271), .SI(\reg_file[4][3] ), .SE(n480), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][4] ) );
  SDFFRQX2M \reg_file_reg[4][3]  ( .D(n270), .SI(\reg_file[4][2] ), .SE(n479), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][3] ) );
  SDFFRQX2M \reg_file_reg[4][2]  ( .D(n269), .SI(\reg_file[4][1] ), .SE(n478), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][2] ) );
  SDFFRQX2M \reg_file_reg[4][1]  ( .D(n268), .SI(\reg_file[4][0] ), .SE(n480), 
        .CK(CLK), .RN(n445), .Q(\reg_file[4][1] ) );
  SDFFRQX2M \reg_file_reg[4][0]  ( .D(n267), .SI(REG3[7]), .SE(n479), .CK(CLK), 
        .RN(n445), .Q(\reg_file[4][0] ) );
  SDFFRQX2M \reg_file_reg[6][7]  ( .D(n258), .SI(\reg_file[6][6] ), .SE(n478), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][7] ) );
  SDFFRQX2M \reg_file_reg[6][6]  ( .D(n257), .SI(\reg_file[6][5] ), .SE(n475), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][6] ) );
  SDFFRQX2M \reg_file_reg[6][5]  ( .D(n256), .SI(\reg_file[6][4] ), .SE(n493), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][5] ) );
  SDFFRQX2M \reg_file_reg[6][4]  ( .D(n255), .SI(\reg_file[6][3] ), .SE(n493), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][4] ) );
  SDFFRQX2M \reg_file_reg[6][3]  ( .D(n254), .SI(\reg_file[6][2] ), .SE(n493), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][3] ) );
  SDFFRQX2M \reg_file_reg[6][2]  ( .D(n253), .SI(\reg_file[6][1] ), .SE(n493), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][2] ) );
  SDFFRQX2M \reg_file_reg[6][1]  ( .D(n252), .SI(\reg_file[6][0] ), .SE(n493), 
        .CK(CLK), .RN(n444), .Q(\reg_file[6][1] ) );
  SDFFRQX2M \reg_file_reg[6][0]  ( .D(n251), .SI(\reg_file[5][7] ), .SE(n493), 
        .CK(CLK), .RN(n443), .Q(\reg_file[6][0] ) );
  SDFFRQX2M \reg_file_reg[8][7]  ( .D(n242), .SI(\reg_file[8][6] ), .SE(n472), 
        .CK(CLK), .RN(n443), .Q(\reg_file[8][7] ) );
  SDFFRQX2M \reg_file_reg[8][6]  ( .D(n241), .SI(\reg_file[8][5] ), .SE(n471), 
        .CK(CLK), .RN(n443), .Q(\reg_file[8][6] ) );
  SDFFRQX2M \reg_file_reg[8][5]  ( .D(n240), .SI(\reg_file[8][4] ), .SE(n470), 
        .CK(CLK), .RN(n443), .Q(\reg_file[8][5] ) );
  SDFFRQX2M \reg_file_reg[8][4]  ( .D(n239), .SI(\reg_file[8][3] ), .SE(n468), 
        .CK(CLK), .RN(n442), .Q(\reg_file[8][4] ) );
  SDFFRQX2M \reg_file_reg[8][3]  ( .D(n238), .SI(\reg_file[8][2] ), .SE(n467), 
        .CK(CLK), .RN(n442), .Q(\reg_file[8][3] ) );
  SDFFRQX2M \reg_file_reg[8][2]  ( .D(n237), .SI(\reg_file[8][1] ), .SE(n469), 
        .CK(CLK), .RN(n442), .Q(\reg_file[8][2] ) );
  SDFFRQX2M \reg_file_reg[8][1]  ( .D(n236), .SI(\reg_file[8][0] ), .SE(n470), 
        .CK(CLK), .RN(n442), .Q(\reg_file[8][1] ) );
  SDFFRQX2M \reg_file_reg[8][0]  ( .D(n235), .SI(\reg_file[7][7] ), .SE(n469), 
        .CK(CLK), .RN(n442), .Q(\reg_file[8][0] ) );
  SDFFRQX2M \reg_file_reg[10][7]  ( .D(n226), .SI(\reg_file[10][6] ), .SE(n467), .CK(CLK), .RN(n441), .Q(\reg_file[10][7] ) );
  SDFFRQX2M \reg_file_reg[10][6]  ( .D(n225), .SI(\reg_file[10][5] ), .SE(n467), .CK(CLK), .RN(n441), .Q(\reg_file[10][6] ) );
  SDFFRQX2M \reg_file_reg[10][5]  ( .D(n224), .SI(\reg_file[10][4] ), .SE(n470), .CK(CLK), .RN(n441), .Q(\reg_file[10][5] ) );
  SDFFRQX2M \reg_file_reg[10][4]  ( .D(n223), .SI(\reg_file[10][3] ), .SE(n471), .CK(CLK), .RN(n441), .Q(\reg_file[10][4] ) );
  SDFFRQX2M \reg_file_reg[10][3]  ( .D(n222), .SI(\reg_file[10][2] ), .SE(n471), .CK(CLK), .RN(n441), .Q(\reg_file[10][3] ) );
  SDFFRQX2M \reg_file_reg[10][2]  ( .D(n221), .SI(\reg_file[10][1] ), .SE(n470), .CK(CLK), .RN(n441), .Q(\reg_file[10][2] ) );
  SDFFRQX2M \reg_file_reg[10][1]  ( .D(n220), .SI(\reg_file[10][0] ), .SE(n467), .CK(CLK), .RN(n441), .Q(\reg_file[10][1] ) );
  SDFFRQX2M \reg_file_reg[10][0]  ( .D(n219), .SI(\reg_file[9][7] ), .SE(n468), 
        .CK(CLK), .RN(n441), .Q(\reg_file[10][0] ) );
  SDFFRQX2M \reg_file_reg[12][7]  ( .D(n210), .SI(\reg_file[12][6] ), .SE(n471), .CK(CLK), .RN(n440), .Q(\reg_file[12][7] ) );
  SDFFRQX2M \reg_file_reg[12][6]  ( .D(n209), .SI(\reg_file[12][5] ), .SE(n468), .CK(CLK), .RN(n440), .Q(\reg_file[12][6] ) );
  SDFFRQX2M \reg_file_reg[12][5]  ( .D(n208), .SI(\reg_file[12][4] ), .SE(n473), .CK(CLK), .RN(n440), .Q(\reg_file[12][5] ) );
  SDFFRQX2M \reg_file_reg[12][4]  ( .D(n207), .SI(\reg_file[12][3] ), .SE(n467), .CK(CLK), .RN(n440), .Q(\reg_file[12][4] ) );
  SDFFRQX2M \reg_file_reg[12][3]  ( .D(n206), .SI(\reg_file[12][2] ), .SE(n472), .CK(CLK), .RN(n440), .Q(\reg_file[12][3] ) );
  SDFFRQX2M \reg_file_reg[12][2]  ( .D(n205), .SI(\reg_file[12][1] ), .SE(n470), .CK(CLK), .RN(n440), .Q(\reg_file[12][2] ) );
  SDFFRQX2M \reg_file_reg[12][1]  ( .D(n204), .SI(\reg_file[12][0] ), .SE(n469), .CK(CLK), .RN(n440), .Q(\reg_file[12][1] ) );
  SDFFRQX2M \reg_file_reg[12][0]  ( .D(n203), .SI(\reg_file[11][7] ), .SE(n471), .CK(CLK), .RN(n440), .Q(\reg_file[12][0] ) );
  SDFFRQX2M \reg_file_reg[14][7]  ( .D(n194), .SI(\reg_file[14][6] ), .SE(n470), .CK(CLK), .RN(n439), .Q(\reg_file[14][7] ) );
  SDFFRQX2M \reg_file_reg[14][6]  ( .D(n193), .SI(\reg_file[14][5] ), .SE(n469), .CK(CLK), .RN(n439), .Q(\reg_file[14][6] ) );
  SDFFRQX2M \reg_file_reg[14][5]  ( .D(n192), .SI(\reg_file[14][4] ), .SE(n468), .CK(CLK), .RN(n439), .Q(\reg_file[14][5] ) );
  SDFFRQX2M \reg_file_reg[14][4]  ( .D(n191), .SI(\reg_file[14][3] ), .SE(n471), .CK(CLK), .RN(n439), .Q(\reg_file[14][4] ) );
  SDFFRQX2M \reg_file_reg[14][3]  ( .D(n190), .SI(\reg_file[14][2] ), .SE(n473), .CK(CLK), .RN(n439), .Q(\reg_file[14][3] ) );
  SDFFRQX2M \reg_file_reg[14][2]  ( .D(n189), .SI(\reg_file[14][1] ), .SE(n473), .CK(CLK), .RN(n439), .Q(\reg_file[14][2] ) );
  SDFFRQX2M \reg_file_reg[14][1]  ( .D(n188), .SI(\reg_file[14][0] ), .SE(n473), .CK(CLK), .RN(n438), .Q(\reg_file[14][1] ) );
  SDFFRQX2M \reg_file_reg[14][0]  ( .D(n187), .SI(\reg_file[13][7] ), .SE(n468), .CK(CLK), .RN(n439), .Q(\reg_file[14][0] ) );
  SDFFSQX2M \reg_file_reg[3][5]  ( .D(n280), .SI(REG3[4]), .SE(n472), .CK(CLK), 
        .SN(n438), .Q(REG3[5]) );
  SDFFSQX2M \reg_file_reg[2][0]  ( .D(n283), .SI(REG1[7]), .SE(n472), .CK(CLK), 
        .SN(n438), .Q(REG2[0]) );
  SDFFRQX2M \reg_file_reg[2][1]  ( .D(n284), .SI(REG2[0]), .SE(n467), .CK(CLK), 
        .RN(n446), .Q(REG2[1]) );
  SDFFRQX2M \reg_file_reg[3][6]  ( .D(n281), .SI(REG3[5]), .SE(n468), .CK(CLK), 
        .RN(n446), .Q(REG3[6]) );
  SDFFRQX2M \reg_file_reg[3][4]  ( .D(n279), .SI(REG3[3]), .SE(n468), .CK(CLK), 
        .RN(n446), .Q(REG3[4]) );
  SDFFRQX2M \reg_file_reg[3][7]  ( .D(n282), .SI(REG3[6]), .SE(n473), .CK(CLK), 
        .RN(n446), .Q(REG3[7]) );
  SDFFRQX2M \reg_file_reg[3][3]  ( .D(n278), .SI(REG3[2]), .SE(n473), .CK(CLK), 
        .RN(n446), .Q(REG3[3]) );
  SDFFRQX2M \reg_file_reg[3][2]  ( .D(n277), .SI(REG3[1]), .SE(n469), .CK(CLK), 
        .RN(n445), .Q(REG3[2]) );
  SDFFRQX2M \reg_file_reg[3][0]  ( .D(n275), .SI(REG2[7]), .SE(n471), .CK(CLK), 
        .RN(n445), .Q(REG3[0]) );
  SDFFRQX2M \reg_file_reg[3][1]  ( .D(n276), .SI(REG3[0]), .SE(n469), .CK(CLK), 
        .RN(n445), .Q(REG3[1]) );
  SDFFRQX2M \reg_file_reg[2][4]  ( .D(n287), .SI(REG2[3]), .SE(n472), .CK(CLK), 
        .RN(n446), .Q(REG2[4]) );
  SDFFRQX4M \reg_file_reg[2][2]  ( .D(n285), .SI(REG2[1]), .SE(n491), .CK(CLK), 
        .RN(n446), .Q(REG2[2]) );
  SDFFRQX2M \reg_file_reg[0][1]  ( .D(n300), .SI(REG0[0]), .SE(n473), .CK(CLK), 
        .RN(n447), .Q(REG0[1]) );
  SDFFRQX2M \reg_file_reg[0][0]  ( .D(n299), .SI(RdData[7]), .SE(n474), .CK(
        CLK), .RN(n447), .Q(REG0[0]) );
  SDFFRQX2M \reg_file_reg[0][2]  ( .D(n301), .SI(REG0[1]), .SE(n474), .CK(CLK), 
        .RN(n447), .Q(REG0[2]) );
  SDFFRQX2M \reg_file_reg[0][3]  ( .D(n302), .SI(REG0[2]), .SE(n474), .CK(CLK), 
        .RN(n447), .Q(REG0[3]) );
  SDFFRQX2M \reg_file_reg[0][4]  ( .D(n303), .SI(REG0[3]), .SE(n474), .CK(CLK), 
        .RN(n447), .Q(REG0[4]) );
  SDFFRQX2M \reg_file_reg[0][5]  ( .D(n304), .SI(REG0[4]), .SE(n474), .CK(CLK), 
        .RN(n447), .Q(REG0[5]) );
  SDFFSQX2M \reg_file_reg[2][7]  ( .D(n290), .SI(REG2[6]), .SE(n472), .CK(CLK), 
        .SN(n438), .Q(REG2[7]) );
  SDFFRQX2M \reg_file_reg[2][3]  ( .D(n286), .SI(REG2[2]), .SE(n474), .CK(CLK), 
        .RN(n446), .Q(REG2[3]) );
  SDFFRQX2M \reg_file_reg[2][5]  ( .D(n288), .SI(REG2[4]), .SE(n474), .CK(CLK), 
        .RN(n446), .Q(REG2[5]) );
  SDFFRQX2M \reg_file_reg[2][6]  ( .D(n289), .SI(REG2[5]), .SE(n467), .CK(CLK), 
        .RN(n446), .Q(REG2[6]) );
  SDFFRQX2M \reg_file_reg[1][3]  ( .D(n294), .SI(REG1[2]), .SE(n470), .CK(CLK), 
        .RN(n447), .Q(REG1[3]) );
  SDFFRQX2M \reg_file_reg[1][2]  ( .D(n293), .SI(REG1[1]), .SE(test_se), .CK(
        CLK), .RN(n446), .Q(REG1[2]) );
  SDFFRQX2M \reg_file_reg[0][6]  ( .D(n305), .SI(REG0[5]), .SE(test_se), .CK(
        CLK), .RN(n447), .Q(REG0[6]) );
  SDFFRQX2M \reg_file_reg[0][7]  ( .D(n306), .SI(REG0[6]), .SE(test_se), .CK(
        CLK), .RN(n447), .Q(REG0[7]) );
  SDFFRQX2M \reg_file_reg[1][1]  ( .D(n292), .SI(REG1[0]), .SE(test_se), .CK(
        CLK), .RN(n446), .Q(REG1[1]) );
  SDFFRQX2M \reg_file_reg[1][6]  ( .D(n297), .SI(REG1[5]), .SE(test_se), .CK(
        CLK), .RN(n447), .Q(REG1[6]) );
  SDFFRQX4M \reg_file_reg[1][0]  ( .D(n291), .SI(REG0[7]), .SE(n490), .CK(CLK), 
        .RN(n446), .Q(REG1[0]) );
  SDFFRQX4M \reg_file_reg[1][4]  ( .D(n295), .SI(REG1[3]), .SE(n492), .CK(CLK), 
        .RN(n447), .Q(REG1[4]) );
  SDFFRQX4M \reg_file_reg[1][7]  ( .D(n298), .SI(REG1[6]), .SE(n491), .CK(CLK), 
        .RN(n447), .Q(REG1[7]) );
  SDFFRQX4M \reg_file_reg[1][5]  ( .D(n296), .SI(REG1[4]), .SE(n490), .CK(CLK), 
        .RN(n447), .Q(REG1[5]) );
  NOR2X2M U140 ( .A(n408), .B(N12), .Y(n397) );
  NAND2X2M U141 ( .A(N14), .B(n453), .Y(n386) );
  AOI21XLM U142 ( .A0(n391), .A1(n390), .B0(n389), .Y(n404) );
  NOR2X2M U143 ( .A(n453), .B(n407), .Y(n152) );
  NOR2X2M U144 ( .A(n453), .B(N12), .Y(n157) );
  NOR2X2M U145 ( .A(n407), .B(N13), .Y(n160) );
  NOR2X2M U146 ( .A(N12), .B(N13), .Y(n163) );
  AOI22XLM U147 ( .A0(REG0[0]), .A1(n421), .B0(REG1[0]), .B1(n418), .Y(n142)
         );
  AOI22XLM U148 ( .A0(REG0[4]), .A1(n420), .B0(REG1[4]), .B1(n417), .Y(n354)
         );
  AOI22XLM U149 ( .A0(REG0[6]), .A1(n419), .B0(REG1[6]), .B1(n416), .Y(n378)
         );
  AOI22XLM U150 ( .A0(REG0[7]), .A1(n419), .B0(REG1[7]), .B1(n416), .Y(n393)
         );
  AOI22XLM U151 ( .A0(REG0[1]), .A1(n421), .B0(REG1[1]), .B1(n418), .Y(n318)
         );
  AOI22XLM U152 ( .A0(REG0[2]), .A1(n421), .B0(REG1[2]), .B1(n418), .Y(n330)
         );
  AOI22XLM U153 ( .A0(REG0[3]), .A1(n420), .B0(REG1[3]), .B1(n417), .Y(n342)
         );
  OAI2BB2XLM U154 ( .B0(n463), .B1(n423), .A0N(REG1[0]), .A1N(n423), .Y(n291)
         );
  OAI2BB2XLM U155 ( .B0(n462), .B1(n175), .A0N(REG1[1]), .A1N(n423), .Y(n292)
         );
  OAI2BB2XLM U156 ( .B0(n461), .B1(n175), .A0N(REG1[2]), .A1N(n423), .Y(n293)
         );
  OAI2BB2XLM U157 ( .B0(n460), .B1(n175), .A0N(REG1[3]), .A1N(n423), .Y(n294)
         );
  OAI2BB2XLM U158 ( .B0(n459), .B1(n175), .A0N(REG1[4]), .A1N(n423), .Y(n295)
         );
  OAI2BB2XLM U159 ( .B0(n457), .B1(n423), .A0N(REG1[6]), .A1N(n423), .Y(n297)
         );
  OAI2BB2XLM U160 ( .B0(n457), .B1(n177), .A0N(REG0[6]), .A1N(n422), .Y(n305)
         );
  OAI2BB2XLM U161 ( .B0(n456), .B1(n177), .A0N(REG0[7]), .A1N(n422), .Y(n306)
         );
  BUFX2M U162 ( .A(n154), .Y(n436) );
  BUFX2M U163 ( .A(n169), .Y(n428) );
  INVX2M U164 ( .A(n178), .Y(n454) );
  BUFX2M U165 ( .A(n395), .Y(n411) );
  BUFX2M U166 ( .A(n395), .Y(n410) );
  BUFX2M U167 ( .A(n395), .Y(n409) );
  NOR2X2M U168 ( .A(n455), .B(RdEn), .Y(n166) );
  INVX2M U169 ( .A(WrEn), .Y(n455) );
  NAND2X2M U170 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U171 ( .A(n170), .B(n152), .Y(n169) );
  BUFX2M U172 ( .A(n171), .Y(n427) );
  BUFX2M U173 ( .A(n172), .Y(n426) );
  BUFX2M U174 ( .A(n173), .Y(n425) );
  BUFX2M U175 ( .A(n174), .Y(n424) );
  BUFX2M U176 ( .A(n175), .Y(n423) );
  BUFX2M U177 ( .A(n177), .Y(n422) );
  BUFX2M U178 ( .A(n156), .Y(n435) );
  BUFX2M U179 ( .A(n158), .Y(n434) );
  BUFX2M U180 ( .A(n159), .Y(n433) );
  BUFX2M U181 ( .A(n161), .Y(n432) );
  BUFX2M U182 ( .A(n162), .Y(n431) );
  BUFX2M U183 ( .A(n165), .Y(n430) );
  BUFX2M U184 ( .A(n167), .Y(n429) );
  BUFX2M U185 ( .A(n151), .Y(n437) );
  NAND2X2M U186 ( .A(RdEn), .B(n455), .Y(n178) );
  BUFX4M U187 ( .A(n451), .Y(n439) );
  BUFX4M U188 ( .A(n452), .Y(n440) );
  BUFX4M U189 ( .A(n451), .Y(n441) );
  BUFX4M U190 ( .A(n449), .Y(n442) );
  BUFX4M U191 ( .A(n452), .Y(n443) );
  BUFX4M U192 ( .A(n450), .Y(n444) );
  BUFX4M U193 ( .A(n449), .Y(n445) );
  BUFX4M U194 ( .A(n449), .Y(n446) );
  BUFX4M U195 ( .A(n450), .Y(n447) );
  BUFX2M U196 ( .A(n452), .Y(n448) );
  BUFX2M U197 ( .A(n396), .Y(n414) );
  BUFX2M U198 ( .A(n396), .Y(n413) );
  BUFX2M U199 ( .A(n416), .Y(n418) );
  BUFX2M U200 ( .A(n416), .Y(n417) );
  BUFX2M U201 ( .A(n396), .Y(n412) );
  BUFX2M U202 ( .A(n398), .Y(n421) );
  BUFX2M U203 ( .A(n398), .Y(n420) );
  BUFX2M U204 ( .A(n398), .Y(n419) );
  NAND2X2M U205 ( .A(n152), .B(n153), .Y(n151) );
  NAND2X2M U206 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U207 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U208 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U209 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U210 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U211 ( .A(n163), .B(n155), .Y(n165) );
  AND2X2M U212 ( .A(n164), .B(n408), .Y(n155) );
  AND2X2M U213 ( .A(n176), .B(n408), .Y(n170) );
  NAND2X2M U214 ( .A(n168), .B(n152), .Y(n167) );
  NAND2X2M U215 ( .A(n168), .B(n157), .Y(n171) );
  NAND2X2M U216 ( .A(n170), .B(n157), .Y(n172) );
  NAND2X2M U217 ( .A(n168), .B(n160), .Y(n173) );
  NAND2X2M U218 ( .A(n170), .B(n160), .Y(n174) );
  NAND2X2M U219 ( .A(n168), .B(n163), .Y(n175) );
  NAND2X2M U220 ( .A(n170), .B(n163), .Y(n177) );
  BUFX4M U221 ( .A(n450), .Y(n438) );
  BUFX2M U222 ( .A(n451), .Y(n450) );
  BUFX2M U223 ( .A(n452), .Y(n449) );
  INVX2M U224 ( .A(N11), .Y(n408) );
  INVX2M U225 ( .A(N12), .Y(n407) );
  INVX2M U226 ( .A(n415), .Y(n416) );
  INVX2M U227 ( .A(n397), .Y(n415) );
  INVX2M U228 ( .A(N14), .Y(n406) );
  INVX4M U229 ( .A(Wrdata[0]), .Y(n463) );
  INVX4M U230 ( .A(Wrdata[1]), .Y(n462) );
  INVX4M U231 ( .A(Wrdata[2]), .Y(n461) );
  INVX4M U232 ( .A(Wrdata[3]), .Y(n460) );
  INVX4M U233 ( .A(Wrdata[4]), .Y(n459) );
  INVX4M U234 ( .A(Wrdata[5]), .Y(n458) );
  INVX4M U235 ( .A(Wrdata[6]), .Y(n457) );
  INVX4M U236 ( .A(Wrdata[7]), .Y(n456) );
  NOR2BX2M U237 ( .AN(n166), .B(N14), .Y(n176) );
  INVX2M U238 ( .A(N13), .Y(n453) );
  AND2X2M U239 ( .A(n164), .B(N11), .Y(n153) );
  AND2X2M U240 ( .A(n176), .B(N11), .Y(n168) );
  AND2X2M U241 ( .A(N14), .B(n166), .Y(n164) );
  BUFX2M U242 ( .A(RST), .Y(n452) );
  BUFX2M U243 ( .A(RST), .Y(n451) );
  AO22X1M U244 ( .A0(N43), .A1(n454), .B0(RdData[0]), .B1(n178), .Y(n307) );
  AO22X1M U245 ( .A0(N42), .A1(n454), .B0(RdData[1]), .B1(n178), .Y(n308) );
  AO22X1M U246 ( .A0(N41), .A1(n454), .B0(RdData[2]), .B1(n178), .Y(n309) );
  AO22X1M U247 ( .A0(N40), .A1(n454), .B0(RdData[3]), .B1(n178), .Y(n310) );
  AO22X1M U248 ( .A0(N39), .A1(n454), .B0(RdData[4]), .B1(n178), .Y(n311) );
  AO22X1M U249 ( .A0(N38), .A1(n454), .B0(RdData[5]), .B1(n178), .Y(n312) );
  AO22X1M U250 ( .A0(N37), .A1(n454), .B0(RdData[6]), .B1(n178), .Y(n313) );
  AO22X1M U251 ( .A0(N36), .A1(n454), .B0(RdData[7]), .B1(n178), .Y(n314) );
  OAI2BB2X1M U252 ( .B0(n437), .B1(n463), .A0N(\reg_file[15][0] ), .A1N(n437), 
        .Y(n179) );
  OAI2BB2X1M U253 ( .B0(n437), .B1(n462), .A0N(\reg_file[15][1] ), .A1N(n437), 
        .Y(n180) );
  OAI2BB2X1M U254 ( .B0(n151), .B1(n461), .A0N(\reg_file[15][2] ), .A1N(n437), 
        .Y(n181) );
  OAI2BB2X1M U255 ( .B0(n151), .B1(n460), .A0N(\reg_file[15][3] ), .A1N(n437), 
        .Y(n182) );
  OAI2BB2X1M U256 ( .B0(n151), .B1(n459), .A0N(\reg_file[15][4] ), .A1N(n437), 
        .Y(n183) );
  OAI2BB2X1M U257 ( .B0(n437), .B1(n458), .A0N(\reg_file[15][5] ), .A1N(n437), 
        .Y(n184) );
  OAI2BB2X1M U258 ( .B0(n151), .B1(n457), .A0N(\reg_file[15][6] ), .A1N(n437), 
        .Y(n185) );
  OAI2BB2X1M U259 ( .B0(n151), .B1(n456), .A0N(\reg_file[15][7] ), .A1N(n437), 
        .Y(n186) );
  OAI2BB2X1M U260 ( .B0(n463), .B1(n436), .A0N(\reg_file[14][0] ), .A1N(n436), 
        .Y(n187) );
  OAI2BB2X1M U261 ( .B0(n462), .B1(n436), .A0N(\reg_file[14][1] ), .A1N(n436), 
        .Y(n188) );
  OAI2BB2X1M U262 ( .B0(n461), .B1(n436), .A0N(\reg_file[14][2] ), .A1N(n436), 
        .Y(n189) );
  OAI2BB2X1M U263 ( .B0(n460), .B1(n154), .A0N(\reg_file[14][3] ), .A1N(n436), 
        .Y(n190) );
  OAI2BB2X1M U264 ( .B0(n459), .B1(n154), .A0N(\reg_file[14][4] ), .A1N(n436), 
        .Y(n191) );
  OAI2BB2X1M U265 ( .B0(n458), .B1(n154), .A0N(\reg_file[14][5] ), .A1N(n436), 
        .Y(n192) );
  OAI2BB2X1M U266 ( .B0(n457), .B1(n154), .A0N(\reg_file[14][6] ), .A1N(n436), 
        .Y(n193) );
  OAI2BB2X1M U267 ( .B0(n456), .B1(n154), .A0N(\reg_file[14][7] ), .A1N(n436), 
        .Y(n194) );
  OAI2BB2X1M U268 ( .B0(n463), .B1(n435), .A0N(\reg_file[13][0] ), .A1N(n435), 
        .Y(n195) );
  OAI2BB2X1M U269 ( .B0(n462), .B1(n435), .A0N(\reg_file[13][1] ), .A1N(n435), 
        .Y(n196) );
  OAI2BB2X1M U270 ( .B0(n461), .B1(n435), .A0N(\reg_file[13][2] ), .A1N(n435), 
        .Y(n197) );
  OAI2BB2X1M U271 ( .B0(n460), .B1(n156), .A0N(\reg_file[13][3] ), .A1N(n435), 
        .Y(n198) );
  OAI2BB2X1M U272 ( .B0(n459), .B1(n156), .A0N(\reg_file[13][4] ), .A1N(n435), 
        .Y(n199) );
  OAI2BB2X1M U273 ( .B0(n458), .B1(n156), .A0N(\reg_file[13][5] ), .A1N(n435), 
        .Y(n200) );
  OAI2BB2X1M U274 ( .B0(n457), .B1(n156), .A0N(\reg_file[13][6] ), .A1N(n435), 
        .Y(n201) );
  OAI2BB2X1M U275 ( .B0(n456), .B1(n156), .A0N(\reg_file[13][7] ), .A1N(n435), 
        .Y(n202) );
  OAI2BB2X1M U276 ( .B0(n463), .B1(n434), .A0N(\reg_file[12][0] ), .A1N(n434), 
        .Y(n203) );
  OAI2BB2X1M U277 ( .B0(n462), .B1(n434), .A0N(\reg_file[12][1] ), .A1N(n434), 
        .Y(n204) );
  OAI2BB2X1M U278 ( .B0(n461), .B1(n434), .A0N(\reg_file[12][2] ), .A1N(n434), 
        .Y(n205) );
  OAI2BB2X1M U279 ( .B0(n460), .B1(n158), .A0N(\reg_file[12][3] ), .A1N(n434), 
        .Y(n206) );
  OAI2BB2X1M U280 ( .B0(n459), .B1(n158), .A0N(\reg_file[12][4] ), .A1N(n434), 
        .Y(n207) );
  OAI2BB2X1M U281 ( .B0(n458), .B1(n158), .A0N(\reg_file[12][5] ), .A1N(n434), 
        .Y(n208) );
  OAI2BB2X1M U282 ( .B0(n457), .B1(n158), .A0N(\reg_file[12][6] ), .A1N(n434), 
        .Y(n209) );
  OAI2BB2X1M U283 ( .B0(n456), .B1(n158), .A0N(\reg_file[12][7] ), .A1N(n434), 
        .Y(n210) );
  OAI2BB2X1M U284 ( .B0(n463), .B1(n433), .A0N(\reg_file[11][0] ), .A1N(n433), 
        .Y(n211) );
  OAI2BB2X1M U285 ( .B0(n462), .B1(n433), .A0N(\reg_file[11][1] ), .A1N(n433), 
        .Y(n212) );
  OAI2BB2X1M U286 ( .B0(n461), .B1(n433), .A0N(\reg_file[11][2] ), .A1N(n433), 
        .Y(n213) );
  OAI2BB2X1M U287 ( .B0(n460), .B1(n159), .A0N(\reg_file[11][3] ), .A1N(n433), 
        .Y(n214) );
  OAI2BB2X1M U288 ( .B0(n459), .B1(n159), .A0N(\reg_file[11][4] ), .A1N(n433), 
        .Y(n215) );
  OAI2BB2X1M U289 ( .B0(n458), .B1(n159), .A0N(\reg_file[11][5] ), .A1N(n433), 
        .Y(n216) );
  OAI2BB2X1M U290 ( .B0(n457), .B1(n159), .A0N(\reg_file[11][6] ), .A1N(n433), 
        .Y(n217) );
  OAI2BB2X1M U291 ( .B0(n456), .B1(n159), .A0N(\reg_file[11][7] ), .A1N(n433), 
        .Y(n218) );
  OAI2BB2X1M U292 ( .B0(n463), .B1(n432), .A0N(\reg_file[10][0] ), .A1N(n432), 
        .Y(n219) );
  OAI2BB2X1M U293 ( .B0(n462), .B1(n432), .A0N(\reg_file[10][1] ), .A1N(n432), 
        .Y(n220) );
  OAI2BB2X1M U294 ( .B0(n461), .B1(n432), .A0N(\reg_file[10][2] ), .A1N(n432), 
        .Y(n221) );
  OAI2BB2X1M U295 ( .B0(n460), .B1(n161), .A0N(\reg_file[10][3] ), .A1N(n432), 
        .Y(n222) );
  OAI2BB2X1M U296 ( .B0(n459), .B1(n161), .A0N(\reg_file[10][4] ), .A1N(n432), 
        .Y(n223) );
  OAI2BB2X1M U297 ( .B0(n458), .B1(n161), .A0N(\reg_file[10][5] ), .A1N(n432), 
        .Y(n224) );
  OAI2BB2X1M U298 ( .B0(n457), .B1(n161), .A0N(\reg_file[10][6] ), .A1N(n432), 
        .Y(n225) );
  OAI2BB2X1M U299 ( .B0(n456), .B1(n161), .A0N(\reg_file[10][7] ), .A1N(n432), 
        .Y(n226) );
  OAI2BB2X1M U300 ( .B0(n463), .B1(n431), .A0N(\reg_file[9][0] ), .A1N(n431), 
        .Y(n227) );
  OAI2BB2X1M U301 ( .B0(n462), .B1(n431), .A0N(\reg_file[9][1] ), .A1N(n431), 
        .Y(n228) );
  OAI2BB2X1M U302 ( .B0(n461), .B1(n431), .A0N(\reg_file[9][2] ), .A1N(n431), 
        .Y(n229) );
  OAI2BB2X1M U303 ( .B0(n460), .B1(n162), .A0N(\reg_file[9][3] ), .A1N(n431), 
        .Y(n230) );
  OAI2BB2X1M U304 ( .B0(n459), .B1(n162), .A0N(\reg_file[9][4] ), .A1N(n431), 
        .Y(n231) );
  OAI2BB2X1M U305 ( .B0(n458), .B1(n162), .A0N(\reg_file[9][5] ), .A1N(n431), 
        .Y(n232) );
  OAI2BB2X1M U306 ( .B0(n457), .B1(n162), .A0N(\reg_file[9][6] ), .A1N(n431), 
        .Y(n233) );
  OAI2BB2X1M U307 ( .B0(n456), .B1(n162), .A0N(\reg_file[9][7] ), .A1N(n431), 
        .Y(n234) );
  OAI2BB2X1M U308 ( .B0(n463), .B1(n430), .A0N(\reg_file[8][0] ), .A1N(n430), 
        .Y(n235) );
  OAI2BB2X1M U309 ( .B0(n462), .B1(n430), .A0N(\reg_file[8][1] ), .A1N(n430), 
        .Y(n236) );
  OAI2BB2X1M U310 ( .B0(n461), .B1(n430), .A0N(\reg_file[8][2] ), .A1N(n430), 
        .Y(n237) );
  OAI2BB2X1M U311 ( .B0(n460), .B1(n165), .A0N(\reg_file[8][3] ), .A1N(n430), 
        .Y(n238) );
  OAI2BB2X1M U312 ( .B0(n459), .B1(n165), .A0N(\reg_file[8][4] ), .A1N(n430), 
        .Y(n239) );
  OAI2BB2X1M U313 ( .B0(n458), .B1(n165), .A0N(\reg_file[8][5] ), .A1N(n430), 
        .Y(n240) );
  OAI2BB2X1M U314 ( .B0(n457), .B1(n165), .A0N(\reg_file[8][6] ), .A1N(n430), 
        .Y(n241) );
  OAI2BB2X1M U315 ( .B0(n456), .B1(n165), .A0N(\reg_file[8][7] ), .A1N(n430), 
        .Y(n242) );
  OAI2BB2X1M U316 ( .B0(n463), .B1(n429), .A0N(\reg_file[7][0] ), .A1N(n429), 
        .Y(n243) );
  OAI2BB2X1M U317 ( .B0(n462), .B1(n429), .A0N(\reg_file[7][1] ), .A1N(n429), 
        .Y(n244) );
  OAI2BB2X1M U318 ( .B0(n461), .B1(n167), .A0N(\reg_file[7][2] ), .A1N(n429), 
        .Y(n245) );
  OAI2BB2X1M U319 ( .B0(n460), .B1(n167), .A0N(\reg_file[7][3] ), .A1N(n429), 
        .Y(n246) );
  OAI2BB2X1M U320 ( .B0(n459), .B1(n167), .A0N(\reg_file[7][4] ), .A1N(n429), 
        .Y(n247) );
  OAI2BB2X1M U321 ( .B0(n458), .B1(n167), .A0N(\reg_file[7][5] ), .A1N(n429), 
        .Y(n248) );
  OAI2BB2X1M U322 ( .B0(n457), .B1(n167), .A0N(\reg_file[7][6] ), .A1N(n429), 
        .Y(n249) );
  OAI2BB2X1M U323 ( .B0(n456), .B1(n167), .A0N(\reg_file[7][7] ), .A1N(n429), 
        .Y(n250) );
  OAI2BB2X1M U324 ( .B0(n463), .B1(n428), .A0N(\reg_file[6][0] ), .A1N(n428), 
        .Y(n251) );
  OAI2BB2X1M U325 ( .B0(n462), .B1(n428), .A0N(\reg_file[6][1] ), .A1N(n428), 
        .Y(n252) );
  OAI2BB2X1M U326 ( .B0(n461), .B1(n169), .A0N(\reg_file[6][2] ), .A1N(n428), 
        .Y(n253) );
  OAI2BB2X1M U327 ( .B0(n460), .B1(n169), .A0N(\reg_file[6][3] ), .A1N(n428), 
        .Y(n254) );
  OAI2BB2X1M U328 ( .B0(n459), .B1(n169), .A0N(\reg_file[6][4] ), .A1N(n428), 
        .Y(n255) );
  OAI2BB2X1M U329 ( .B0(n458), .B1(n169), .A0N(\reg_file[6][5] ), .A1N(n428), 
        .Y(n256) );
  OAI2BB2X1M U330 ( .B0(n457), .B1(n169), .A0N(\reg_file[6][6] ), .A1N(n428), 
        .Y(n257) );
  OAI2BB2X1M U331 ( .B0(n456), .B1(n169), .A0N(\reg_file[6][7] ), .A1N(n428), 
        .Y(n258) );
  OAI2BB2X1M U332 ( .B0(n463), .B1(n427), .A0N(\reg_file[5][0] ), .A1N(n427), 
        .Y(n259) );
  OAI2BB2X1M U333 ( .B0(n462), .B1(n427), .A0N(\reg_file[5][1] ), .A1N(n427), 
        .Y(n260) );
  OAI2BB2X1M U334 ( .B0(n461), .B1(n171), .A0N(\reg_file[5][2] ), .A1N(n427), 
        .Y(n261) );
  OAI2BB2X1M U335 ( .B0(n460), .B1(n171), .A0N(\reg_file[5][3] ), .A1N(n427), 
        .Y(n262) );
  OAI2BB2X1M U336 ( .B0(n459), .B1(n171), .A0N(\reg_file[5][4] ), .A1N(n427), 
        .Y(n263) );
  OAI2BB2X1M U337 ( .B0(n458), .B1(n171), .A0N(\reg_file[5][5] ), .A1N(n427), 
        .Y(n264) );
  OAI2BB2X1M U338 ( .B0(n457), .B1(n171), .A0N(\reg_file[5][6] ), .A1N(n427), 
        .Y(n265) );
  OAI2BB2X1M U339 ( .B0(n456), .B1(n171), .A0N(\reg_file[5][7] ), .A1N(n427), 
        .Y(n266) );
  OAI2BB2X1M U340 ( .B0(n463), .B1(n426), .A0N(\reg_file[4][0] ), .A1N(n426), 
        .Y(n267) );
  OAI2BB2X1M U341 ( .B0(n462), .B1(n426), .A0N(\reg_file[4][1] ), .A1N(n426), 
        .Y(n268) );
  OAI2BB2X1M U342 ( .B0(n461), .B1(n172), .A0N(\reg_file[4][2] ), .A1N(n426), 
        .Y(n269) );
  OAI2BB2X1M U343 ( .B0(n460), .B1(n172), .A0N(\reg_file[4][3] ), .A1N(n426), 
        .Y(n270) );
  OAI2BB2X1M U344 ( .B0(n459), .B1(n172), .A0N(\reg_file[4][4] ), .A1N(n426), 
        .Y(n271) );
  OAI2BB2X1M U345 ( .B0(n458), .B1(n172), .A0N(\reg_file[4][5] ), .A1N(n426), 
        .Y(n272) );
  OAI2BB2X1M U346 ( .B0(n457), .B1(n172), .A0N(\reg_file[4][6] ), .A1N(n426), 
        .Y(n273) );
  OAI2BB2X1M U347 ( .B0(n456), .B1(n172), .A0N(\reg_file[4][7] ), .A1N(n426), 
        .Y(n274) );
  OAI2BB2X1M U348 ( .B0(n463), .B1(n425), .A0N(REG3[0]), .A1N(n425), .Y(n275)
         );
  OAI2BB2X1M U349 ( .B0(n462), .B1(n173), .A0N(REG3[1]), .A1N(n425), .Y(n276)
         );
  OAI2BB2X1M U350 ( .B0(n461), .B1(n173), .A0N(REG3[2]), .A1N(n425), .Y(n277)
         );
  OAI2BB2X1M U351 ( .B0(n460), .B1(n173), .A0N(REG3[3]), .A1N(n425), .Y(n278)
         );
  OAI2BB2X1M U352 ( .B0(n459), .B1(n173), .A0N(REG3[4]), .A1N(n425), .Y(n279)
         );
  OAI2BB2X1M U353 ( .B0(n457), .B1(n173), .A0N(REG3[6]), .A1N(n425), .Y(n281)
         );
  OAI2BB2X1M U354 ( .B0(n456), .B1(n173), .A0N(REG3[7]), .A1N(n425), .Y(n282)
         );
  OAI2BB2X1M U355 ( .B0(n462), .B1(n174), .A0N(REG2[1]), .A1N(n424), .Y(n284)
         );
  OAI2BB2X1M U356 ( .B0(n461), .B1(n174), .A0N(REG2[2]), .A1N(n424), .Y(n285)
         );
  OAI2BB2X1M U357 ( .B0(n460), .B1(n174), .A0N(REG2[3]), .A1N(n424), .Y(n286)
         );
  OAI2BB2X1M U358 ( .B0(n459), .B1(n174), .A0N(REG2[4]), .A1N(n424), .Y(n287)
         );
  OAI2BB2X1M U359 ( .B0(n458), .B1(n174), .A0N(REG2[5]), .A1N(n424), .Y(n288)
         );
  OAI2BB2X1M U360 ( .B0(n457), .B1(n174), .A0N(REG2[6]), .A1N(n424), .Y(n289)
         );
  OAI2BB2X1M U361 ( .B0(n458), .B1(n175), .A0N(REG1[5]), .A1N(n423), .Y(n296)
         );
  OAI2BB2X1M U362 ( .B0(n456), .B1(n175), .A0N(REG1[7]), .A1N(n423), .Y(n298)
         );
  OAI2BB2X1M U363 ( .B0(n463), .B1(n422), .A0N(REG0[0]), .A1N(n422), .Y(n299)
         );
  OAI2BB2X1M U364 ( .B0(n462), .B1(n177), .A0N(REG0[1]), .A1N(n422), .Y(n300)
         );
  OAI2BB2X1M U365 ( .B0(n461), .B1(n177), .A0N(REG0[2]), .A1N(n422), .Y(n301)
         );
  OAI2BB2X1M U366 ( .B0(n460), .B1(n177), .A0N(REG0[3]), .A1N(n422), .Y(n302)
         );
  OAI2BB2X1M U367 ( .B0(n459), .B1(n177), .A0N(REG0[4]), .A1N(n422), .Y(n303)
         );
  OAI2BB2X1M U368 ( .B0(n458), .B1(n177), .A0N(REG0[5]), .A1N(n422), .Y(n304)
         );
  OAI2BB2X1M U369 ( .B0(n458), .B1(n425), .A0N(REG3[5]), .A1N(n425), .Y(n280)
         );
  OAI2BB2X1M U370 ( .B0(n463), .B1(n424), .A0N(REG2[0]), .A1N(n424), .Y(n283)
         );
  OAI2BB2X1M U371 ( .B0(n456), .B1(n424), .A0N(REG2[7]), .A1N(n424), .Y(n290)
         );
  NOR2X1M U372 ( .A(n407), .B(N11), .Y(n396) );
  NOR2X1M U373 ( .A(n407), .B(n408), .Y(n395) );
  AOI22X1M U374 ( .A0(\reg_file[10][0] ), .A1(n414), .B0(\reg_file[11][0] ), 
        .B1(n411), .Y(n139) );
  NOR2X1M U375 ( .A(N11), .B(N12), .Y(n398) );
  AOI22X1M U376 ( .A0(\reg_file[8][0] ), .A1(n421), .B0(\reg_file[9][0] ), 
        .B1(n418), .Y(n138) );
  AOI21X1M U377 ( .A0(n139), .A1(n138), .B0(n386), .Y(n149) );
  AOI22X1M U378 ( .A0(\reg_file[14][0] ), .A1(n414), .B0(\reg_file[15][0] ), 
        .B1(n411), .Y(n141) );
  AOI22X1M U379 ( .A0(\reg_file[12][0] ), .A1(n421), .B0(\reg_file[13][0] ), 
        .B1(n418), .Y(n140) );
  CLKNAND2X2M U380 ( .A(N14), .B(N13), .Y(n389) );
  AOI21X1M U381 ( .A0(n141), .A1(n140), .B0(n389), .Y(n148) );
  AOI22X1M U382 ( .A0(REG2[0]), .A1(n414), .B0(REG3[0]), .B1(n411), .Y(n143)
         );
  CLKNAND2X2M U383 ( .A(n453), .B(n406), .Y(n392) );
  AOI21X1M U384 ( .A0(n143), .A1(n142), .B0(n392), .Y(n147) );
  AOI22X1M U385 ( .A0(\reg_file[6][0] ), .A1(n414), .B0(\reg_file[7][0] ), 
        .B1(n411), .Y(n145) );
  AOI22X1M U386 ( .A0(\reg_file[4][0] ), .A1(n421), .B0(\reg_file[5][0] ), 
        .B1(n418), .Y(n144) );
  CLKNAND2X2M U387 ( .A(N13), .B(n406), .Y(n399) );
  AOI21X1M U388 ( .A0(n145), .A1(n144), .B0(n399), .Y(n146) );
  OR4X1M U389 ( .A(n149), .B(n148), .C(n147), .D(n146), .Y(N43) );
  AOI22X1M U390 ( .A0(\reg_file[10][1] ), .A1(n414), .B0(\reg_file[11][1] ), 
        .B1(n411), .Y(n315) );
  AOI22X1M U391 ( .A0(\reg_file[8][1] ), .A1(n421), .B0(\reg_file[9][1] ), 
        .B1(n418), .Y(n150) );
  AOI21X1M U392 ( .A0(n315), .A1(n150), .B0(n386), .Y(n325) );
  AOI22X1M U393 ( .A0(\reg_file[14][1] ), .A1(n414), .B0(\reg_file[15][1] ), 
        .B1(n411), .Y(n317) );
  AOI22X1M U394 ( .A0(\reg_file[12][1] ), .A1(n421), .B0(\reg_file[13][1] ), 
        .B1(n418), .Y(n316) );
  AOI21X1M U395 ( .A0(n317), .A1(n316), .B0(n389), .Y(n324) );
  AOI22X1M U396 ( .A0(REG2[1]), .A1(n414), .B0(REG3[1]), .B1(n411), .Y(n319)
         );
  AOI21X1M U397 ( .A0(n319), .A1(n318), .B0(n392), .Y(n323) );
  AOI22X1M U398 ( .A0(\reg_file[6][1] ), .A1(n414), .B0(\reg_file[7][1] ), 
        .B1(n411), .Y(n321) );
  AOI22X1M U399 ( .A0(\reg_file[4][1] ), .A1(n421), .B0(\reg_file[5][1] ), 
        .B1(n418), .Y(n320) );
  AOI21X1M U400 ( .A0(n321), .A1(n320), .B0(n399), .Y(n322) );
  OR4X1M U401 ( .A(n325), .B(n324), .C(n323), .D(n322), .Y(N42) );
  AOI22X1M U402 ( .A0(\reg_file[10][2] ), .A1(n414), .B0(\reg_file[11][2] ), 
        .B1(n411), .Y(n327) );
  AOI22X1M U403 ( .A0(\reg_file[8][2] ), .A1(n421), .B0(\reg_file[9][2] ), 
        .B1(n418), .Y(n326) );
  AOI21X1M U404 ( .A0(n327), .A1(n326), .B0(n386), .Y(n337) );
  AOI22X1M U405 ( .A0(\reg_file[14][2] ), .A1(n414), .B0(\reg_file[15][2] ), 
        .B1(n411), .Y(n329) );
  AOI22X1M U406 ( .A0(\reg_file[12][2] ), .A1(n421), .B0(\reg_file[13][2] ), 
        .B1(n418), .Y(n328) );
  AOI21X1M U407 ( .A0(n329), .A1(n328), .B0(n389), .Y(n336) );
  AOI22X1M U408 ( .A0(REG2[2]), .A1(n414), .B0(REG3[2]), .B1(n411), .Y(n331)
         );
  AOI21X1M U409 ( .A0(n331), .A1(n330), .B0(n392), .Y(n335) );
  AOI22X1M U410 ( .A0(\reg_file[6][2] ), .A1(n414), .B0(\reg_file[7][2] ), 
        .B1(n411), .Y(n333) );
  AOI22X1M U411 ( .A0(\reg_file[4][2] ), .A1(n421), .B0(\reg_file[5][2] ), 
        .B1(n418), .Y(n332) );
  AOI21X1M U412 ( .A0(n333), .A1(n332), .B0(n399), .Y(n334) );
  OR4X1M U413 ( .A(n337), .B(n336), .C(n335), .D(n334), .Y(N41) );
  AOI22X1M U414 ( .A0(\reg_file[10][3] ), .A1(n413), .B0(\reg_file[11][3] ), 
        .B1(n410), .Y(n339) );
  AOI22X1M U415 ( .A0(\reg_file[8][3] ), .A1(n420), .B0(\reg_file[9][3] ), 
        .B1(n417), .Y(n338) );
  AOI21X1M U416 ( .A0(n339), .A1(n338), .B0(n386), .Y(n349) );
  AOI22X1M U417 ( .A0(\reg_file[14][3] ), .A1(n413), .B0(\reg_file[15][3] ), 
        .B1(n410), .Y(n341) );
  AOI22X1M U418 ( .A0(\reg_file[12][3] ), .A1(n420), .B0(\reg_file[13][3] ), 
        .B1(n417), .Y(n340) );
  AOI21X1M U419 ( .A0(n341), .A1(n340), .B0(n389), .Y(n348) );
  AOI22X1M U420 ( .A0(REG2[3]), .A1(n413), .B0(REG3[3]), .B1(n410), .Y(n343)
         );
  AOI21X1M U421 ( .A0(n343), .A1(n342), .B0(n392), .Y(n347) );
  AOI22X1M U422 ( .A0(\reg_file[6][3] ), .A1(n413), .B0(\reg_file[7][3] ), 
        .B1(n410), .Y(n345) );
  AOI22X1M U423 ( .A0(\reg_file[4][3] ), .A1(n420), .B0(\reg_file[5][3] ), 
        .B1(n417), .Y(n344) );
  AOI21X1M U424 ( .A0(n345), .A1(n344), .B0(n399), .Y(n346) );
  OR4X1M U425 ( .A(n349), .B(n348), .C(n347), .D(n346), .Y(N40) );
  AOI22X1M U426 ( .A0(\reg_file[10][4] ), .A1(n413), .B0(\reg_file[11][4] ), 
        .B1(n410), .Y(n351) );
  AOI22X1M U427 ( .A0(\reg_file[8][4] ), .A1(n420), .B0(\reg_file[9][4] ), 
        .B1(n417), .Y(n350) );
  AOI21X1M U428 ( .A0(n351), .A1(n350), .B0(n386), .Y(n361) );
  AOI22X1M U429 ( .A0(\reg_file[14][4] ), .A1(n413), .B0(\reg_file[15][4] ), 
        .B1(n410), .Y(n353) );
  AOI22X1M U430 ( .A0(\reg_file[12][4] ), .A1(n420), .B0(\reg_file[13][4] ), 
        .B1(n417), .Y(n352) );
  AOI21X1M U431 ( .A0(n353), .A1(n352), .B0(n389), .Y(n360) );
  AOI22X1M U432 ( .A0(REG2[4]), .A1(n413), .B0(REG3[4]), .B1(n410), .Y(n355)
         );
  AOI21X1M U433 ( .A0(n355), .A1(n354), .B0(n392), .Y(n359) );
  AOI22X1M U434 ( .A0(\reg_file[6][4] ), .A1(n413), .B0(\reg_file[7][4] ), 
        .B1(n410), .Y(n357) );
  AOI22X1M U435 ( .A0(\reg_file[4][4] ), .A1(n420), .B0(\reg_file[5][4] ), 
        .B1(n417), .Y(n356) );
  AOI21X1M U436 ( .A0(n357), .A1(n356), .B0(n399), .Y(n358) );
  OR4X1M U437 ( .A(n361), .B(n360), .C(n359), .D(n358), .Y(N39) );
  AOI22X1M U438 ( .A0(\reg_file[10][5] ), .A1(n413), .B0(\reg_file[11][5] ), 
        .B1(n410), .Y(n363) );
  AOI22X1M U439 ( .A0(\reg_file[8][5] ), .A1(n420), .B0(\reg_file[9][5] ), 
        .B1(n417), .Y(n362) );
  AOI21X1M U440 ( .A0(n363), .A1(n362), .B0(n386), .Y(n373) );
  AOI22X1M U441 ( .A0(\reg_file[14][5] ), .A1(n413), .B0(\reg_file[15][5] ), 
        .B1(n410), .Y(n365) );
  AOI22X1M U442 ( .A0(\reg_file[12][5] ), .A1(n420), .B0(\reg_file[13][5] ), 
        .B1(n417), .Y(n364) );
  AOI21X1M U443 ( .A0(n365), .A1(n364), .B0(n389), .Y(n372) );
  AOI22X1M U444 ( .A0(REG2[5]), .A1(n413), .B0(REG3[5]), .B1(n410), .Y(n367)
         );
  AOI22X1M U445 ( .A0(REG0[5]), .A1(n420), .B0(REG1[5]), .B1(n417), .Y(n366)
         );
  AOI21X1M U446 ( .A0(n367), .A1(n366), .B0(n392), .Y(n371) );
  AOI22X1M U447 ( .A0(\reg_file[6][5] ), .A1(n413), .B0(\reg_file[7][5] ), 
        .B1(n410), .Y(n369) );
  AOI22X1M U448 ( .A0(\reg_file[4][5] ), .A1(n420), .B0(\reg_file[5][5] ), 
        .B1(n417), .Y(n368) );
  AOI21X1M U449 ( .A0(n369), .A1(n368), .B0(n399), .Y(n370) );
  OR4X1M U450 ( .A(n373), .B(n372), .C(n371), .D(n370), .Y(N38) );
  AOI22X1M U451 ( .A0(\reg_file[10][6] ), .A1(n412), .B0(\reg_file[11][6] ), 
        .B1(n409), .Y(n375) );
  AOI22X1M U452 ( .A0(\reg_file[8][6] ), .A1(n419), .B0(\reg_file[9][6] ), 
        .B1(n416), .Y(n374) );
  AOI21X1M U453 ( .A0(n375), .A1(n374), .B0(n386), .Y(n385) );
  AOI22X1M U454 ( .A0(\reg_file[14][6] ), .A1(n412), .B0(\reg_file[15][6] ), 
        .B1(n409), .Y(n377) );
  AOI22X1M U455 ( .A0(\reg_file[12][6] ), .A1(n419), .B0(\reg_file[13][6] ), 
        .B1(n397), .Y(n376) );
  AOI21X1M U456 ( .A0(n377), .A1(n376), .B0(n389), .Y(n384) );
  AOI22X1M U457 ( .A0(REG2[6]), .A1(n412), .B0(REG3[6]), .B1(n409), .Y(n379)
         );
  AOI21X1M U458 ( .A0(n379), .A1(n378), .B0(n392), .Y(n383) );
  AOI22X1M U459 ( .A0(\reg_file[6][6] ), .A1(n412), .B0(\reg_file[7][6] ), 
        .B1(n409), .Y(n381) );
  AOI22X1M U460 ( .A0(\reg_file[4][6] ), .A1(n419), .B0(\reg_file[5][6] ), 
        .B1(n397), .Y(n380) );
  AOI21X1M U461 ( .A0(n381), .A1(n380), .B0(n399), .Y(n382) );
  OR4X1M U462 ( .A(n385), .B(n384), .C(n383), .D(n382), .Y(N37) );
  AOI22X1M U463 ( .A0(\reg_file[10][7] ), .A1(n412), .B0(\reg_file[11][7] ), 
        .B1(n409), .Y(n388) );
  AOI22X1M U464 ( .A0(\reg_file[8][7] ), .A1(n419), .B0(\reg_file[9][7] ), 
        .B1(n397), .Y(n387) );
  AOI21X1M U465 ( .A0(n388), .A1(n387), .B0(n386), .Y(n405) );
  AOI22X1M U466 ( .A0(\reg_file[14][7] ), .A1(n412), .B0(\reg_file[15][7] ), 
        .B1(n409), .Y(n391) );
  AOI22X1M U467 ( .A0(\reg_file[12][7] ), .A1(n419), .B0(\reg_file[13][7] ), 
        .B1(n416), .Y(n390) );
  AOI22X1M U468 ( .A0(REG2[7]), .A1(n412), .B0(REG3[7]), .B1(n409), .Y(n394)
         );
  AOI21X1M U469 ( .A0(n394), .A1(n393), .B0(n392), .Y(n403) );
  AOI22X1M U470 ( .A0(\reg_file[6][7] ), .A1(n412), .B0(\reg_file[7][7] ), 
        .B1(n409), .Y(n401) );
  AOI22X1M U471 ( .A0(\reg_file[4][7] ), .A1(n419), .B0(\reg_file[5][7] ), 
        .B1(n416), .Y(n400) );
  AOI21X1M U472 ( .A0(n401), .A1(n400), .B0(n399), .Y(n402) );
  OR4X1M U473 ( .A(n405), .B(n404), .C(n403), .D(n402), .Y(N36) );
  DLY1X1M U474 ( .A(test_se), .Y(n467) );
  DLY1X1M U475 ( .A(test_se), .Y(n468) );
  DLY1X1M U476 ( .A(test_se), .Y(n469) );
  DLY1X1M U477 ( .A(test_se), .Y(n470) );
  DLY1X1M U478 ( .A(test_se), .Y(n471) );
  DLY1X1M U479 ( .A(test_se), .Y(n472) );
  DLY1X1M U480 ( .A(test_se), .Y(n473) );
  DLY1X1M U481 ( .A(n469), .Y(n474) );
  DLY1X1M U482 ( .A(n493), .Y(n475) );
  DLY1X1M U483 ( .A(n496), .Y(n476) );
  INVXLM U484 ( .A(n494), .Y(n477) );
  INVXLM U485 ( .A(n475), .Y(n494) );
  INVXLM U486 ( .A(n494), .Y(n478) );
  INVXLM U487 ( .A(n494), .Y(n479) );
  INVXLM U488 ( .A(n494), .Y(n480) );
  INVXLM U489 ( .A(n497), .Y(n481) );
  INVXLM U490 ( .A(n476), .Y(n497) );
  INVXLM U491 ( .A(n497), .Y(n482) );
  INVXLM U492 ( .A(n497), .Y(n483) );
  INVXLM U493 ( .A(n497), .Y(n484) );
  INVXLM U494 ( .A(n500), .Y(n485) );
  INVXLM U495 ( .A(n499), .Y(n500) );
  INVXLM U496 ( .A(n500), .Y(n486) );
  INVXLM U497 ( .A(n500), .Y(n487) );
  INVXLM U498 ( .A(n500), .Y(n488) );
  INVXLM U499 ( .A(n502), .Y(n489) );
  INVXLM U500 ( .A(n501), .Y(n502) );
  INVXLM U501 ( .A(n502), .Y(n490) );
  INVXLM U502 ( .A(n502), .Y(n491) );
  INVXLM U503 ( .A(n502), .Y(n492) );
  DLY1X1M U504 ( .A(n472), .Y(n493) );
  DLY1X1M U505 ( .A(n479), .Y(n495) );
  DLY1X1M U506 ( .A(n495), .Y(n496) );
  DLY1X1M U507 ( .A(n483), .Y(n498) );
  DLY1X1M U508 ( .A(n498), .Y(n499) );
  DLY1X1M U509 ( .A(n487), .Y(n501) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n17, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n18;

  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n9), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n12), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n9), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n11), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n9), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n12), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n11), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n12), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n11), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n12), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n11), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n12), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n12), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n8), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n12), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n7), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n7), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n10), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n9), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n10), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n10), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n10), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n8), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n8), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n11), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n6), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n11), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n10), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  MX2X4M U1 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  INVX2M U2 ( .A(b[5]), .Y(n8) );
  NOR2X12M U3 ( .A(b[6]), .B(b[7]), .Y(n16) );
  INVX2M U4 ( .A(b[4]), .Y(n9) );
  AND3X4M U5 ( .A(n14), .B(n11), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X2M U6 ( .A(n15), .B(n10), .Y(n14) );
  AND2X2M U7 ( .A(\u_div/CryTmp[2][6] ), .B(n16), .Y(n17) );
  AND3X2M U8 ( .A(n11), .B(n12), .C(\u_div/CryTmp[7][1] ), .Y(n2) );
  AND2X2M U9 ( .A(n14), .B(n2), .Y(quotient[7]) );
  INVX4M U10 ( .A(b[0]), .Y(n13) );
  INVX2M U11 ( .A(b[3]), .Y(n10) );
  INVX2M U12 ( .A(b[2]), .Y(n11) );
  AND2X2M U13 ( .A(\u_div/CryTmp[5][3] ), .B(n14), .Y(quotient[5]) );
  AND2X4M U14 ( .A(\u_div/CryTmp[1][7] ), .B(n6), .Y(quotient[1]) );
  BUFX2M U15 ( .A(n17), .Y(quotient[2]) );
  INVX2M U16 ( .A(b[1]), .Y(n12) );
  MX2X3M U17 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  MX2XLM U18 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2XLM U19 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  OR2X2M U20 ( .A(n13), .B(a[4]), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U21 ( .A(n13), .B(a[3]), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U22 ( .A(n13), .B(a[2]), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U23 ( .A(n13), .B(a[1]), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U24 ( .A(n13), .B(a[6]), .Y(\u_div/CryTmp[6][1] ) );
  OR2X2M U25 ( .A(n13), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  MX2XLM U26 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2XLM U28 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2XLM U29 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2XLM U30 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2XLM U31 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  MX2XLM U32 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2XLM U33 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  AND2X1M U35 ( .A(n8), .B(n16), .Y(n3) );
  OR2X2M U36 ( .A(n13), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U37 ( .A(n13), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U38 ( .A(n13), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U39 ( .A(n13), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U40 ( .A(n13), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U41 ( .A(n13), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U42 ( .A(n13), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U43 ( .A(n13), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U44 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U45 ( .A(b[6]), .Y(n7) );
  INVX2M U46 ( .A(n13), .Y(n4) );
  INVX2M U47 ( .A(a[0]), .Y(n5) );
  INVX2M U48 ( .A(b[7]), .Y(n6) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U53 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U56 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U59 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U61 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(n17), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U62 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U63 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n17), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U64 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND2X1M U65 ( .A(\u_div/CryTmp[4][4] ), .B(n15), .Y(quotient[4]) );
  AND3X1M U66 ( .A(n16), .B(n9), .C(n8), .Y(n15) );
  NAND2X4M U34 ( .A(\u_div/CryTmp[3][5] ), .B(n3), .Y(n18) );
  CLKINVX40M U67 ( .A(n18), .Y(quotient[3]) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXLM U1 ( .A(B[0]), .Y(n9) );
  INVXLM U2 ( .A(B[4]), .Y(n5) );
  INVXLM U3 ( .A(B[2]), .Y(n7) );
  INVXLM U4 ( .A(B[3]), .Y(n6) );
  INVX2M U5 ( .A(B[1]), .Y(n8) );
  NAND2X2M U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U7 ( .A(A[0]), .Y(n1) );
  INVX2M U8 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U9 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U10 ( .A(B[5]), .Y(n4) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  AND2X1M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XLM U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U3 ( .A(A[6]), .Y(n7) );
  CLKXOR2X2M U4 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  INVX2M U5 ( .A(n7), .Y(SUM[6]) );
  CLKXOR2X2M U6 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  BUFX2M U7 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U8 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U9 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U10 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U11 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U12 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U13 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U14 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U15 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U16 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U17 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U18 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U19 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  OAI21BX1M U20 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  XNOR2X1M U21 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U22 ( .A(n21), .B(n19), .Y(n22) );
  NOR2X1M U23 ( .A(B[11]), .B(A[11]), .Y(n19) );
  AND2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U25 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U26 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AOI2BB1X1M U27 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  AND2X1M U28 ( .A(B[9]), .B(A[9]), .Y(n10) );
  NOR2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n11) );
  OA21X1M U30 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U31 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NOR2X1M U32 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2BX1M U33 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U34 ( .A(B[10]), .B(A[10]), .Y(n25) );
  NOR2X1M U35 ( .A(B[10]), .B(A[10]), .Y(n23) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKINVX2M U10 ( .A(B[2]), .Y(n30) );
  CLKINVX2M U11 ( .A(B[3]), .Y(n29) );
  CLKINVX2M U12 ( .A(B[4]), .Y(n28) );
  CLKINVX2M U13 ( .A(B[0]), .Y(n32) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U20 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U23 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U28 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX2M U29 ( .A(B[6]), .Y(n26) );
  INVX2M U30 ( .A(B[1]), .Y(n31) );
  INVX2M U31 ( .A(A[0]), .Y(n24) );
  INVX2M U32 ( .A(A[1]), .Y(n23) );
  CLKXOR2X2M U33 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  CLKXOR2X2M U34 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKXOR2X2M U35 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U36 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  CLKXOR2X2M U37 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX2M U38 ( .A(A[2]), .Y(n22) );
  INVX2M U39 ( .A(A[3]), .Y(n21) );
  INVX2M U40 ( .A(A[4]), .Y(n20) );
  INVX2M U41 ( .A(A[7]), .Y(n17) );
  INVX2M U42 ( .A(A[5]), .Y(n19) );
  INVX2M U43 ( .A(A[6]), .Y(n18) );
  INVX2M U44 ( .A(B[7]), .Y(n25) );
  INVX2M U45 ( .A(B[5]), .Y(n27) );
  NOR2X1M U47 ( .A(n17), .B(n25), .Y(\ab[7][7] ) );
  NOR2X1M U48 ( .A(n17), .B(n26), .Y(\ab[7][6] ) );
  NOR2X1M U49 ( .A(n17), .B(n27), .Y(\ab[7][5] ) );
  NOR2X1M U50 ( .A(n17), .B(n28), .Y(\ab[7][4] ) );
  NOR2X1M U51 ( .A(n17), .B(n29), .Y(\ab[7][3] ) );
  NOR2X1M U52 ( .A(n17), .B(n30), .Y(\ab[7][2] ) );
  NOR2X1M U53 ( .A(n17), .B(n31), .Y(\ab[7][1] ) );
  NOR2X1M U54 ( .A(n17), .B(n32), .Y(\ab[7][0] ) );
  NOR2X1M U55 ( .A(n25), .B(n18), .Y(\ab[6][7] ) );
  NOR2X1M U56 ( .A(n26), .B(n18), .Y(\ab[6][6] ) );
  NOR2X1M U57 ( .A(n27), .B(n18), .Y(\ab[6][5] ) );
  NOR2X1M U58 ( .A(n28), .B(n18), .Y(\ab[6][4] ) );
  NOR2X1M U59 ( .A(n29), .B(n18), .Y(\ab[6][3] ) );
  NOR2X1M U60 ( .A(n30), .B(n18), .Y(\ab[6][2] ) );
  NOR2X1M U61 ( .A(n31), .B(n18), .Y(\ab[6][1] ) );
  NOR2X1M U62 ( .A(n32), .B(n18), .Y(\ab[6][0] ) );
  NOR2X1M U63 ( .A(n25), .B(n19), .Y(\ab[5][7] ) );
  NOR2X1M U64 ( .A(n26), .B(n19), .Y(\ab[5][6] ) );
  NOR2X1M U65 ( .A(n27), .B(n19), .Y(\ab[5][5] ) );
  NOR2X1M U66 ( .A(n28), .B(n19), .Y(\ab[5][4] ) );
  NOR2X1M U67 ( .A(n29), .B(n19), .Y(\ab[5][3] ) );
  NOR2X1M U68 ( .A(n30), .B(n19), .Y(\ab[5][2] ) );
  NOR2X1M U69 ( .A(n31), .B(n19), .Y(\ab[5][1] ) );
  NOR2X1M U70 ( .A(n32), .B(n19), .Y(\ab[5][0] ) );
  NOR2X1M U71 ( .A(n25), .B(n20), .Y(\ab[4][7] ) );
  NOR2X1M U72 ( .A(n26), .B(n20), .Y(\ab[4][6] ) );
  NOR2X1M U73 ( .A(n27), .B(n20), .Y(\ab[4][5] ) );
  NOR2X1M U74 ( .A(n28), .B(n20), .Y(\ab[4][4] ) );
  NOR2X1M U75 ( .A(n29), .B(n20), .Y(\ab[4][3] ) );
  NOR2X1M U76 ( .A(n30), .B(n20), .Y(\ab[4][2] ) );
  NOR2X1M U77 ( .A(n31), .B(n20), .Y(\ab[4][1] ) );
  NOR2X1M U78 ( .A(n32), .B(n20), .Y(\ab[4][0] ) );
  NOR2X1M U79 ( .A(n25), .B(n21), .Y(\ab[3][7] ) );
  NOR2X1M U80 ( .A(n26), .B(n21), .Y(\ab[3][6] ) );
  NOR2X1M U81 ( .A(n27), .B(n21), .Y(\ab[3][5] ) );
  NOR2X1M U82 ( .A(n28), .B(n21), .Y(\ab[3][4] ) );
  NOR2X1M U83 ( .A(n29), .B(n21), .Y(\ab[3][3] ) );
  NOR2X1M U84 ( .A(n30), .B(n21), .Y(\ab[3][2] ) );
  NOR2X1M U85 ( .A(n31), .B(n21), .Y(\ab[3][1] ) );
  NOR2X1M U86 ( .A(n32), .B(n21), .Y(\ab[3][0] ) );
  NOR2X1M U87 ( .A(n25), .B(n22), .Y(\ab[2][7] ) );
  NOR2X1M U88 ( .A(n26), .B(n22), .Y(\ab[2][6] ) );
  NOR2X1M U89 ( .A(n27), .B(n22), .Y(\ab[2][5] ) );
  NOR2X1M U90 ( .A(n28), .B(n22), .Y(\ab[2][4] ) );
  NOR2X1M U91 ( .A(n29), .B(n22), .Y(\ab[2][3] ) );
  NOR2X1M U92 ( .A(n30), .B(n22), .Y(\ab[2][2] ) );
  NOR2X1M U93 ( .A(n31), .B(n22), .Y(\ab[2][1] ) );
  NOR2X1M U94 ( .A(n32), .B(n22), .Y(\ab[2][0] ) );
  NOR2X1M U95 ( .A(n25), .B(n23), .Y(\ab[1][7] ) );
  NOR2X1M U96 ( .A(n26), .B(n23), .Y(\ab[1][6] ) );
  NOR2X1M U97 ( .A(n27), .B(n23), .Y(\ab[1][5] ) );
  NOR2X1M U98 ( .A(n28), .B(n23), .Y(\ab[1][4] ) );
  NOR2X1M U99 ( .A(n29), .B(n23), .Y(\ab[1][3] ) );
  NOR2X1M U100 ( .A(n30), .B(n23), .Y(\ab[1][2] ) );
  NOR2X1M U101 ( .A(n31), .B(n23), .Y(\ab[1][1] ) );
  NOR2X1M U102 ( .A(n32), .B(n23), .Y(\ab[1][0] ) );
  NOR2X1M U103 ( .A(n25), .B(n24), .Y(\ab[0][7] ) );
  NOR2X1M U104 ( .A(n26), .B(n24), .Y(\ab[0][6] ) );
  NOR2X1M U105 ( .A(n27), .B(n24), .Y(\ab[0][5] ) );
  NOR2X1M U106 ( .A(n28), .B(n24), .Y(\ab[0][4] ) );
  NOR2X1M U107 ( .A(n29), .B(n24), .Y(\ab[0][3] ) );
  NOR2X1M U108 ( .A(n30), .B(n24), .Y(\ab[0][2] ) );
  NOR2X1M U109 ( .A(n31), .B(n24), .Y(\ab[0][1] ) );
  NOR2X1M U110 ( .A(n32), .B(n24), .Y(PRODUCT[0]) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n12, 
        n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_test_1 ( A, B, ALU_FUN, CLK, RST, Enalbe, 
        ALU_OUT, ALU_VALID, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enalbe, test_si, test_se;
  output ALU_VALID;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N158, N159, N160, N178, n10,
         n11, n12, n13, n14, n16, n18, n19, n21, n22, n24, n27, n28, n29, n30,
         n31, n33, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n58, n59, n62, n63, n64, n65, n66,
         n67, n70, n71, n72, n73, n74, n75, n78, n79, n80, n81, n82, n83, n86,
         n87, n88, n89, n90, n91, n92, n95, n96, n97, n98, n99, n101, n102,
         n104, n105, n106, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n125, n127, n129, n131, n133, n135,
         n137, n139, n141, n143, n145, n147, n149, n151, n153, n155, n3, n4,
         n5, n6, n7, n8, n9, n15, n17, n20, n23, n25, n26, n32, n34, n40, n46,
         n47, n57, n60, n61, n68, n69, n76, n77, n84, n85, n93, n94, n100,
         n103, n107, n108, n109, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n202, n203, n204;

  AOI222X4M U12 ( .A0(n17), .A1(n195), .B0(B[0]), .B1(n28), .C0(N126), .C1(n29), .Y(n11) );
  SDFFRQX2M ALU_VALID_reg ( .D(N178), .SI(ALU_OUT[15]), .SE(n203), .CK(CLK), 
        .RN(n61), .Q(ALU_VALID) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(n141), .SI(ALU_OUT[7]), .SE(n202), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(n155), .SI(ALU_OUT[14]), .SE(n204), .CK(CLK), .RN(n60), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(n153), .SI(ALU_OUT[13]), .SE(n203), .CK(CLK), .RN(n60), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(n151), .SI(ALU_OUT[12]), .SE(n202), .CK(CLK), .RN(n60), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(n149), .SI(ALU_OUT[11]), .SE(n204), .CK(CLK), .RN(n60), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(n147), .SI(ALU_OUT[10]), .SE(n203), .CK(CLK), .RN(n60), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(n145), .SI(ALU_OUT[9]), .SE(n202), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(n143), .SI(ALU_OUT[8]), .SE(n204), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(n139), .SI(ALU_OUT[6]), .SE(n203), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(n137), .SI(ALU_OUT[5]), .SE(n202), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(n135), .SI(ALU_OUT[4]), .SE(n204), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(n133), .SI(ALU_OUT[3]), .SE(n203), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(n131), .SI(ALU_OUT[2]), .SE(n202), .CK(CLK), 
        .RN(n60), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(n129), .SI(ALU_OUT[1]), .SE(n204), .CK(CLK), 
        .RN(n61), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(n127), .SI(ALU_OUT[0]), .SE(n203), .CK(CLK), 
        .RN(n61), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(n125), .SI(test_si), .SE(n202), .CK(CLK), 
        .RN(n61), .Q(ALU_OUT[0]) );
  BUFX4M U3 ( .A(A[7]), .Y(n57) );
  OAI221X1M U4 ( .A0(n195), .A1(n30), .B0(n25), .B1(n15), .C0(n31), .Y(n28) );
  AND3X2M U7 ( .A(n12), .B(n10), .C(n13), .Y(n3) );
  BUFX2M U8 ( .A(B[6]), .Y(n23) );
  NAND2X2M U9 ( .A(n11), .B(n3), .Y(n125) );
  BUFX2M U10 ( .A(B[1]), .Y(n20) );
  BUFX2M U11 ( .A(B[1]), .Y(n4) );
  BUFX4M U13 ( .A(A[6]), .Y(n47) );
  AOI222XLM U14 ( .A0(B[5]), .A1(n82), .B0(N106), .B1(n22), .C0(n83), .C1(n196), .Y(n80) );
  BUFX2M U15 ( .A(B[6]), .Y(n5) );
  AOI222XLM U16 ( .A0(N114), .A1(n9), .B0(N130), .B1(n29), .C0(n17), .C1(n192), 
        .Y(n71) );
  AOI222XLM U17 ( .A0(N117), .A1(n9), .B0(N133), .B1(n29), .C0(n17), .C1(n178), 
        .Y(n99) );
  AOI222XLM U18 ( .A0(N115), .A1(n9), .B0(N131), .B1(n29), .C0(n17), .C1(n191), 
        .Y(n79) );
  AOI22X1M U19 ( .A0(n188), .A1(n51), .B0(n190), .B1(n102), .Y(n49) );
  NOR3X2M U20 ( .A(n190), .B(ALU_FUN[2]), .C(n187), .Y(n51) );
  NOR3X2M U21 ( .A(n190), .B(ALU_FUN[0]), .C(n184), .Y(n18) );
  AOI222XLM U22 ( .A0(B[2]), .A1(n58), .B0(N103), .B1(n22), .C0(n59), .C1(n171), .Y(n55) );
  AOI222XLM U23 ( .A0(B[3]), .A1(n66), .B0(N104), .B1(n22), .C0(n67), .C1(n172), .Y(n64) );
  AOI222XLM U24 ( .A0(B[4]), .A1(n74), .B0(N105), .B1(n22), .C0(n75), .C1(n197), .Y(n72) );
  AOI222XLM U25 ( .A0(N108), .A1(n22), .B0(n47), .B1(n179), .C0(N99), .C1(n21), 
        .Y(n97) );
  AOI22XLM U26 ( .A0(n57), .A1(n182), .B0(ALU_OUT[7]), .B1(n184), .Y(n98) );
  AOI222XLM U27 ( .A0(N97), .A1(n21), .B0(n40), .B1(n179), .C0(n47), .C1(n14), 
        .Y(n81) );
  AOI222XLM U28 ( .A0(N98), .A1(n21), .B0(n46), .B1(n179), .C0(n57), .C1(n14), 
        .Y(n89) );
  AOI22XLM U29 ( .A0(n47), .A1(n182), .B0(ALU_OUT[6]), .B1(n184), .Y(n86) );
  INVXLM U30 ( .A(B[2]), .Y(n171) );
  NAND2BXLM U31 ( .AN(n40), .B(B[4]), .Y(n85) );
  INVXLM U32 ( .A(B[0]), .Y(n170) );
  INVXLM U33 ( .A(B[3]), .Y(n172) );
  INVXLM U34 ( .A(B[4]), .Y(n197) );
  AND2X2M U35 ( .A(n17), .B(n175), .Y(n6) );
  AND2X2M U36 ( .A(Enalbe), .B(n48), .Y(n7) );
  AND2X1M U37 ( .A(N127), .B(n29), .Y(n8) );
  NOR3X2M U38 ( .A(n6), .B(n7), .C(n8), .Y(n36) );
  BUFX2M U39 ( .A(n27), .Y(n17) );
  OAI31XLM U40 ( .A0(n49), .A1(n4), .A2(n26), .B0(n50), .Y(n48) );
  AOI222XLM U41 ( .A0(N113), .A1(n9), .B0(N129), .B1(n29), .C0(n17), .C1(n193), 
        .Y(n63) );
  INVX2M U42 ( .A(n95), .Y(n183) );
  NOR2X2M U43 ( .A(n184), .B(n49), .Y(n95) );
  INVX4M U44 ( .A(Enalbe), .Y(n184) );
  INVX2M U45 ( .A(n31), .Y(n182) );
  INVX2M U46 ( .A(n44), .Y(n179) );
  AOI222XLM U47 ( .A0(N112), .A1(n9), .B0(N128), .B1(n29), .C0(n17), .C1(n194), 
        .Y(n54) );
  AOI222X1M U48 ( .A0(N116), .A1(n9), .B0(N132), .B1(n29), .C0(n17), .C1(n177), 
        .Y(n87) );
  INVX2M U49 ( .A(n42), .Y(n180) );
  NAND3BX2M U50 ( .AN(n43), .B(n18), .C(N160), .Y(n42) );
  NAND2X2M U51 ( .A(n90), .B(n190), .Y(n31) );
  NAND2X2M U52 ( .A(Enalbe), .B(n52), .Y(n30) );
  NOR3X2M U53 ( .A(n43), .B(n184), .C(n187), .Y(n90) );
  NAND2X2M U54 ( .A(n102), .B(n187), .Y(n106) );
  NOR2X2M U55 ( .A(n188), .B(n189), .Y(n102) );
  INVX2M U56 ( .A(n17), .Y(n181) );
  OAI22X1M U57 ( .A0(n195), .A1(n44), .B0(n45), .B1(n198), .Y(n41) );
  AOI21X2M U58 ( .A0(n186), .A1(n175), .B0(n182), .Y(n45) );
  OAI21X2M U59 ( .A0(n175), .A1(n15), .B0(n181), .Y(n39) );
  INVX2M U60 ( .A(n15), .Y(n186) );
  NAND2X2M U61 ( .A(n102), .B(n18), .Y(n44) );
  AND2X2M U62 ( .A(n114), .B(n187), .Y(n21) );
  BUFX2M U63 ( .A(n33), .Y(n9) );
  AND2X2M U64 ( .A(n101), .B(n188), .Y(n114) );
  INVX4M U65 ( .A(n68), .Y(n60) );
  INVX2M U66 ( .A(n68), .Y(n61) );
  AOI33X2M U67 ( .A0(n51), .A1(ALU_FUN[1]), .A2(N159), .B0(n26), .B1(n52), 
        .B2(n4), .Y(n50) );
  INVX2M U68 ( .A(n5), .Y(n173) );
  INVX2M U69 ( .A(n109), .Y(n176) );
  INVX2M U70 ( .A(n47), .Y(n177) );
  INVX2M U71 ( .A(n69), .Y(n174) );
  INVX2M U72 ( .A(n26), .Y(n175) );
  AND4X2M U73 ( .A(N158), .B(n189), .C(n18), .D(ALU_FUN[1]), .Y(n16) );
  AOI21X4M U74 ( .A0(N109), .A1(n22), .B0(n95), .Y(n111) );
  AOI221XLM U75 ( .A0(n57), .A1(n186), .B0(n95), .B1(n178), .C0(n17), .Y(n105)
         );
  AOI221XLM U76 ( .A0(n186), .A1(n178), .B0(n57), .B1(n185), .C0(n182), .Y(
        n104) );
  INVX2M U77 ( .A(n30), .Y(n185) );
  OAI221X1M U78 ( .A0(n25), .A1(n183), .B0(n15), .B1(n195), .C0(n181), .Y(n19)
         );
  OAI221X1M U79 ( .A0(n32), .A1(n183), .B0(n15), .B1(n194), .C0(n181), .Y(n59)
         );
  OAI221X1M U80 ( .A0(n34), .A1(n183), .B0(n15), .B1(n193), .C0(n181), .Y(n67)
         );
  OAI221X1M U81 ( .A0(n40), .A1(n183), .B0(n15), .B1(n192), .C0(n181), .Y(n75)
         );
  OAI221X1M U82 ( .A0(n46), .A1(n183), .B0(n15), .B1(n191), .C0(n181), .Y(n83)
         );
  OAI221X1M U83 ( .A0(n47), .A1(n183), .B0(n15), .B1(n177), .C0(n181), .Y(n92)
         );
  OAI221X1M U84 ( .A0(n30), .A1(n194), .B0(n32), .B1(n15), .C0(n31), .Y(n58)
         );
  OAI221X1M U85 ( .A0(n30), .A1(n193), .B0(n34), .B1(n15), .C0(n31), .Y(n66)
         );
  OAI221X1M U86 ( .A0(n30), .A1(n192), .B0(n40), .B1(n15), .C0(n31), .Y(n74)
         );
  OAI221X1M U87 ( .A0(n30), .A1(n191), .B0(n46), .B1(n15), .C0(n31), .Y(n82)
         );
  OAI221X1M U88 ( .A0(n30), .A1(n177), .B0(n47), .B1(n15), .C0(n31), .Y(n91)
         );
  NAND2X2M U89 ( .A(ALU_FUN[2]), .B(n188), .Y(n43) );
  NOR3X2M U90 ( .A(n184), .B(ALU_FUN[3]), .C(n106), .Y(n27) );
  INVX2M U91 ( .A(ALU_FUN[0]), .Y(n187) );
  INVX2M U92 ( .A(ALU_FUN[3]), .Y(n190) );
  INVX2M U93 ( .A(ALU_FUN[1]), .Y(n188) );
  OAI2BB2X1M U94 ( .B0(ALU_FUN[3]), .B1(n43), .A0N(n188), .A1N(n51), .Y(n52)
         );
  INVX2M U95 ( .A(ALU_FUN[2]), .Y(n189) );
  AND2X2M U96 ( .A(n90), .B(ALU_FUN[3]), .Y(n14) );
  BUFX4M U97 ( .A(n24), .Y(n15) );
  NAND4X2M U98 ( .A(Enalbe), .B(ALU_FUN[3]), .C(n110), .D(n187), .Y(n24) );
  NOR2X2M U99 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n110) );
  AND3X2M U100 ( .A(n101), .B(ALU_FUN[0]), .C(ALU_FUN[1]), .Y(n29) );
  NOR3X2M U101 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .C(n184), .Y(n101) );
  AND2X2M U102 ( .A(n114), .B(ALU_FUN[0]), .Y(n22) );
  NOR2X2M U103 ( .A(n122), .B(n184), .Y(N178) );
  AND4X2M U104 ( .A(n43), .B(n106), .C(ALU_FUN[2]), .D(n49), .Y(n122) );
  AND3X2M U105 ( .A(n101), .B(ALU_FUN[1]), .C(n187), .Y(n33) );
  INVX2M U106 ( .A(n57), .Y(n178) );
  INVX2M U107 ( .A(n25), .Y(n195) );
  INVX2M U108 ( .A(n32), .Y(n194) );
  INVX2M U109 ( .A(n34), .Y(n193) );
  INVX2M U110 ( .A(n40), .Y(n192) );
  INVX2M U111 ( .A(n46), .Y(n191) );
  INVX2M U112 ( .A(n4), .Y(n198) );
  INVX2M U113 ( .A(RST), .Y(n68) );
  AOI222X1M U114 ( .A0(ALU_OUT[0]), .A1(n184), .B0(N110), .B1(n33), .C0(n182), 
        .C1(n25), .Y(n10) );
  AOI222X1M U115 ( .A0(n19), .A1(n170), .B0(N92), .B1(n21), .C0(N101), .C1(n22), .Y(n12) );
  AOI211X2M U116 ( .A0(n26), .A1(n14), .B0(n180), .C0(n16), .Y(n13) );
  NAND4X2M U117 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n127) );
  AOI222X1M U118 ( .A0(N102), .A1(n22), .B0(n32), .B1(n14), .C0(N93), .C1(n21), 
        .Y(n37) );
  AOI222X1M U119 ( .A0(ALU_OUT[1]), .A1(n184), .B0(N111), .B1(n33), .C0(n182), 
        .C1(n26), .Y(n35) );
  AOI211X2M U120 ( .A0(n39), .A1(n198), .B0(n41), .C0(n180), .Y(n38) );
  BUFX4M U121 ( .A(A[5]), .Y(n46) );
  NAND4X2M U122 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n129) );
  AOI222X1M U123 ( .A0(N94), .A1(n21), .B0(n179), .B1(n26), .C0(n34), .C1(n14), 
        .Y(n56) );
  AOI22X1M U124 ( .A0(n32), .A1(n182), .B0(ALU_OUT[2]), .B1(n184), .Y(n53) );
  BUFX4M U125 ( .A(A[4]), .Y(n40) );
  NAND4X2M U126 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n131) );
  AOI222X1M U127 ( .A0(N95), .A1(n21), .B0(n32), .B1(n179), .C0(n40), .C1(n14), 
        .Y(n65) );
  AOI22X1M U128 ( .A0(n34), .A1(n182), .B0(ALU_OUT[3]), .B1(n184), .Y(n62) );
  BUFX4M U129 ( .A(A[3]), .Y(n34) );
  NAND4X2M U130 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n133) );
  AOI222X1M U131 ( .A0(N96), .A1(n21), .B0(n34), .B1(n179), .C0(n46), .C1(n14), 
        .Y(n73) );
  AOI22X1M U132 ( .A0(n40), .A1(n182), .B0(ALU_OUT[4]), .B1(n184), .Y(n70) );
  BUFX4M U133 ( .A(A[2]), .Y(n32) );
  NAND2X2M U134 ( .A(n120), .B(n111), .Y(n153) );
  AOI22X1M U135 ( .A0(N124), .A1(n33), .B0(ALU_OUT[14]), .B1(n184), .Y(n120)
         );
  BUFX4M U153 ( .A(A[1]), .Y(n26) );
  NAND2X2M U154 ( .A(n121), .B(n111), .Y(n155) );
  AOI22X1M U155 ( .A0(N125), .A1(n33), .B0(ALU_OUT[15]), .B1(n184), .Y(n121)
         );
  BUFX4M U156 ( .A(A[0]), .Y(n25) );
  NAND2X2M U157 ( .A(n118), .B(n111), .Y(n149) );
  AOI22X1M U158 ( .A0(N122), .A1(n33), .B0(ALU_OUT[12]), .B1(n184), .Y(n118)
         );
  NAND2X2M U159 ( .A(n119), .B(n111), .Y(n151) );
  AOI22X1M U160 ( .A0(N123), .A1(n33), .B0(ALU_OUT[13]), .B1(n184), .Y(n119)
         );
  NAND4X2M U161 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n135) );
  AOI22X1M U162 ( .A0(n46), .A1(n182), .B0(ALU_OUT[5]), .B1(n184), .Y(n78) );
  NAND2X2M U163 ( .A(n116), .B(n111), .Y(n145) );
  AOI22X1M U164 ( .A0(N120), .A1(n33), .B0(ALU_OUT[10]), .B1(n184), .Y(n116)
         );
  NAND2X2M U165 ( .A(n117), .B(n111), .Y(n147) );
  AOI22X1M U166 ( .A0(N121), .A1(n33), .B0(ALU_OUT[11]), .B1(n184), .Y(n117)
         );
  OAI2B11X2M U167 ( .A1N(ALU_OUT[8]), .A0(Enalbe), .B0(n111), .C0(n112), .Y(
        n141) );
  AOI221XLM U168 ( .A0(N118), .A1(n9), .B0(N100), .B1(n21), .C0(n113), .Y(n112) );
  NOR3X2M U169 ( .A(n178), .B(n184), .C(n106), .Y(n113) );
  NAND4BX1M U170 ( .AN(n96), .B(n97), .C(n98), .D(n99), .Y(n139) );
  OAI2B2X1M U171 ( .A1N(B[7]), .A0(n104), .B0(B[7]), .B1(n105), .Y(n96) );
  NAND4X2M U172 ( .A(n86), .B(n87), .C(n88), .D(n89), .Y(n137) );
  AOI222X1M U173 ( .A0(n5), .A1(n91), .B0(N107), .B1(n22), .C0(n92), .C1(n173), 
        .Y(n88) );
  NAND2X2M U174 ( .A(n115), .B(n111), .Y(n143) );
  AOI22X1M U175 ( .A0(N119), .A1(n9), .B0(ALU_OUT[9]), .B1(n184), .Y(n115) );
  INVX2M U176 ( .A(B[5]), .Y(n196) );
  NOR2X1M U177 ( .A(n178), .B(B[7]), .Y(n166) );
  NAND2BX1M U178 ( .AN(B[4]), .B(n40), .Y(n159) );
  CLKNAND2X2M U179 ( .A(n159), .B(n85), .Y(n161) );
  NOR2X1M U180 ( .A(n172), .B(n34), .Y(n156) );
  NOR2X1M U181 ( .A(n171), .B(n32), .Y(n84) );
  NOR2X1M U182 ( .A(n170), .B(n25), .Y(n69) );
  CLKNAND2X2M U183 ( .A(n32), .B(n171), .Y(n158) );
  NAND2BX1M U184 ( .AN(n84), .B(n158), .Y(n107) );
  AOI21X1M U185 ( .A0(n69), .A1(n175), .B0(n4), .Y(n76) );
  AOI211X1M U186 ( .A0(n26), .A1(n174), .B0(n107), .C0(n76), .Y(n77) );
  CLKNAND2X2M U187 ( .A(n34), .B(n172), .Y(n157) );
  OAI31X1M U188 ( .A0(n156), .A1(n84), .A2(n77), .B0(n157), .Y(n93) );
  NAND2BX1M U189 ( .AN(n46), .B(B[5]), .Y(n164) );
  OAI211X1M U190 ( .A0(n161), .A1(n93), .B0(n85), .C0(n164), .Y(n94) );
  NAND2BX1M U191 ( .AN(B[5]), .B(n46), .Y(n160) );
  XNOR2X1M U192 ( .A(n47), .B(n5), .Y(n163) );
  AOI32X1M U193 ( .A0(n94), .A1(n160), .A2(n163), .B0(n5), .B1(n177), .Y(n100)
         );
  CLKNAND2X2M U194 ( .A(B[7]), .B(n178), .Y(n167) );
  OAI21X1M U195 ( .A0(n166), .A1(n100), .B0(n167), .Y(N160) );
  CLKNAND2X2M U196 ( .A(n25), .B(n170), .Y(n108) );
  OA21X1M U197 ( .A0(n108), .A1(n175), .B0(n4), .Y(n103) );
  AOI211X1M U198 ( .A0(n108), .A1(n175), .B0(n107), .C0(n103), .Y(n109) );
  AOI31X1M U199 ( .A0(n176), .A1(n158), .A2(n157), .B0(n156), .Y(n162) );
  OAI2B11X1M U200 ( .A1N(n162), .A0(n161), .B0(n160), .C0(n159), .Y(n165) );
  AOI32X1M U201 ( .A0(n165), .A1(n164), .A2(n163), .B0(n47), .B1(n173), .Y(
        n168) );
  AOI2B1X1M U202 ( .A1N(n168), .A0(n167), .B0(n166), .Y(n169) );
  CLKINVX1M U203 ( .A(n169), .Y(N159) );
  NOR2X1M U204 ( .A(N160), .B(N159), .Y(N158) );
  DLY1X1M U206 ( .A(test_se), .Y(n202) );
  DLY1X1M U207 ( .A(test_se), .Y(n203) );
  DLY1X1M U208 ( .A(test_se), .Y(n204) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW_div_uns_0 div_32 ( .a({n57, n47, n46, n40, n34, 
        n32, n26, n25}), .b({B[7], n23, B[5:2], n20, B[0]}), .quotient({N133, 
        N132, N131, N130, N129, N128, N127, N126}) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_sub_0 sub_26 ( .A({1'b0, n57, n47, n46, n40, 
        n34, n32, n26, n25}), .B({1'b0, B[7], n5, B[5:2], n4, B[0]}), .CI(1'b0), .DIFF({N109, N108, N107, N106, N105, N104, N103, N102, N101}) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_add_0 add_23 ( .A({1'b0, n57, n47, n46, n40, 
        n34, n32, n26, n25}), .B({1'b0, B[7], n5, B[5:2], n4, B[0]}), .CI(1'b0), .SUM({N100, N99, N98, N97, N96, N95, N94, N93, N92}) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW02_mult_0 mult_29 ( .A({n57, n47, n46, n40, n34, 
        n32, n26, n25}), .B({B[7], n5, B[5:2], n4, B[0]}), .TC(1'b0), 
        .PRODUCT({N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110}) );
endmodule


module SYS_CTRL_DATA_WIDTH8_ADDR_BUS4_FUN_WIDTH4_test_1 ( CLK, RST, ALU_OUT, 
        OUT_VALID, RX_P_Data, RX_D_VLD, Rd_Data, RdData_Valid, FIFO_FULL, 
        ALU_EN, ALU_FUN, CLK_EN, Address, WrEN, RdEN, WrData, TX_P_Data, 
        TX_D_VLD, clk_div_en, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] Rd_Data;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_Data;
  input CLK, RST, OUT_VALID, RX_D_VLD, RdData_Valid, FIFO_FULL, test_si2,
         test_si1, test_se;
  output ALU_EN, CLK_EN, WrEN, RdEN, TX_D_VLD, clk_div_en, test_so2, test_so1;
  wire   n60, n61, n62, n63, n72, n73, n74, n75, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n64, n65, n66,
         n67, n69, n70, n71, n76, n77, n78, n79, n80, n81, n82, n83, n84, n206,
         n207, n208, n209, n210, n211, n6, n214, n215, n216, n217, n218, n219,
         n220, n223, n224, n225, n226, n227, n228, n229, n230, n231, n3;
  wire   [3:0] current_state;
  wire   [7:0] data_reg;
  wire   [15:0] result_reg;
  assign test_so2 = result_reg[15];

  AOI211X4M U110 ( .A0(n77), .A1(n39), .B0(n103), .C0(n143), .Y(n121) );
  SDFFRQX2M \result_reg_reg[14]  ( .D(n186), .SI(result_reg[13]), .SE(n230), 
        .CK(CLK), .RN(n43), .Q(result_reg[14]) );
  SDFFRQX2M \result_reg_reg[13]  ( .D(n187), .SI(result_reg[12]), .SE(n228), 
        .CK(CLK), .RN(n43), .Q(result_reg[13]) );
  SDFFRQX2M \result_reg_reg[12]  ( .D(n188), .SI(result_reg[11]), .SE(n227), 
        .CK(CLK), .RN(n43), .Q(result_reg[12]) );
  SDFFRQX2M \result_reg_reg[11]  ( .D(n189), .SI(result_reg[10]), .SE(n228), 
        .CK(CLK), .RN(n43), .Q(result_reg[11]) );
  SDFFRQX2M \result_reg_reg[10]  ( .D(n190), .SI(result_reg[9]), .SE(n224), 
        .CK(CLK), .RN(n43), .Q(result_reg[10]) );
  SDFFRQX2M \result_reg_reg[9]  ( .D(n191), .SI(result_reg[8]), .SE(n227), 
        .CK(CLK), .RN(n42), .Q(result_reg[9]) );
  SDFFRQX2M \result_reg_reg[8]  ( .D(n192), .SI(result_reg[7]), .SE(n224), 
        .CK(CLK), .RN(n42), .Q(result_reg[8]) );
  SDFFRQX2M \result_reg_reg[15]  ( .D(n201), .SI(result_reg[14]), .SE(n227), 
        .CK(CLK), .RN(n42), .Q(result_reg[15]) );
  SDFFRQX2M \result_reg_reg[7]  ( .D(n193), .SI(result_reg[6]), .SE(n230), 
        .CK(CLK), .RN(n42), .Q(result_reg[7]) );
  SDFFRQX2M \result_reg_reg[6]  ( .D(n194), .SI(result_reg[5]), .SE(n225), 
        .CK(CLK), .RN(n42), .Q(result_reg[6]) );
  SDFFRQX2M \result_reg_reg[5]  ( .D(n195), .SI(result_reg[4]), .SE(n230), 
        .CK(CLK), .RN(n42), .Q(result_reg[5]) );
  SDFFRQX2M \result_reg_reg[4]  ( .D(n196), .SI(result_reg[3]), .SE(n225), 
        .CK(CLK), .RN(n42), .Q(result_reg[4]) );
  SDFFRQX2M \result_reg_reg[3]  ( .D(n197), .SI(result_reg[2]), .SE(n229), 
        .CK(CLK), .RN(n42), .Q(result_reg[3]) );
  SDFFRQX2M \result_reg_reg[2]  ( .D(n198), .SI(result_reg[1]), .SE(n230), 
        .CK(CLK), .RN(n42), .Q(result_reg[2]) );
  SDFFRQX2M \result_reg_reg[1]  ( .D(n199), .SI(result_reg[0]), .SE(n229), 
        .CK(CLK), .RN(n42), .Q(result_reg[1]) );
  SDFFRQX2M \result_reg_reg[0]  ( .D(n200), .SI(test_si2), .SE(n230), .CK(CLK), 
        .RN(n42), .Q(result_reg[0]) );
  SDFFRQX2M \data_reg_reg[7]  ( .D(n181), .SI(data_reg[6]), .SE(n229), .CK(CLK), .RN(n42), .Q(data_reg[7]) );
  SDFFRQX2M \data_reg_reg[6]  ( .D(n180), .SI(data_reg[5]), .SE(n230), .CK(CLK), .RN(n42), .Q(data_reg[6]) );
  SDFFRQX2M \data_reg_reg[5]  ( .D(n179), .SI(data_reg[4]), .SE(n228), .CK(CLK), .RN(n41), .Q(data_reg[5]) );
  SDFFRQX2M \data_reg_reg[4]  ( .D(n178), .SI(data_reg[3]), .SE(n229), .CK(CLK), .RN(n42), .Q(data_reg[4]) );
  SDFFRQX2M \data_reg_reg[3]  ( .D(n177), .SI(data_reg[2]), .SE(n228), .CK(CLK), .RN(n41), .Q(data_reg[3]) );
  SDFFRQX2M \data_reg_reg[2]  ( .D(n176), .SI(data_reg[1]), .SE(n228), .CK(CLK), .RN(n41), .Q(data_reg[2]) );
  SDFFRQX2M \data_reg_reg[1]  ( .D(n175), .SI(data_reg[0]), .SE(n227), .CK(CLK), .RN(n42), .Q(data_reg[1]) );
  SDFFRQX2M \data_reg_reg[0]  ( .D(n174), .SI(current_state[3]), .SE(n228), 
        .CK(CLK), .RN(n41), .Q(data_reg[0]) );
  SDFFRX1M \addr_reg_reg[0]  ( .D(n182), .SI(test_si1), .SE(n228), .CK(CLK), 
        .RN(n41), .Q(n220), .QN(n63) );
  SDFFRX1M \fun_reg_reg[3]  ( .D(n173), .SI(n214), .SE(n227), .CK(CLK), .RN(
        n41), .Q(n6), .QN(n72) );
  SDFFRX1M \fun_reg_reg[2]  ( .D(n172), .SI(n215), .SE(n230), .CK(CLK), .RN(
        n41), .Q(n214), .QN(n73) );
  SDFFRX1M \fun_reg_reg[1]  ( .D(n171), .SI(n216), .SE(n225), .CK(CLK), .RN(
        n41), .Q(n215), .QN(n74) );
  SDFFRX1M \fun_reg_reg[0]  ( .D(n170), .SI(data_reg[7]), .SE(n229), .CK(CLK), 
        .RN(n41), .Q(n216), .QN(n75) );
  SDFFRX1M \addr_reg_reg[3]  ( .D(n185), .SI(n218), .SE(n224), .CK(CLK), .RN(
        n41), .Q(n217), .QN(n60) );
  SDFFRX1M \addr_reg_reg[2]  ( .D(n184), .SI(n219), .SE(n229), .CK(CLK), .RN(
        n41), .Q(n218), .QN(n61) );
  SDFFRX1M \addr_reg_reg[1]  ( .D(n183), .SI(n220), .SE(n223), .CK(CLK), .RN(
        n41), .Q(n219), .QN(n62) );
  SDFFRQX2M \current_state_reg[3]  ( .D(n202), .SI(current_state[2]), .SE(n227), .CK(CLK), .RN(n43), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n203), .SI(current_state[0]), .SE(n226), .CK(CLK), .RN(n43), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n205), .SI(n217), .SE(n226), .CK(CLK), 
        .RN(n41), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n204), .SI(current_state[1]), .SE(n227), .CK(CLK), .RN(n43), .Q(current_state[2]) );
  NOR2X2M U41 ( .A(n86), .B(n62), .Y(Address[1]) );
  NOR2X2M U42 ( .A(n86), .B(n61), .Y(Address[2]) );
  OAI21X2M U43 ( .A0(n86), .A1(n63), .B0(n151), .Y(Address[0]) );
  INVX2M U44 ( .A(n164), .Y(n77) );
  NOR2X2M U45 ( .A(n75), .B(n168), .Y(ALU_FUN[0]) );
  NOR2X2M U46 ( .A(n86), .B(n60), .Y(Address[3]) );
  INVX2M U47 ( .A(RX_D_VLD), .Y(n50) );
  NOR2X4M U48 ( .A(n58), .B(RdEN), .Y(n86) );
  INVX2M U49 ( .A(WrEN), .Y(n59) );
  NOR2X2M U50 ( .A(n106), .B(n67), .Y(n101) );
  INVX2M U51 ( .A(n100), .Y(n64) );
  INVX2M U52 ( .A(n131), .Y(n65) );
  INVX2M U53 ( .A(n106), .Y(n66) );
  INVX2M U54 ( .A(n114), .Y(RdEN) );
  INVX2M U55 ( .A(n168), .Y(ALU_EN) );
  INVX2M U56 ( .A(n155), .Y(n58) );
  NOR4X2M U57 ( .A(n76), .B(n77), .C(n116), .D(n70), .Y(n87) );
  NAND4X2M U58 ( .A(n132), .B(n151), .C(n168), .D(n131), .Y(n106) );
  NAND2X2M U59 ( .A(n118), .B(n165), .Y(n131) );
  NAND3X2M U60 ( .A(n110), .B(n151), .C(n155), .Y(WrEN) );
  NAND3X2M U61 ( .A(n108), .B(n109), .C(n110), .Y(n100) );
  INVX2M U62 ( .A(n85), .Y(n47) );
  INVX2M U63 ( .A(n104), .Y(n48) );
  INVX2M U64 ( .A(n107), .Y(n67) );
  INVX2M U65 ( .A(n126), .Y(n69) );
  INVX2M U66 ( .A(n124), .Y(n79) );
  AND2X2M U67 ( .A(n89), .B(n100), .Y(n91) );
  AND2X2M U68 ( .A(n89), .B(RdEN), .Y(n92) );
  BUFX4M U69 ( .A(n111), .Y(n40) );
  INVX2M U70 ( .A(n129), .Y(n49) );
  INVX2M U71 ( .A(n117), .Y(n76) );
  INVX2M U72 ( .A(n134), .Y(n70) );
  INVX2M U73 ( .A(n132), .Y(n78) );
  AND4X2M U74 ( .A(n151), .B(n132), .C(n109), .D(n108), .Y(n149) );
  BUFX4M U75 ( .A(RST), .Y(n42) );
  BUFX4M U76 ( .A(RST), .Y(n41) );
  BUFX2M U77 ( .A(RST), .Y(n43) );
  NAND2X2M U78 ( .A(n148), .B(n154), .Y(n114) );
  NAND2X2M U79 ( .A(n119), .B(n154), .Y(n168) );
  NAND2X2M U80 ( .A(n119), .B(n147), .Y(n151) );
  NOR2X2M U81 ( .A(n82), .B(n71), .Y(n118) );
  NAND2X2M U82 ( .A(n118), .B(n153), .Y(n155) );
  AOI211X2M U83 ( .A0(n118), .A1(n119), .B0(n79), .C0(n69), .Y(n107) );
  NAND4X2M U84 ( .A(n64), .B(n86), .C(n87), .D(n88), .Y(n85) );
  NOR4X1M U85 ( .A(n65), .B(ALU_EN), .C(n67), .D(n50), .Y(n88) );
  NAND4X2M U86 ( .A(n64), .B(n86), .C(n101), .D(n105), .Y(n104) );
  NOR3X2M U87 ( .A(n50), .B(n77), .C(n76), .Y(n105) );
  NAND2X2M U88 ( .A(n165), .B(n154), .Y(n126) );
  NAND2X2M U89 ( .A(n152), .B(n165), .Y(n124) );
  INVX2M U90 ( .A(n121), .Y(n46) );
  NAND2X2M U91 ( .A(n118), .B(n148), .Y(n110) );
  NOR2X2M U92 ( .A(n59), .B(n211), .Y(WrData[0]) );
  NOR2X2M U93 ( .A(n59), .B(n210), .Y(WrData[1]) );
  NOR2X2M U94 ( .A(n59), .B(n209), .Y(WrData[2]) );
  NOR2X2M U95 ( .A(n59), .B(n208), .Y(WrData[3]) );
  NOR2X2M U96 ( .A(n59), .B(n207), .Y(WrData[4]) );
  NOR2X2M U97 ( .A(n59), .B(n206), .Y(WrData[5]) );
  NOR2X2M U98 ( .A(n59), .B(n84), .Y(WrData[6]) );
  NOR2X2M U99 ( .A(n59), .B(n83), .Y(WrData[7]) );
  AOI31X2M U100 ( .A0(n124), .A1(n126), .A2(n164), .B0(n39), .Y(TX_D_VLD) );
  NOR2X2M U101 ( .A(n80), .B(n81), .Y(n165) );
  NAND2X2M U102 ( .A(n152), .B(n153), .Y(n109) );
  NAND2X2M U103 ( .A(n152), .B(n148), .Y(n108) );
  NAND2X2M U104 ( .A(n147), .B(n153), .Y(n117) );
  NAND2X2M U105 ( .A(n165), .B(n147), .Y(n164) );
  NAND2X2M U106 ( .A(n119), .B(n152), .Y(n132) );
  OAI22X1M U107 ( .A0(n135), .A1(n46), .B0(n121), .B1(n81), .Y(n204) );
  NOR4X1M U108 ( .A(n136), .B(n133), .C(n116), .D(n137), .Y(n135) );
  NAND3X2M U109 ( .A(n126), .B(n131), .C(n114), .Y(n136) );
  NOR4X1M U111 ( .A(n51), .B(n54), .C(n49), .D(n138), .Y(n137) );
  OAI22X1M U112 ( .A0(n120), .A1(n46), .B0(n121), .B1(n80), .Y(n202) );
  NOR3X2M U113 ( .A(n122), .B(n106), .C(n123), .Y(n120) );
  OAI22X1M U114 ( .A0(n50), .A1(n110), .B0(n45), .B1(n124), .Y(n123) );
  OAI211X2M U115 ( .A0(n125), .A1(n49), .B0(n114), .C0(n126), .Y(n122) );
  AND2X2M U116 ( .A(n147), .B(n148), .Y(n116) );
  AND3X2M U117 ( .A(n101), .B(n87), .C(n102), .Y(n89) );
  AOI211X2M U118 ( .A0(n50), .A1(n100), .B0(n58), .C0(n103), .Y(n102) );
  AND4X2M U119 ( .A(n108), .B(n109), .C(n112), .D(n113), .Y(n111) );
  NOR3X2M U120 ( .A(n78), .B(WrEN), .C(ALU_EN), .Y(n112) );
  AND4X2M U121 ( .A(n114), .B(n115), .C(n107), .D(n87), .Y(n113) );
  NOR2X2M U122 ( .A(n117), .B(n50), .Y(n129) );
  OAI211X2M U123 ( .A0(n45), .A1(n124), .B0(n139), .C0(n140), .Y(n133) );
  AOI21BX2M U124 ( .A0(n141), .A1(n129), .B0N(n108), .Y(n140) );
  NAND4BX1M U125 ( .AN(n138), .B(n129), .C(n51), .D(n54), .Y(n150) );
  NAND2X2M U126 ( .A(n153), .B(n154), .Y(n134) );
  INVX2M U127 ( .A(n39), .Y(n45) );
  AND3X2M U128 ( .A(n169), .B(n51), .C(n54), .Y(n141) );
  NAND2X2M U129 ( .A(n115), .B(n109), .Y(n130) );
  INVX2M U130 ( .A(n125), .Y(n52) );
  NOR2X2M U131 ( .A(n81), .B(current_state[3]), .Y(n148) );
  NOR2X2M U132 ( .A(n71), .B(current_state[1]), .Y(n154) );
  INVX2M U133 ( .A(current_state[0]), .Y(n71) );
  INVX2M U134 ( .A(current_state[2]), .Y(n81) );
  NOR2X4M U135 ( .A(n72), .B(n168), .Y(ALU_FUN[3]) );
  NOR2X4M U136 ( .A(n73), .B(n168), .Y(ALU_FUN[2]) );
  NOR2X4M U137 ( .A(n74), .B(n168), .Y(ALU_FUN[1]) );
  NOR2X2M U138 ( .A(current_state[0]), .B(current_state[1]), .Y(n147) );
  NOR2X2M U139 ( .A(current_state[2]), .B(current_state[3]), .Y(n153) );
  NOR2X2M U140 ( .A(n80), .B(current_state[2]), .Y(n119) );
  INVX2M U141 ( .A(current_state[3]), .Y(n80) );
  INVX2M U142 ( .A(current_state[1]), .Y(n82) );
  AO21XLM U143 ( .A0(n116), .A1(n50), .B0(n144), .Y(n143) );
  AOI21X2M U144 ( .A0(RX_P_Data[7]), .A1(RX_P_Data[3]), .B0(n117), .Y(n144) );
  NOR2X2M U145 ( .A(n82), .B(current_state[0]), .Y(n152) );
  OAI22X1M U146 ( .A0(n85), .A1(n51), .B0(n47), .B1(n75), .Y(n170) );
  OAI22X1M U147 ( .A0(n85), .A1(n57), .B0(n47), .B1(n74), .Y(n171) );
  OAI22X1M U148 ( .A0(n85), .A1(n56), .B0(n47), .B1(n73), .Y(n172) );
  OAI22X1M U149 ( .A0(n85), .A1(n55), .B0(n47), .B1(n72), .Y(n173) );
  AOI31X2M U150 ( .A0(n127), .A1(n44), .A2(n128), .B0(n46), .Y(n203) );
  AOI221XLM U151 ( .A0(n129), .A1(n52), .B0(n78), .B1(n50), .C0(n130), .Y(n128) );
  AOI22X1M U152 ( .A0(n69), .A1(n45), .B0(n70), .B1(RX_D_VLD), .Y(n127) );
  INVX2M U153 ( .A(n133), .Y(n44) );
  OAI22XLM U154 ( .A0(n142), .A1(n46), .B0(n121), .B1(n71), .Y(n205) );
  NOR4X1M U155 ( .A(n145), .B(n146), .C(n65), .D(n116), .Y(n142) );
  OAI21X2M U156 ( .A0(n149), .A1(n50), .B0(n150), .Y(n146) );
  OAI221X1M U157 ( .A0(n45), .A1(n126), .B0(RX_D_VLD), .B1(n134), .C0(n139), 
        .Y(n145) );
  OAI22X1M U158 ( .A0(n51), .A1(n104), .B0(n48), .B1(n63), .Y(n182) );
  OAI22X1M U159 ( .A0(n57), .A1(n104), .B0(n48), .B1(n62), .Y(n183) );
  OAI22X1M U160 ( .A0(n56), .A1(n104), .B0(n48), .B1(n61), .Y(n184) );
  OAI22X1M U161 ( .A0(n55), .A1(n104), .B0(n48), .B1(n60), .Y(n185) );
  NOR2X2M U162 ( .A(RdData_Valid), .B(n114), .Y(n103) );
  OAI21X2M U163 ( .A0(n89), .A1(n211), .B0(n90), .Y(n174) );
  AOI22X1M U164 ( .A0(n91), .A1(RX_P_Data[0]), .B0(Rd_Data[0]), .B1(n92), .Y(
        n90) );
  OAI21X2M U165 ( .A0(n89), .A1(n210), .B0(n93), .Y(n175) );
  AOI22X1M U166 ( .A0(n91), .A1(RX_P_Data[1]), .B0(Rd_Data[1]), .B1(n92), .Y(
        n93) );
  OAI21X2M U167 ( .A0(n89), .A1(n209), .B0(n94), .Y(n176) );
  AOI22X1M U168 ( .A0(n91), .A1(RX_P_Data[2]), .B0(Rd_Data[2]), .B1(n92), .Y(
        n94) );
  OAI21X2M U169 ( .A0(n89), .A1(n208), .B0(n95), .Y(n177) );
  AOI22X1M U170 ( .A0(n91), .A1(RX_P_Data[3]), .B0(Rd_Data[3]), .B1(n92), .Y(
        n95) );
  OAI21X2M U171 ( .A0(n89), .A1(n207), .B0(n96), .Y(n178) );
  AOI22X1M U172 ( .A0(RX_P_Data[4]), .A1(n91), .B0(Rd_Data[4]), .B1(n92), .Y(
        n96) );
  OAI21X2M U173 ( .A0(n89), .A1(n206), .B0(n97), .Y(n179) );
  AOI22X1M U174 ( .A0(RX_P_Data[5]), .A1(n91), .B0(Rd_Data[5]), .B1(n92), .Y(
        n97) );
  OAI21X2M U175 ( .A0(n89), .A1(n84), .B0(n98), .Y(n180) );
  AOI22X1M U176 ( .A0(RX_P_Data[6]), .A1(n91), .B0(Rd_Data[6]), .B1(n92), .Y(
        n98) );
  OAI21X2M U177 ( .A0(n89), .A1(n83), .B0(n99), .Y(n181) );
  AOI22X1M U178 ( .A0(RX_P_Data[7]), .A1(n91), .B0(Rd_Data[7]), .B1(n92), .Y(
        n99) );
  AO2B2X2M U179 ( .B0(ALU_OUT[3]), .B1(n40), .A0(result_reg[3]), .A1N(n40), 
        .Y(n197) );
  AO2B2X2M U180 ( .B0(ALU_OUT[4]), .B1(n40), .A0(result_reg[4]), .A1N(n40), 
        .Y(n196) );
  AO2B2X2M U181 ( .B0(ALU_OUT[5]), .B1(n40), .A0(result_reg[5]), .A1N(n40), 
        .Y(n195) );
  AO2B2X2M U182 ( .B0(ALU_OUT[6]), .B1(n40), .A0(result_reg[6]), .A1N(n40), 
        .Y(n194) );
  AO2B2X2M U183 ( .B0(ALU_OUT[15]), .B1(n111), .A0(result_reg[15]), .A1N(n40), 
        .Y(n201) );
  AO2B2X2M U184 ( .B0(ALU_OUT[0]), .B1(n111), .A0(result_reg[0]), .A1N(n40), 
        .Y(n200) );
  AO2B2X2M U185 ( .B0(ALU_OUT[1]), .B1(n111), .A0(result_reg[1]), .A1N(n40), 
        .Y(n199) );
  AO2B2X2M U186 ( .B0(ALU_OUT[2]), .B1(n111), .A0(result_reg[2]), .A1N(n40), 
        .Y(n198) );
  AO2B2X2M U187 ( .B0(ALU_OUT[7]), .B1(n111), .A0(result_reg[7]), .A1N(n40), 
        .Y(n193) );
  AO2B2X2M U188 ( .B0(ALU_OUT[8]), .B1(n111), .A0(result_reg[8]), .A1N(n40), 
        .Y(n192) );
  AO2B2X2M U189 ( .B0(ALU_OUT[9]), .B1(n111), .A0(result_reg[9]), .A1N(n40), 
        .Y(n191) );
  AO2B2X2M U190 ( .B0(ALU_OUT[10]), .B1(n111), .A0(result_reg[10]), .A1N(n40), 
        .Y(n190) );
  AO2B2X2M U191 ( .B0(ALU_OUT[11]), .B1(n111), .A0(result_reg[11]), .A1N(n40), 
        .Y(n189) );
  AO2B2X2M U192 ( .B0(ALU_OUT[12]), .B1(n111), .A0(result_reg[12]), .A1N(n40), 
        .Y(n188) );
  AO2B2X2M U193 ( .B0(ALU_OUT[13]), .B1(n111), .A0(result_reg[13]), .A1N(n40), 
        .Y(n187) );
  AO2B2X2M U194 ( .B0(ALU_OUT[14]), .B1(n111), .A0(result_reg[14]), .A1N(n40), 
        .Y(n186) );
  NOR2X2M U195 ( .A(n39), .B(n163), .Y(TX_P_Data[0]) );
  AOI222X1M U196 ( .A0(n77), .A1(data_reg[0]), .B0(n79), .B1(result_reg[8]), 
        .C0(n69), .C1(result_reg[0]), .Y(n163) );
  NOR2X2M U197 ( .A(n39), .B(n162), .Y(TX_P_Data[1]) );
  AOI222X1M U198 ( .A0(n77), .A1(data_reg[1]), .B0(n79), .B1(result_reg[9]), 
        .C0(n69), .C1(result_reg[1]), .Y(n162) );
  NOR2X2M U199 ( .A(n39), .B(n161), .Y(TX_P_Data[2]) );
  AOI222X1M U200 ( .A0(n77), .A1(data_reg[2]), .B0(n79), .B1(result_reg[10]), 
        .C0(n69), .C1(result_reg[2]), .Y(n161) );
  NOR2X2M U201 ( .A(n39), .B(n160), .Y(TX_P_Data[3]) );
  AOI222X1M U202 ( .A0(n77), .A1(data_reg[3]), .B0(n79), .B1(result_reg[11]), 
        .C0(n69), .C1(result_reg[3]), .Y(n160) );
  NOR2X2M U203 ( .A(n39), .B(n159), .Y(TX_P_Data[4]) );
  AOI222X1M U204 ( .A0(n77), .A1(data_reg[4]), .B0(n79), .B1(result_reg[12]), 
        .C0(n69), .C1(result_reg[4]), .Y(n159) );
  NOR2X2M U205 ( .A(n39), .B(n158), .Y(TX_P_Data[5]) );
  AOI222X1M U206 ( .A0(n77), .A1(data_reg[5]), .B0(n79), .B1(result_reg[13]), 
        .C0(n69), .C1(result_reg[5]), .Y(n158) );
  NOR2X2M U207 ( .A(n39), .B(n157), .Y(TX_P_Data[6]) );
  AOI222X1M U208 ( .A0(n77), .A1(data_reg[6]), .B0(n79), .B1(result_reg[14]), 
        .C0(n69), .C1(result_reg[6]), .Y(n157) );
  NOR2X2M U209 ( .A(n39), .B(n156), .Y(TX_P_Data[7]) );
  AOI222X1M U210 ( .A0(n77), .A1(data_reg[7]), .B0(n79), .B1(result_reg[15]), 
        .C0(n69), .C1(result_reg[7]), .Y(n156) );
  AOI2BB1X2M U211 ( .A0N(n110), .A1N(RX_D_VLD), .B0(ALU_EN), .Y(n139) );
  NOR4X1M U212 ( .A(n53), .B(n56), .C(RX_P_Data[1]), .D(RX_P_Data[5]), .Y(n169) );
  NAND4X2M U213 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n56), .D(n53), .Y(
        n138) );
  INVX2M U214 ( .A(RX_P_Data[0]), .Y(n51) );
  NAND3X2M U215 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n169), .Y(n125) );
  INVX2M U216 ( .A(RX_P_Data[2]), .Y(n56) );
  INVX2M U217 ( .A(RX_P_Data[4]), .Y(n54) );
  BUFX4M U218 ( .A(FIFO_FULL), .Y(n39) );
  INVX2M U219 ( .A(RX_P_Data[6]), .Y(n53) );
  OR2X2M U220 ( .A(OUT_VALID), .B(n131), .Y(n115) );
  OAI211X2M U221 ( .A0(n166), .A1(n167), .B0(n110), .C0(n66), .Y(CLK_EN) );
  OAI21X2M U222 ( .A0(n52), .A1(n141), .B0(RX_P_Data[3]), .Y(n166) );
  NAND2X2M U223 ( .A(n129), .B(RX_P_Data[7]), .Y(n167) );
  INVX2M U224 ( .A(RX_P_Data[1]), .Y(n57) );
  INVX2M U225 ( .A(RX_P_Data[3]), .Y(n55) );
  INVX2M U226 ( .A(data_reg[0]), .Y(n211) );
  INVX2M U227 ( .A(data_reg[1]), .Y(n210) );
  INVX2M U228 ( .A(data_reg[2]), .Y(n209) );
  INVX2M U229 ( .A(data_reg[3]), .Y(n208) );
  INVX2M U230 ( .A(data_reg[4]), .Y(n207) );
  INVX2M U231 ( .A(data_reg[5]), .Y(n206) );
  INVX2M U232 ( .A(data_reg[6]), .Y(n84) );
  INVX2M U233 ( .A(data_reg[7]), .Y(n83) );
  INVXLM U234 ( .A(n231), .Y(n223) );
  INVXLM U235 ( .A(test_se), .Y(n231) );
  INVXLM U236 ( .A(n231), .Y(n224) );
  INVXLM U237 ( .A(n231), .Y(n225) );
  INVXLM U238 ( .A(n231), .Y(n226) );
  DLY1X1M U239 ( .A(n226), .Y(n227) );
  DLY1X1M U240 ( .A(test_se), .Y(n228) );
  DLY1X1M U241 ( .A(test_se), .Y(n229) );
  DLY1X1M U242 ( .A(test_se), .Y(n230) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  INVXLM U5 ( .A(n6), .Y(n3) );
  INVX2M U6 ( .A(n3), .Y(test_so1) );
endmodule


module data_sync_NUM_STAGES2_BUS_WIDTH8_test_1 ( unsync_bus, bus_enable, 
        dest_clk, dest_rst, sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, dest_clk, dest_rst, test_si, test_se;
  output enable_pulse;
  wire   q, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22, n23, n24, n27, n28;
  wire   [1:0] multi_ff;

  SDFFRQX2M q_reg ( .D(multi_ff[1]), .SI(multi_ff[1]), .SE(n28), .CK(dest_clk), 
        .RN(n22), .Q(q) );
  SDFFRQX2M \multi_ff_reg[1]  ( .D(multi_ff[0]), .SI(multi_ff[0]), .SE(n27), 
        .CK(dest_clk), .RN(n22), .Q(multi_ff[1]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n5), .SI(sync_bus[1]), .SE(n28), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n13), .SI(sync_bus[5]), .SE(n27), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n17), .SI(q), .SE(n28), .CK(dest_clk), .RN(
        n22), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n9), .SI(sync_bus[3]), .SE(n27), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n11), .SI(sync_bus[4]), .SE(n28), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n3), .SI(sync_bus[0]), .SE(n27), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_reg ( .D(n24), .SI(test_si), .SE(n28), .CK(dest_clk), 
        .RN(n22), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n15), .SI(sync_bus[6]), .SE(n27), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n7), .SI(sync_bus[2]), .SE(n28), .CK(
        dest_clk), .RN(n22), .Q(sync_bus[3]) );
  SDFFRQX2M \multi_ff_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(n27), 
        .CK(dest_clk), .RN(n22), .Q(multi_ff[0]) );
  NAND2BX2M U3 ( .AN(q), .B(multi_ff[1]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n24) );
  INVX4M U5 ( .A(n23), .Y(n22) );
  INVX2M U6 ( .A(dest_rst), .Y(n23) );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n24), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n24), .B0(sync_bus[3]), .B1(n1), .Y(n7)
         );
  AO22X1M U9 ( .A0(unsync_bus[5]), .A1(n24), .B0(sync_bus[5]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n24), .B0(sync_bus[2]), .B1(n1), .Y(n5) );
  AO22X1M U11 ( .A0(unsync_bus[4]), .A1(n24), .B0(sync_bus[4]), .B1(n1), .Y(n9) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n24), .B0(sync_bus[6]), .B1(n1), .Y(
        n13) );
  AO22X1M U25 ( .A0(unsync_bus[7]), .A1(n24), .B0(sync_bus[7]), .B1(n1), .Y(
        n15) );
  AO22X1M U26 ( .A0(unsync_bus[0]), .A1(n24), .B0(sync_bus[0]), .B1(n1), .Y(
        n17) );
  DLY1X1M U27 ( .A(test_se), .Y(n27) );
  DLY1X1M U28 ( .A(test_se), .Y(n28) );
endmodule


module fsm_parallel_data8_test_1 ( clk, rst, rx_in, bit_cnt, par_en, edge_cnt, 
        prescale, par_err, strt_glitch, stp_err, dat_samp_en, enable_counter, 
        deser_en, par_chk_en, strt_chk_en, stp_chk_en, data_valid, test_si, 
        test_so, test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input clk, rst, rx_in, par_en, par_err, strt_glitch, stp_err, test_si,
         test_se;
  output dat_samp_en, enable_counter, deser_en, par_chk_en, strt_chk_en,
         stp_chk_en, data_valid, test_so;
  wire   N41, N42, N43, N44, N45, N71, N72, N91, N92, N93, N94, N95, N96, N122,
         N123, N148, N149, N150, N151, N152, N178, N179, N198, N199, N200,
         N201, N202, N228, N229, n63, n64, \eq_65/B[0] , \eq_65/B[1] ,
         \eq_65/B[2] , \eq_65/B[3] , \eq_65/B[4] , \add_120/carry[2] ,
         \add_120/carry[3] , \add_120/carry[4] , \add_120/carry[5] ,
         \add_120/A[5] , \add_108/carry[2] , \add_108/carry[3] ,
         \add_108/carry[4] , \add_108/carry[5] , \add_79/carry[2] ,
         \add_79/carry[3] , \add_79/carry[4] , \add_79/carry[5] ,
         \add_62/carry[2] , \add_62/carry[3] , \add_62/carry[4] ,
         \add_62/carry[5] , n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127;
  wire   [2:0] current_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[2]  ( .D(n127), .SI(current_state[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n63), .SI(current_state[0]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n64), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(current_state[0]) );
  OAI2BB1X2M U6 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n16), .Y(
        \eq_65/B[1] ) );
  INVX2M U7 ( .A(n7), .Y(n20) );
  INVX2M U8 ( .A(\eq_65/B[1] ), .Y(N91) );
  OAI2BB1X2M U9 ( .A0N(n18), .A1N(prescale[4]), .B0(n19), .Y(\eq_65/B[4] ) );
  OAI2BB1X2M U10 ( .A0N(n17), .A1N(prescale[3]), .B0(n18), .Y(\eq_65/B[3] ) );
  AO21X2M U11 ( .A0(n19), .A1(prescale[5]), .B0(n7), .Y(n1) );
  OAI2BB1X2M U12 ( .A0N(n16), .A1N(prescale[2]), .B0(n17), .Y(\eq_65/B[2] ) );
  NOR3X2M U13 ( .A(current_state[0]), .B(current_state[2]), .C(n126), .Y(n115)
         );
  NOR3X2M U14 ( .A(current_state[0]), .B(current_state[1]), .C(n103), .Y(n99)
         );
  NAND2XLM U15 ( .A(n114), .B(n99), .Y(n118) );
  NOR2X2M U16 ( .A(n8), .B(n9), .Y(n96) );
  NOR2X2M U17 ( .A(n10), .B(n11), .Y(n78) );
  NOR2X2M U18 ( .A(n14), .B(n15), .Y(n40) );
  NOR2X2M U19 ( .A(n8), .B(n9), .Y(n97) );
  NOR2X2M U20 ( .A(n12), .B(n13), .Y(n55) );
  NOR2X2M U21 ( .A(n12), .B(n13), .Y(n52) );
  NOR2X2M U22 ( .A(n12), .B(n13), .Y(n54) );
  NOR2X2M U23 ( .A(n8), .B(n9), .Y(n93) );
  NOR2X2M U24 ( .A(n8), .B(n9), .Y(n90) );
  NOR2X2M U25 ( .A(n8), .B(n9), .Y(n92) );
  NOR2X2M U26 ( .A(n10), .B(n11), .Y(n75) );
  NOR2X2M U27 ( .A(n10), .B(n11), .Y(n72) );
  NOR2X2M U28 ( .A(n10), .B(n11), .Y(n74) );
  NOR2X2M U29 ( .A(n14), .B(n15), .Y(n34) );
  NOR2X2M U30 ( .A(n14), .B(n15), .Y(n31) );
  NOR2X2M U31 ( .A(n14), .B(n15), .Y(n33) );
  INVX2M U32 ( .A(n2), .Y(n13) );
  INVX2M U33 ( .A(n3), .Y(n9) );
  INVX2M U34 ( .A(n4), .Y(n11) );
  INVX2M U35 ( .A(n5), .Y(n15) );
  INVX2M U36 ( .A(n2), .Y(n12) );
  INVX2M U37 ( .A(n3), .Y(n8) );
  INVX2M U38 ( .A(n4), .Y(n10) );
  INVX2M U39 ( .A(n5), .Y(n14) );
  NOR3BX2M U40 ( .AN(n2), .B(N122), .C(n13), .Y(n53) );
  NOR3BX2M U41 ( .AN(n3), .B(N228), .C(n9), .Y(n91) );
  NOR3BX2M U42 ( .AN(n4), .B(N178), .C(n11), .Y(n73) );
  NOR3BX2M U43 ( .AN(n5), .B(N71), .C(n15), .Y(n32) );
  OR2X2M U44 ( .A(N122), .B(n20), .Y(n2) );
  OR2X2M U45 ( .A(N228), .B(n20), .Y(n3) );
  OR2X2M U46 ( .A(N178), .B(n20), .Y(n4) );
  OR2X2M U47 ( .A(N71), .B(n20), .Y(n5) );
  NOR2X2M U48 ( .A(n12), .B(n13), .Y(n59) );
  NOR2X2M U49 ( .A(n12), .B(n13), .Y(n58) );
  NOR2X2M U50 ( .A(n10), .B(n11), .Y(n79) );
  NOR2X2M U51 ( .A(n14), .B(n15), .Y(n41) );
  OR2X2M U52 ( .A(prescale[1]), .B(prescale[0]), .Y(n16) );
  BUFX2M U53 ( .A(\add_120/A[5] ), .Y(n7) );
  NOR2X2M U54 ( .A(n19), .B(prescale[5]), .Y(\add_120/A[5] ) );
  BUFX2M U55 ( .A(dat_samp_en), .Y(enable_counter) );
  AND2X1M U56 ( .A(\add_120/carry[4] ), .B(n1), .Y(\add_120/carry[5] ) );
  CLKXOR2X2M U57 ( .A(n1), .B(\add_120/carry[4] ), .Y(N201) );
  AND2X1M U58 ( .A(\add_120/carry[3] ), .B(\eq_65/B[4] ), .Y(
        \add_120/carry[4] ) );
  CLKXOR2X2M U59 ( .A(\eq_65/B[4] ), .B(\add_120/carry[3] ), .Y(N200) );
  AND2X1M U60 ( .A(\add_120/carry[2] ), .B(\eq_65/B[3] ), .Y(
        \add_120/carry[3] ) );
  CLKXOR2X2M U61 ( .A(\eq_65/B[3] ), .B(\add_120/carry[2] ), .Y(N199) );
  OR2X1M U62 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_120/carry[2] ) );
  XNOR2X1M U63 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N198) );
  AND2X1M U64 ( .A(\add_62/carry[4] ), .B(n1), .Y(\add_62/carry[5] ) );
  CLKXOR2X2M U65 ( .A(n1), .B(\add_62/carry[4] ), .Y(N44) );
  AND2X1M U66 ( .A(\add_62/carry[3] ), .B(\eq_65/B[4] ), .Y(\add_62/carry[4] )
         );
  CLKXOR2X2M U67 ( .A(\eq_65/B[4] ), .B(\add_62/carry[3] ), .Y(N43) );
  AND2X1M U68 ( .A(\add_62/carry[2] ), .B(\eq_65/B[3] ), .Y(\add_62/carry[3] )
         );
  CLKXOR2X2M U69 ( .A(\eq_65/B[3] ), .B(\add_62/carry[2] ), .Y(N42) );
  OR2X1M U70 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_62/carry[2] ) );
  XNOR2X1M U71 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N41) );
  AND2X1M U72 ( .A(\add_108/carry[4] ), .B(n1), .Y(\add_108/carry[5] ) );
  CLKXOR2X2M U73 ( .A(n1), .B(\add_108/carry[4] ), .Y(N151) );
  AND2X1M U74 ( .A(\add_108/carry[3] ), .B(\eq_65/B[4] ), .Y(
        \add_108/carry[4] ) );
  CLKXOR2X2M U75 ( .A(\eq_65/B[4] ), .B(\add_108/carry[3] ), .Y(N150) );
  AND2X1M U76 ( .A(\add_108/carry[2] ), .B(\eq_65/B[3] ), .Y(
        \add_108/carry[3] ) );
  CLKXOR2X2M U77 ( .A(\eq_65/B[3] ), .B(\add_108/carry[2] ), .Y(N149) );
  OR2X1M U78 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_108/carry[2] ) );
  XNOR2X1M U79 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N148) );
  AND2X1M U80 ( .A(\add_79/carry[4] ), .B(n1), .Y(\add_79/carry[5] ) );
  CLKXOR2X2M U81 ( .A(n1), .B(\add_79/carry[4] ), .Y(N95) );
  AND2X1M U82 ( .A(\add_79/carry[3] ), .B(\eq_65/B[4] ), .Y(\add_79/carry[4] )
         );
  CLKXOR2X2M U83 ( .A(\eq_65/B[4] ), .B(\add_79/carry[3] ), .Y(N94) );
  AND2X1M U84 ( .A(\add_79/carry[2] ), .B(\eq_65/B[3] ), .Y(\add_79/carry[3] )
         );
  CLKXOR2X2M U85 ( .A(\eq_65/B[3] ), .B(\add_79/carry[2] ), .Y(N93) );
  OR2X1M U86 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_79/carry[2] ) );
  XNOR2X1M U87 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N92) );
  CLKINVX1M U88 ( .A(prescale[0]), .Y(\eq_65/B[0] ) );
  OR2X1M U89 ( .A(n16), .B(prescale[2]), .Y(n17) );
  OR2X1M U90 ( .A(n17), .B(prescale[3]), .Y(n18) );
  OR2X1M U91 ( .A(n18), .B(prescale[4]), .Y(n19) );
  XNOR2X1M U92 ( .A(\add_62/carry[5] ), .B(n20), .Y(N45) );
  AND2X1M U93 ( .A(\add_62/carry[5] ), .B(n7), .Y(N71) );
  XNOR2X1M U94 ( .A(\add_79/carry[5] ), .B(n20), .Y(N96) );
  AND2X1M U95 ( .A(\add_79/carry[5] ), .B(n7), .Y(N122) );
  XNOR2X1M U96 ( .A(\add_108/carry[5] ), .B(n20), .Y(N152) );
  AND2X1M U97 ( .A(\add_108/carry[5] ), .B(n7), .Y(N178) );
  AND2X1M U98 ( .A(\add_120/carry[5] ), .B(n7), .Y(N228) );
  XNOR2X1M U99 ( .A(\add_120/carry[5] ), .B(n20), .Y(N202) );
  XNOR2X1M U100 ( .A(N45), .B(edge_cnt[5]), .Y(n24) );
  XNOR2X1M U101 ( .A(N44), .B(edge_cnt[4]), .Y(n23) );
  XNOR2X1M U102 ( .A(N43), .B(edge_cnt[3]), .Y(n22) );
  XNOR2X1M U103 ( .A(N42), .B(edge_cnt[2]), .Y(n21) );
  NAND4X1M U104 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NOR2BX1M U105 ( .AN(N91), .B(edge_cnt[0]), .Y(n25) );
  OAI2B2X1M U106 ( .A1N(edge_cnt[1]), .A0(n25), .B0(N41), .B1(n25), .Y(n28) );
  NOR2BX1M U107 ( .AN(edge_cnt[0]), .B(N91), .Y(n26) );
  OAI2B2X1M U108 ( .A1N(N41), .A0(n26), .B0(edge_cnt[1]), .B1(n26), .Y(n27) );
  CLKNAND2X2M U109 ( .A(n28), .B(n27), .Y(n29) );
  NOR4X1M U110 ( .A(n30), .B(n29), .C(n14), .D(n15), .Y(n36) );
  AND4X1M U111 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  AND4X1M U112 ( .A(n41), .B(n40), .C(n36), .D(n35), .Y(N72) );
  XNOR2X1M U113 ( .A(N96), .B(edge_cnt[5]), .Y(n45) );
  XNOR2X1M U114 ( .A(N95), .B(edge_cnt[4]), .Y(n44) );
  XNOR2X1M U115 ( .A(N94), .B(edge_cnt[3]), .Y(n43) );
  XNOR2X1M U116 ( .A(N93), .B(edge_cnt[2]), .Y(n42) );
  NAND4X1M U117 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(n51) );
  NOR2BX1M U118 ( .AN(N91), .B(edge_cnt[0]), .Y(n46) );
  OAI2B2X1M U119 ( .A1N(edge_cnt[1]), .A0(n46), .B0(N92), .B1(n46), .Y(n49) );
  NOR2BX1M U120 ( .AN(edge_cnt[0]), .B(N91), .Y(n47) );
  OAI2B2X1M U121 ( .A1N(N92), .A0(n47), .B0(edge_cnt[1]), .B1(n47), .Y(n48) );
  CLKNAND2X2M U122 ( .A(n49), .B(n48), .Y(n50) );
  NOR4X1M U123 ( .A(n51), .B(n50), .C(n12), .D(n13), .Y(n57) );
  AND4X1M U124 ( .A(n55), .B(n54), .C(n53), .D(n52), .Y(n56) );
  AND4X1M U125 ( .A(n59), .B(n58), .C(n57), .D(n56), .Y(N123) );
  XNOR2X1M U126 ( .A(N152), .B(edge_cnt[5]), .Y(n65) );
  XNOR2X1M U127 ( .A(N151), .B(edge_cnt[4]), .Y(n62) );
  XNOR2X1M U128 ( .A(N150), .B(edge_cnt[3]), .Y(n61) );
  XNOR2X1M U129 ( .A(N149), .B(edge_cnt[2]), .Y(n60) );
  NAND4X1M U130 ( .A(n65), .B(n62), .C(n61), .D(n60), .Y(n71) );
  NOR2BX1M U131 ( .AN(N91), .B(edge_cnt[0]), .Y(n66) );
  OAI2B2X1M U132 ( .A1N(edge_cnt[1]), .A0(n66), .B0(N148), .B1(n66), .Y(n69)
         );
  NOR2BX1M U133 ( .AN(edge_cnt[0]), .B(N91), .Y(n67) );
  OAI2B2X1M U134 ( .A1N(N148), .A0(n67), .B0(edge_cnt[1]), .B1(n67), .Y(n68)
         );
  CLKNAND2X2M U135 ( .A(n69), .B(n68), .Y(n70) );
  NOR4X1M U136 ( .A(n71), .B(n70), .C(n10), .D(n11), .Y(n77) );
  AND4X1M U137 ( .A(n75), .B(n74), .C(n73), .D(n72), .Y(n76) );
  AND4X1M U138 ( .A(n79), .B(n78), .C(n77), .D(n76), .Y(N179) );
  XNOR2X1M U139 ( .A(N202), .B(edge_cnt[5]), .Y(n83) );
  XNOR2X1M U140 ( .A(N201), .B(edge_cnt[4]), .Y(n82) );
  XNOR2X1M U141 ( .A(N200), .B(edge_cnt[3]), .Y(n81) );
  XNOR2X1M U142 ( .A(N199), .B(edge_cnt[2]), .Y(n80) );
  NAND4X1M U143 ( .A(n83), .B(n82), .C(n81), .D(n80), .Y(n89) );
  NOR2BX1M U144 ( .AN(N91), .B(edge_cnt[0]), .Y(n84) );
  OAI2B2X1M U145 ( .A1N(edge_cnt[1]), .A0(n84), .B0(N198), .B1(n84), .Y(n87)
         );
  NOR2BX1M U146 ( .AN(edge_cnt[0]), .B(N91), .Y(n85) );
  OAI2B2X1M U147 ( .A1N(N198), .A0(n85), .B0(edge_cnt[1]), .B1(n85), .Y(n86)
         );
  CLKNAND2X2M U148 ( .A(n87), .B(n86), .Y(n88) );
  NOR4X1M U149 ( .A(n89), .B(n88), .C(n8), .D(n9), .Y(n95) );
  AND4X1M U150 ( .A(n93), .B(n92), .C(n91), .D(n90), .Y(n94) );
  AND4X1M U151 ( .A(n97), .B(n96), .C(n95), .D(n94), .Y(N229) );
  NOR2BX1M U152 ( .AN(N72), .B(n98), .Y(strt_chk_en) );
  AND2X1M U153 ( .A(N229), .B(n99), .Y(stp_chk_en) );
  OAI2B2X1M U154 ( .A1N(N179), .A0(n100), .B0(n101), .B1(n102), .Y(par_chk_en)
         );
  OAI222X1M U155 ( .A0(n103), .A1(n104), .B0(n105), .B1(n106), .C0(n100), .C1(
        n107), .Y(n127) );
  CLKINVX1M U156 ( .A(n108), .Y(n105) );
  OAI31X1M U157 ( .A0(n109), .A1(n101), .A2(n106), .B0(n110), .Y(n64) );
  MXI2X1M U158 ( .A(n111), .B(n112), .S0(current_state[0]), .Y(n110) );
  NOR3X1M U159 ( .A(current_state[1]), .B(rx_in), .C(current_state[2]), .Y(
        n111) );
  CLKINVX1M U160 ( .A(par_en), .Y(n109) );
  AO21XLM U161 ( .A0(n112), .A1(current_state[1]), .B0(n113), .Y(n63) );
  OAI32X1M U162 ( .A0(n107), .A1(strt_glitch), .A2(n98), .B0(n108), .B1(n106), 
        .Y(n113) );
  CLKNAND2X2M U163 ( .A(n114), .B(n115), .Y(n106) );
  NOR2X1M U164 ( .A(n101), .B(par_en), .Y(n108) );
  NAND3BX1M U165 ( .AN(bit_cnt[0]), .B(bit_cnt[3]), .C(n116), .Y(n101) );
  NOR2X1M U166 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n116) );
  OAI21X1M U167 ( .A0(n114), .A1(n100), .B0(n104), .Y(n112) );
  NAND2BX1M U168 ( .AN(n117), .B(n107), .Y(n104) );
  CLKINVX1M U169 ( .A(n102), .Y(deser_en) );
  CLKNAND2X2M U170 ( .A(N123), .B(n115), .Y(n102) );
  AOI211X1M U171 ( .A0(par_err), .A1(par_en), .B0(n118), .C0(stp_err), .Y(
        data_valid) );
  CLKINVX1M U172 ( .A(n107), .Y(n114) );
  NAND4X1M U173 ( .A(n119), .B(n120), .C(n121), .D(n122), .Y(n107) );
  NOR3X1M U174 ( .A(n123), .B(n124), .C(n125), .Y(n122) );
  CLKXOR2X2M U175 ( .A(\eq_65/B[4] ), .B(edge_cnt[4]), .Y(n125) );
  CLKXOR2X2M U176 ( .A(\eq_65/B[1] ), .B(edge_cnt[1]), .Y(n124) );
  CLKXOR2X2M U177 ( .A(\eq_65/B[0] ), .B(edge_cnt[0]), .Y(n123) );
  XNOR2X1M U178 ( .A(\eq_65/B[2] ), .B(edge_cnt[2]), .Y(n121) );
  XNOR2X1M U179 ( .A(\eq_65/B[3] ), .B(edge_cnt[3]), .Y(n120) );
  XNOR2X1M U180 ( .A(n1), .B(edge_cnt[5]), .Y(n119) );
  CLKNAND2X2M U181 ( .A(n117), .B(n100), .Y(dat_samp_en) );
  NAND3X1M U182 ( .A(current_state[0]), .B(n103), .C(current_state[1]), .Y(
        n100) );
  NOR3BX1M U183 ( .AN(n98), .B(n115), .C(n99), .Y(n117) );
  NAND3X1M U184 ( .A(n126), .B(n103), .C(current_state[0]), .Y(n98) );
  CLKINVX1M U185 ( .A(current_state[2]), .Y(n103) );
  CLKINVX1M U186 ( .A(current_state[1]), .Y(n126) );
endmodule


module edge_bit_counter_test_1 ( clk, rst, enable, prescale, bit_cnt, edge_cnt, 
        test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk, rst, enable, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N16, N17, N18, N19, N37, N38, N39,
         N40, N41, N42, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         \add_21/carry[5] , \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n13, n14, n15, n16, n17, n18, n19, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n49, n50, n51, n52, n53;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n26), .SI(bit_cnt[2]), .SE(n53), .CK(clk), 
        .RN(n14), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n29), .SI(test_si), .SE(n52), .CK(clk), .RN(
        n14), .Q(bit_cnt[0]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n27), .SI(bit_cnt[1]), .SE(n51), .CK(clk), 
        .RN(n14), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n28), .SI(bit_cnt[0]), .SE(n50), .CK(clk), 
        .RN(n14), .Q(bit_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .SI(edge_cnt[4]), .SE(n53), .CK(clk), 
        .RN(n14), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .SI(edge_cnt[1]), .SE(n52), .CK(clk), 
        .RN(n14), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .SI(edge_cnt[2]), .SE(n51), .CK(clk), 
        .RN(n14), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .SI(edge_cnt[3]), .SE(n50), .CK(clk), 
        .RN(n14), .Q(edge_cnt[4]) );
  INVX2M U15 ( .A(enable), .Y(n46) );
  INVX2M U16 ( .A(n15), .Y(n14) );
  INVX2M U17 ( .A(rst), .Y(n15) );
  INVX2M U18 ( .A(n20), .Y(n40) );
  AOI21X2M U19 ( .A0(n41), .A1(enable), .B0(n40), .Y(n25) );
  NAND2X2M U20 ( .A(N13), .B(enable), .Y(n20) );
  NOR2BX2M U21 ( .AN(N16), .B(n20), .Y(N38) );
  NOR2BX2M U22 ( .AN(N17), .B(n20), .Y(N39) );
  NOR2BX2M U23 ( .AN(N18), .B(n20), .Y(N40) );
  NOR2BX2M U24 ( .AN(N19), .B(n20), .Y(N41) );
  OAI32X1M U25 ( .A0(n46), .A1(bit_cnt[0]), .A2(n40), .B0(n41), .B1(n20), .Y(
        n29) );
  OAI32X1M U26 ( .A0(n23), .A1(bit_cnt[2]), .A2(n43), .B0(n24), .B1(n44), .Y(
        n27) );
  INVX2M U27 ( .A(bit_cnt[2]), .Y(n44) );
  OA21X2M U28 ( .A0(n46), .A1(bit_cnt[1]), .B0(n25), .Y(n24) );
  NAND3X2M U29 ( .A(bit_cnt[0]), .B(n20), .C(enable), .Y(n23) );
  OAI22X1M U30 ( .A0(n25), .A1(n43), .B0(bit_cnt[1]), .B1(n23), .Y(n28) );
  OAI2BB2X1M U31 ( .B0(n45), .B1(n20), .A0N(n21), .A1N(enable), .Y(n26) );
  OAI32X1M U32 ( .A0(N13), .A1(bit_cnt[3]), .A2(n22), .B0(n45), .B1(n42), .Y(
        n21) );
  INVX2M U33 ( .A(bit_cnt[3]), .Y(n45) );
  INVX2M U34 ( .A(n22), .Y(n42) );
  NOR2X2M U35 ( .A(edge_cnt[0]), .B(n20), .Y(N37) );
  NOR2X2M U36 ( .A(n13), .B(n20), .Y(N42) );
  XNOR2X2M U37 ( .A(\add_21/carry[5] ), .B(edge_cnt[5]), .Y(n13) );
  ADDHX1M U38 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_21/carry[2] ), .S(
        N16) );
  ADDHX1M U39 ( .A(edge_cnt[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N17) );
  ADDHX1M U40 ( .A(edge_cnt[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N18) );
  ADDHX1M U41 ( .A(edge_cnt[4]), .B(\add_21/carry[4] ), .CO(\add_21/carry[5] ), 
        .S(N19) );
  NAND3X2M U42 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Y(n22) );
  INVX2M U43 ( .A(bit_cnt[1]), .Y(n43) );
  INVX2M U44 ( .A(bit_cnt[0]), .Y(n41) );
  OR2X2M U45 ( .A(prescale[1]), .B(prescale[0]), .Y(n16) );
  INVX2M U46 ( .A(prescale[3]), .Y(n30) );
  CLKINVX1M U47 ( .A(prescale[0]), .Y(N7) );
  OAI2BB1X1M U48 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n16), .Y(N8) );
  NOR2X1M U49 ( .A(n16), .B(prescale[2]), .Y(n17) );
  AO21XLM U50 ( .A0(n16), .A1(prescale[2]), .B0(n17), .Y(N9) );
  CLKNAND2X2M U51 ( .A(n17), .B(n30), .Y(n18) );
  OAI21X1M U52 ( .A0(n17), .A1(n30), .B0(n18), .Y(N10) );
  XNOR2X1M U53 ( .A(prescale[4]), .B(n18), .Y(N11) );
  NOR2X1M U54 ( .A(prescale[4]), .B(n18), .Y(n19) );
  CLKXOR2X2M U55 ( .A(prescale[5]), .B(n19), .Y(N12) );
  NOR2BX1M U56 ( .AN(N7), .B(edge_cnt[0]), .Y(n31) );
  OAI2B2X1M U57 ( .A1N(edge_cnt[1]), .A0(n31), .B0(N8), .B1(n31), .Y(n39) );
  NOR2BX1M U58 ( .AN(edge_cnt[0]), .B(N7), .Y(n32) );
  OAI2B2X1M U59 ( .A1N(N8), .A0(n32), .B0(edge_cnt[1]), .B1(n32), .Y(n38) );
  XNOR2X1M U60 ( .A(N9), .B(edge_cnt[2]), .Y(n37) );
  CLKXOR2X2M U61 ( .A(N12), .B(edge_cnt[5]), .Y(n35) );
  CLKXOR2X2M U62 ( .A(N10), .B(edge_cnt[3]), .Y(n34) );
  CLKXOR2X2M U63 ( .A(N11), .B(edge_cnt[4]), .Y(n33) );
  NOR3X1M U64 ( .A(n35), .B(n34), .C(n33), .Y(n36) );
  NAND4X1M U65 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(N13) );
  INVXLM U66 ( .A(test_se), .Y(n49) );
  INVXLM U67 ( .A(n49), .Y(n50) );
  INVXLM U68 ( .A(n49), .Y(n51) );
  INVXLM U69 ( .A(n49), .Y(n52) );
  INVXLM U70 ( .A(n49), .Y(n53) );
  SDFFRQX4M \edge_cnt_reg[0]  ( .D(N37), .SI(bit_cnt[3]), .SE(n51), .CK(clk), 
        .RN(n14), .Q(edge_cnt[0]) );
  SDFFRQX4M \edge_cnt_reg[1]  ( .D(N38), .SI(edge_cnt[0]), .SE(n50), .CK(clk), 
        .RN(n14), .Q(edge_cnt[1]) );
endmodule


module data_sampling_test_1 ( clk, rst, prescale, rx_in, dat_samp_en, edge_cnt, 
        sampled_bit, test_si, test_so, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst, rx_in, dat_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   N6, N7, N8, N9, N10, N11, N15, N16, N17, N18, N19, n25, n26, n27, n28,
         \add_33/carry[4] , \add_33/carry[3] , \add_33/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n51;
  wire   [4:0] sample_center;
  wire   [2:0] samples;
  assign test_so = samples[2];

  SDFFSQX2M \samples_reg[2]  ( .D(n28), .SI(samples[1]), .SE(n51), .CK(clk), 
        .SN(rst), .Q(samples[2]) );
  SDFFSQX2M \samples_reg[0]  ( .D(n26), .SI(sampled_bit), .SE(n51), .CK(clk), 
        .SN(rst), .Q(samples[0]) );
  SDFFSQX2M \samples_reg[1]  ( .D(n27), .SI(samples[0]), .SE(n51), .CK(clk), 
        .SN(rst), .Q(samples[1]) );
  SDFFSQX2M sampled_bit_reg ( .D(n25), .SI(test_si), .SE(n51), .CK(clk), .SN(
        rst), .Q(sampled_bit) );
  AO21X2M U4 ( .A0(n1), .A1(prescale[2]), .B0(n2), .Y(sample_center[1]) );
  XNOR2XLM U5 ( .A(edge_cnt[3]), .B(sample_center[3]), .Y(n37) );
  OAI21XLM U6 ( .A0(sample_center[3]), .A1(n7), .B0(sample_center[4]), .Y(n8)
         );
  XNOR2XLM U7 ( .A(n7), .B(sample_center[3]), .Y(N9) );
  OAI21X2M U8 ( .A0(n2), .A1(n5), .B0(n3), .Y(sample_center[2]) );
  NAND2XLM U12 ( .A(n2), .B(n5), .Y(n3) );
  OAI2BB1XLM U13 ( .A0N(sample_center[0]), .A1N(sample_center[1]), .B0(n6), 
        .Y(N7) );
  XNOR2XLM U14 ( .A(edge_cnt[2]), .B(sample_center[2]), .Y(n38) );
  XNOR2XLM U15 ( .A(edge_cnt[1]), .B(sample_center[1]), .Y(n36) );
  XNOR2X2M U16 ( .A(prescale[4]), .B(n3), .Y(sample_center[3]) );
  ADDHX1M U17 ( .A(sample_center[2]), .B(\add_33/carry[2] ), .CO(
        \add_33/carry[3] ), .S(N16) );
  ADDHX1M U18 ( .A(sample_center[3]), .B(\add_33/carry[3] ), .CO(
        \add_33/carry[4] ), .S(N17) );
  ADDHX1M U19 ( .A(sample_center[1]), .B(sample_center[0]), .CO(
        \add_33/carry[2] ), .S(N15) );
  ADDHX1M U20 ( .A(sample_center[4]), .B(\add_33/carry[4] ), .CO(N19), .S(N18)
         );
  INVX2M U21 ( .A(prescale[3]), .Y(n5) );
  OR2X1M U22 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  OAI2BB1X1M U23 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(
        sample_center[0]) );
  NOR2X1M U24 ( .A(n1), .B(prescale[2]), .Y(n2) );
  NOR2X1M U25 ( .A(prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U26 ( .A(prescale[5]), .B(n4), .Y(sample_center[4]) );
  CLKINVX1M U27 ( .A(sample_center[0]), .Y(N6) );
  NAND2BX1M U28 ( .AN(sample_center[1]), .B(N6), .Y(n6) );
  OR2X1M U29 ( .A(n6), .B(sample_center[2]), .Y(n7) );
  OAI2BB1X1M U30 ( .A0N(n6), .A1N(sample_center[2]), .B0(n7), .Y(N8) );
  NOR3X1M U31 ( .A(sample_center[3]), .B(sample_center[4]), .C(n7), .Y(N11) );
  NAND2BX1M U32 ( .AN(N11), .B(n8), .Y(N10) );
  CLKMX2X2M U33 ( .A(samples[2]), .B(rx_in), .S0(n9), .Y(n28) );
  NOR4X1M U34 ( .A(n10), .B(n11), .C(n16), .D(n17), .Y(n9) );
  OR3X1M U35 ( .A(n18), .B(n19), .C(n20), .Y(n10) );
  CLKMX2X2M U36 ( .A(samples[1]), .B(rx_in), .S0(n21), .Y(n27) );
  NOR2X1M U37 ( .A(n16), .B(n22), .Y(n21) );
  CLKMX2X2M U38 ( .A(samples[0]), .B(rx_in), .S0(n23), .Y(n26) );
  NOR2BX1M U39 ( .AN(dat_samp_en), .B(n24), .Y(n23) );
  CLKMX2X2M U40 ( .A(sampled_bit), .B(n29), .S0(n30), .Y(n25) );
  NOR3X1M U41 ( .A(n16), .B(n19), .C(n31), .Y(n30) );
  NOR4X1M U42 ( .A(n18), .B(n20), .C(n11), .D(n17), .Y(n31) );
  CLKXOR2X2M U43 ( .A(edge_cnt[4]), .B(N18), .Y(n17) );
  NAND3X1M U44 ( .A(n32), .B(n33), .C(n34), .Y(n11) );
  XNOR2X1M U45 ( .A(edge_cnt[1]), .B(N15), .Y(n34) );
  XNOR2X1M U46 ( .A(edge_cnt[5]), .B(N19), .Y(n33) );
  CLKXOR2X2M U47 ( .A(n35), .B(N6), .Y(n32) );
  CLKINVX1M U48 ( .A(edge_cnt[0]), .Y(n35) );
  CLKXOR2X2M U49 ( .A(edge_cnt[3]), .B(N17), .Y(n20) );
  CLKXOR2X2M U50 ( .A(edge_cnt[2]), .B(N16), .Y(n18) );
  CLKINVX1M U51 ( .A(n22), .Y(n19) );
  NAND4X1M U52 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n22) );
  NOR3X1M U53 ( .A(n40), .B(edge_cnt[5]), .C(n41), .Y(n39) );
  CLKXOR2X2M U54 ( .A(sample_center[0]), .B(edge_cnt[0]), .Y(n41) );
  CLKXOR2X2M U55 ( .A(sample_center[4]), .B(edge_cnt[4]), .Y(n40) );
  CLKNAND2X2M U56 ( .A(dat_samp_en), .B(n24), .Y(n16) );
  NAND4X1M U57 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR3X1M U58 ( .A(n46), .B(n47), .C(n48), .Y(n45) );
  CLKXOR2X2M U59 ( .A(edge_cnt[4]), .B(N10), .Y(n48) );
  CLKXOR2X2M U60 ( .A(edge_cnt[0]), .B(N6), .Y(n47) );
  CLKXOR2X2M U61 ( .A(edge_cnt[5]), .B(N11), .Y(n46) );
  XNOR2X1M U62 ( .A(edge_cnt[2]), .B(N8), .Y(n44) );
  XNOR2X1M U63 ( .A(edge_cnt[3]), .B(N9), .Y(n43) );
  XNOR2X1M U64 ( .A(edge_cnt[1]), .B(N7), .Y(n42) );
  ADDFX1M U65 ( .A(samples[0]), .B(samples[2]), .CI(samples[1]), .CO(n29) );
  DLY1X1M U66 ( .A(test_se), .Y(n51) );
endmodule


module deserializer_parallel_data8_test_1 ( clk, rst, deser_en, bit_cnt, 
        sampled_bit, p_data, test_si, test_so, test_se );
  input [3:0] bit_cnt;
  output [7:0] p_data;
  input clk, rst, deser_en, sampled_bit, test_si, test_se;
  output test_so;
  wire   n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n16, n28, n31, n32, n33, n34;
  assign test_so = n9;

  SDFFRQX2M \p_data_reg[0]  ( .D(n20), .SI(test_si), .SE(n33), .CK(clk), .RN(
        rst), .Q(p_data[0]) );
  SDFFRX1M \p_data_reg[5]  ( .D(n25), .SI(n12), .SE(n32), .CK(clk), .RN(rst), 
        .Q(p_data[5]), .QN(n11) );
  SDFFRX1M \p_data_reg[1]  ( .D(n21), .SI(p_data[0]), .SE(n34), .CK(clk), .RN(
        rst), .Q(p_data[1]), .QN(n15) );
  SDFFRX1M \p_data_reg[6]  ( .D(n26), .SI(n11), .SE(n33), .CK(clk), .RN(rst), 
        .Q(p_data[6]), .QN(n10) );
  SDFFRX1M \p_data_reg[2]  ( .D(n22), .SI(n15), .SE(n32), .CK(clk), .RN(rst), 
        .Q(p_data[2]), .QN(n14) );
  SDFFRX1M \p_data_reg[4]  ( .D(n24), .SI(n13), .SE(n34), .CK(clk), .RN(rst), 
        .Q(p_data[4]), .QN(n12) );
  SDFFRX1M \p_data_reg[3]  ( .D(n23), .SI(n14), .SE(n33), .CK(clk), .RN(rst), 
        .Q(p_data[3]), .QN(n13) );
  SDFFRX1M \p_data_reg[7]  ( .D(n27), .SI(n10), .SE(n32), .CK(clk), .RN(rst), 
        .Q(p_data[7]), .QN(n9) );
  BUFX2M U11 ( .A(n17), .Y(n16) );
  INVX2M U12 ( .A(n16), .Y(n28) );
  OAI22X1M U13 ( .A0(n16), .A1(n14), .B0(n28), .B1(n15), .Y(n21) );
  OAI22X1M U14 ( .A0(n16), .A1(n13), .B0(n28), .B1(n14), .Y(n22) );
  OAI22X1M U15 ( .A0(n16), .A1(n12), .B0(n28), .B1(n13), .Y(n23) );
  OAI22X1M U16 ( .A0(n16), .A1(n11), .B0(n28), .B1(n12), .Y(n24) );
  OAI22X1M U17 ( .A0(n16), .A1(n10), .B0(n28), .B1(n11), .Y(n25) );
  OAI22X1M U18 ( .A0(n16), .A1(n9), .B0(n28), .B1(n10), .Y(n26) );
  OAI2BB2X1M U19 ( .B0(n28), .B1(n9), .A0N(sampled_bit), .A1N(n28), .Y(n27) );
  OAI2BB2X1M U20 ( .B0(n16), .B1(n15), .A0N(p_data[0]), .A1N(n16), .Y(n20) );
  OAI2B11X2M U21 ( .A1N(bit_cnt[3]), .A0(n18), .B0(n19), .C0(deser_en), .Y(n17) );
  OR4X1M U22 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .D(bit_cnt[3]), 
        .Y(n19) );
  NOR3X2M U23 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n18) );
  INVXLM U24 ( .A(test_se), .Y(n31) );
  INVXLM U25 ( .A(n31), .Y(n32) );
  INVXLM U26 ( .A(n31), .Y(n33) );
  INVXLM U27 ( .A(n31), .Y(n34) );
endmodule


module parity_check_parallel_data8_test_1 ( clk, rst, par_typ, sampled_bit, 
        par_chk_en, p_data, bit_cnt, par_err, test_si, test_se );
  input [7:0] p_data;
  input [3:0] bit_cnt;
  input clk, rst, par_typ, sampled_bit, par_chk_en, test_si, test_se;
  output par_err;
  wire   par_Chk, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n3;

  SDFFRQX2M par_Chk_reg ( .D(n14), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_Chk) );
  SDFFRQX2M par_err_reg ( .D(n13), .SI(par_Chk), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_err) );
  NAND4BBX1M U5 ( .AN(bit_cnt[2]), .BN(bit_cnt[1]), .C(par_chk_en), .D(
        bit_cnt[3]), .Y(n5) );
  OAI31X1M U6 ( .A0(n3), .A1(n4), .A2(n5), .B0(n6), .Y(n13) );
  XNOR2X2M U7 ( .A(par_Chk), .B(sampled_bit), .Y(n4) );
  NAND2X2M U8 ( .A(par_err), .B(n5), .Y(n6) );
  OAI2BB2X1M U9 ( .B0(n7), .B1(n8), .A0N(n8), .A1N(par_Chk), .Y(n14) );
  XOR3XLM U10 ( .A(n9), .B(par_typ), .C(n10), .Y(n7) );
  NAND2BX2M U11 ( .AN(n5), .B(n3), .Y(n8) );
  XOR3XLM U12 ( .A(p_data[2]), .B(p_data[1]), .C(n11), .Y(n10) );
  XNOR2X2M U13 ( .A(p_data[4]), .B(p_data[3]), .Y(n11) );
  INVX2M U14 ( .A(bit_cnt[0]), .Y(n3) );
  XOR3XLM U15 ( .A(p_data[6]), .B(p_data[5]), .C(n12), .Y(n9) );
  CLKXOR2X2M U16 ( .A(sampled_bit), .B(p_data[7]), .Y(n12) );
endmodule


module strt_check_test_1 ( clk, rst, sampled_bit, strt_chk_en, strt_glitch, 
        test_si, test_se );
  input clk, rst, sampled_bit, strt_chk_en, test_si, test_se;
  output strt_glitch;
  wire   n2;

  SDFFRQX2M strt_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(strt_chk_en), .B1(sampled_bit), .A0(strt_glitch), .A1N(
        strt_chk_en), .Y(n2) );
endmodule


module stop_check_test_1 ( clk, rst, stp_chk_en, sampled_bit, stp_err, test_si, 
        test_se );
  input clk, rst, stp_chk_en, sampled_bit, test_si, test_se;
  output stp_err;
  wire   n3, n1, n5, n6;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(n6), .A1N(n1), .Y(n3) );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
  INVXLM U5 ( .A(stp_err), .Y(n5) );
  INVXLM U6 ( .A(n5), .Y(n6) );
endmodule


module uart_rx_parallel_data8_test_1 ( clk, rst, rx_in, par_en, par_typ, 
        prescale, p_data, par_err, stp_err, data_valid, test_si2, test_si1, 
        test_so1, test_se );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, rst, rx_in, par_en, par_typ, test_si2, test_si1, test_se;
  output par_err, stp_err, data_valid, test_so1;
  wire   strt_glitch, dat_samp_en, enable_counter, deser_en, par_chk_en,
         strt_chk_en, stp_chk_en, data_valid_int, sampled_bit, n2, n3, n5, n6,
         n7, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;
  assign test_so1 = strt_glitch;

  SDFFRQX2M data_valid_reg ( .D(data_valid_int), .SI(edge_cnt[5]), .SE(n16), 
        .CK(clk), .RN(n2), .Q(data_valid) );
  INVX4M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(rst), .Y(n3) );
  DLY1X1M U6 ( .A(n15), .Y(n18) );
  INVXLM U7 ( .A(n18), .Y(n10) );
  INVXLM U8 ( .A(n18), .Y(n11) );
  INVXLM U9 ( .A(n18), .Y(n12) );
  INVXLM U10 ( .A(stp_err), .Y(n13) );
  INVXLM U11 ( .A(n13), .Y(n14) );
  INVXLM U12 ( .A(test_se), .Y(n15) );
  INVXLM U13 ( .A(n15), .Y(n16) );
  INVXLM U14 ( .A(n15), .Y(n17) );
  INVXLM U15 ( .A(n15), .Y(n19) );
  fsm_parallel_data8_test_1 fsm_inst ( .clk(clk), .rst(n2), .rx_in(rx_in), 
        .bit_cnt(bit_cnt), .par_en(par_en), .edge_cnt(edge_cnt), .prescale(
        prescale), .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(n14), 
        .dat_samp_en(dat_samp_en), .enable_counter(enable_counter), .deser_en(
        deser_en), .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), 
        .stp_chk_en(stp_chk_en), .data_valid(data_valid_int), .test_si(n7), 
        .test_so(n6), .test_se(n17) );
  edge_bit_counter_test_1 counter_inst ( .clk(clk), .rst(n2), .enable(
        enable_counter), .prescale(prescale), .bit_cnt(bit_cnt), .edge_cnt(
        edge_cnt), .test_si(test_si1), .test_se(n12) );
  data_sampling_test_1 sampler_inst ( .clk(clk), .rst(n2), .prescale(prescale), 
        .rx_in(rx_in), .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt), 
        .sampled_bit(sampled_bit), .test_si(par_err), .test_so(n5), .test_se(
        n19) );
  deserializer_parallel_data8_test_1 deserializer_inst ( .clk(clk), .rst(n2), 
        .deser_en(deser_en), .bit_cnt(bit_cnt), .sampled_bit(sampled_bit), 
        .p_data(p_data), .test_si(data_valid), .test_so(n7), .test_se(n10) );
  parity_check_parallel_data8_test_1 parity_inst ( .clk(clk), .rst(n2), 
        .par_typ(par_typ), .sampled_bit(sampled_bit), .par_chk_en(par_chk_en), 
        .p_data(p_data), .bit_cnt(bit_cnt), .par_err(par_err), .test_si(n6), 
        .test_se(n11) );
  strt_check_test_1 start_check_inst ( .clk(clk), .rst(n2), .sampled_bit(
        sampled_bit), .strt_chk_en(strt_chk_en), .strt_glitch(strt_glitch), 
        .test_si(n5), .test_se(n16) );
  stop_check_test_1 stop_check_inst ( .clk(clk), .rst(n2), .stp_chk_en(
        stp_chk_en), .sampled_bit(sampled_bit), .stp_err(stp_err), .test_si(
        test_si2), .test_se(n16) );
endmodule


module serializer_parallel_data8_test_1 ( p_data, clk, rst, ser_en, ser_done, 
        serial_out, test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst, ser_en, test_si, test_se;
  output ser_done, serial_out, test_so;
  wire   N29, N30, N31, N32, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n19, n21, n23, n25, n27, n29, n31, n33, n35, n1, n4,
         n17, n18, n40, n41, n44, n45, n46, n47, n48;
  wire   [2:0] count;
  wire   [6:0] serial_reg;
  assign test_so = serial_reg[6];

  SDFFSQX2M \serial_reg_reg[0]  ( .D(n23), .SI(serial_out), .SE(n46), .CK(clk), 
        .SN(n1), .Q(serial_reg[0]) );
  SDFFRQX2M \serial_reg_reg[5]  ( .D(n33), .SI(serial_reg[4]), .SE(n48), .CK(
        clk), .RN(n1), .Q(serial_reg[5]) );
  SDFFRQX2M \serial_reg_reg[4]  ( .D(n31), .SI(serial_reg[3]), .SE(n47), .CK(
        clk), .RN(n1), .Q(serial_reg[4]) );
  SDFFRQX2M \serial_reg_reg[3]  ( .D(n29), .SI(serial_reg[2]), .SE(n46), .CK(
        clk), .RN(n1), .Q(serial_reg[3]) );
  SDFFRQX2M \serial_reg_reg[2]  ( .D(n27), .SI(serial_reg[1]), .SE(n45), .CK(
        clk), .RN(n1), .Q(serial_reg[2]) );
  SDFFRQX2M \serial_reg_reg[1]  ( .D(n25), .SI(serial_reg[0]), .SE(n48), .CK(
        clk), .RN(n1), .Q(serial_reg[1]) );
  SDFFRQX2M \serial_reg_reg[6]  ( .D(n35), .SI(serial_reg[5]), .SE(n47), .CK(
        clk), .RN(n1), .Q(serial_reg[6]) );
  SDFFRQX2M ser_done_reg ( .D(N29), .SI(count[2]), .SE(n46), .CK(clk), .RN(n1), 
        .Q(ser_done) );
  SDFFRQX2M \count_reg[2]  ( .D(N32), .SI(count[1]), .SE(n45), .CK(clk), .RN(
        n1), .Q(count[2]) );
  SDFFRQX2M \count_reg[0]  ( .D(N30), .SI(test_si), .SE(n48), .CK(clk), .RN(n1), .Q(count[0]) );
  SDFFRQX2M \count_reg[1]  ( .D(N31), .SI(count[0]), .SE(n47), .CK(clk), .RN(
        n1), .Q(count[1]) );
  SDFFSQX2M serial_out_reg ( .D(n21), .SI(ser_done), .SE(n45), .CK(clk), .SN(
        n1), .Q(serial_out) );
  AOI2BB2XLM U3 ( .B0(count[1]), .B1(count[0]), .A0N(n19), .A1N(n41), .Y(n14)
         );
  INVX4M U4 ( .A(n4), .Y(n1) );
  INVX2M U5 ( .A(rst), .Y(n4) );
  NOR2X4M U6 ( .A(n17), .B(n12), .Y(n3) );
  INVX2M U7 ( .A(n11), .Y(n18) );
  NAND2X2M U8 ( .A(ser_en), .B(n12), .Y(n11) );
  XNOR2X2M U9 ( .A(n19), .B(n41), .Y(n15) );
  NOR3X2M U10 ( .A(n17), .B(n14), .C(n15), .Y(N29) );
  NAND2X2M U11 ( .A(n14), .B(n15), .Y(n12) );
  INVX2M U12 ( .A(ser_en), .Y(n17) );
  NOR2X2M U13 ( .A(n19), .B(n17), .Y(N31) );
  OAI2BB1X2M U14 ( .A0N(n17), .A1N(serial_reg[2]), .B0(n7), .Y(n27) );
  AOI22X1M U15 ( .A0(p_data[3]), .A1(n3), .B0(serial_reg[3]), .B1(n18), .Y(n7)
         );
  OAI2B11XLM U16 ( .A1N(serial_reg[6]), .A0(ser_en), .B0(n13), .C0(n11), .Y(
        n35) );
  NAND2XLM U17 ( .A(p_data[7]), .B(ser_en), .Y(n13) );
  OAI2BB1X2M U18 ( .A0N(n17), .A1N(serial_reg[5]), .B0(n10), .Y(n33) );
  AOI22X1M U19 ( .A0(p_data[6]), .A1(n3), .B0(serial_reg[6]), .B1(n18), .Y(n10) );
  OAI2BB1X2M U20 ( .A0N(n17), .A1N(serial_reg[1]), .B0(n6), .Y(n25) );
  AOI22X1M U21 ( .A0(p_data[2]), .A1(n3), .B0(serial_reg[2]), .B1(n18), .Y(n6)
         );
  OAI2BB1X2M U22 ( .A0N(n17), .A1N(serial_reg[4]), .B0(n9), .Y(n31) );
  AOI22X1M U23 ( .A0(p_data[5]), .A1(n3), .B0(serial_reg[5]), .B1(n18), .Y(n9)
         );
  OAI2BB1X2M U24 ( .A0N(n17), .A1N(serial_reg[3]), .B0(n8), .Y(n29) );
  AOI22X1M U25 ( .A0(p_data[4]), .A1(n3), .B0(serial_reg[4]), .B1(n18), .Y(n8)
         );
  OAI2BB1X2M U26 ( .A0N(n17), .A1N(serial_reg[0]), .B0(n5), .Y(n23) );
  AOI22X1M U27 ( .A0(p_data[1]), .A1(n3), .B0(serial_reg[1]), .B1(n18), .Y(n5)
         );
  OAI2BB1X2M U28 ( .A0N(serial_out), .A1N(n17), .B0(n2), .Y(n21) );
  AOI22X1M U29 ( .A0(p_data[0]), .A1(n3), .B0(serial_reg[0]), .B1(n18), .Y(n2)
         );
  XNOR2X2M U30 ( .A(count[0]), .B(count[1]), .Y(n19) );
  NOR2X2M U31 ( .A(n17), .B(count[0]), .Y(N30) );
  OAI2BB2X1M U32 ( .B0(n16), .B1(n17), .A0N(count[2]), .A1N(N30), .Y(N32) );
  AOI32X1M U33 ( .A0(count[1]), .A1(n41), .A2(count[0]), .B0(count[2]), .B1(
        n40), .Y(n16) );
  INVX2M U46 ( .A(count[1]), .Y(n40) );
  INVX2M U47 ( .A(count[2]), .Y(n41) );
  INVXLM U48 ( .A(test_se), .Y(n44) );
  INVXLM U49 ( .A(n44), .Y(n45) );
  INVXLM U50 ( .A(n44), .Y(n46) );
  INVXLM U51 ( .A(n44), .Y(n47) );
  INVXLM U52 ( .A(n44), .Y(n48) );
endmodule


module FSM_test_1 ( data_valid, par_en, ser_done, clk, rst, ser_en, 
        parity_enable, mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input data_valid, par_en, ser_done, clk, rst, test_si, test_se;
  output ser_en, parity_enable, busy, test_so;
  wire   n8, n9, n10, n11, n12, n4, n5, n6, n7, n15, n16;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  OAI32X4M U8 ( .A0(n5), .A1(current_state[2]), .A2(current_state[1]), .B0(
        ser_done), .B1(n8), .Y(ser_en) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(n16), .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(n16), 
        .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(ser_en), .SI(current_state[0]), .SE(
        n16), .CK(clk), .RN(rst), .Q(current_state[1]) );
  INVX2M U6 ( .A(n11), .Y(n4) );
  NOR2X2M U7 ( .A(n6), .B(n12), .Y(n11) );
  NAND2X2M U9 ( .A(n4), .B(n8), .Y(mux_sel[1]) );
  NAND2X2M U10 ( .A(n12), .B(n6), .Y(mux_sel[0]) );
  NAND2X2M U11 ( .A(current_state[1]), .B(n6), .Y(n8) );
  INVX2M U12 ( .A(current_state[2]), .Y(n6) );
  INVX2M U13 ( .A(current_state[0]), .Y(n5) );
  NAND2BX2M U14 ( .AN(current_state[1]), .B(n5), .Y(n12) );
  NOR3BX2M U15 ( .AN(data_valid), .B(n7), .C(busy), .Y(parity_enable) );
  OAI31X1M U16 ( .A0(n9), .A1(current_state[2]), .A2(current_state[1]), .B0(
        n10), .Y(next_state[0]) );
  AOI22X1M U17 ( .A0(data_valid), .A1(n5), .B0(current_state[0]), .B1(n7), .Y(
        n9) );
  AOI31X2M U18 ( .A0(current_state[0]), .A1(n6), .A2(current_state[1]), .B0(
        n11), .Y(n10) );
  NAND3BX2M U19 ( .AN(current_state[1]), .B(n6), .C(n5), .Y(busy) );
  OAI2B1X2M U20 ( .A1N(ser_done), .A0(n8), .B0(n4), .Y(next_state[2]) );
  INVX2M U21 ( .A(par_en), .Y(n7) );
  INVXLM U22 ( .A(test_se), .Y(n15) );
  INVXLM U23 ( .A(n15), .Y(n16) );
endmodule


module parity_calc_parallel_data8_test_1 ( p_data, data_valid, par_typ, 
        parity_enable, clk, rst, par_bit, test_si, test_se );
  input [7:0] p_data;
  input data_valid, par_typ, parity_enable, clk, rst, test_si, test_se;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_bit) );
  XOR3XLM U2 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  XOR3XLM U4 ( .A(p_data[1]), .B(p_data[0]), .C(n5), .Y(n4) );
  XNOR2X2M U5 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  NAND2X2M U7 ( .A(parity_enable), .B(data_valid), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
endmodule


module mux ( ser_data, par_bit, mux_sel, tx_out );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output tx_out;
  wire   n2, n3, n1;

  OAI21X4M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(tx_out) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module uart_tx_DATA_WIDTH8_test_1 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, 
        RST, TX_OUT, BUSY, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, BUSY, test_so;
  wire   ser_en_t, ser_done_t, ser_data_t, parity_enable_t, par_bit_t, n1, n2,
         n5, n7, n8, n9;
  wire   [1:0] mux_sel_t;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  DLY1X1M U3 ( .A(test_se), .Y(n7) );
  DLY1X1M U4 ( .A(test_se), .Y(n8) );
  DLY1X1M U5 ( .A(test_se), .Y(n9) );
  serializer_parallel_data8_test_1 U_serializer ( .p_data(P_DATA), .clk(CLK), 
        .rst(n1), .ser_en(ser_en_t), .ser_done(ser_done_t), .serial_out(
        ser_data_t), .test_si(par_bit_t), .test_so(test_so), .test_se(n9) );
  FSM_test_1 U_FSM ( .data_valid(DATA_VALID), .par_en(PAR_EN), .ser_done(
        ser_done_t), .clk(CLK), .rst(n1), .ser_en(ser_en_t), .parity_enable(
        parity_enable_t), .mux_sel(mux_sel_t), .busy(BUSY), .test_si(test_si), 
        .test_so(n5), .test_se(n8) );
  parity_calc_parallel_data8_test_1 U_parity_calc ( .p_data(P_DATA), 
        .data_valid(DATA_VALID), .par_typ(PAR_TYP), .parity_enable(
        parity_enable_t), .clk(CLK), .rst(n1), .par_bit(par_bit_t), .test_si(
        n5), .test_se(n7) );
  mux U_mux ( .ser_data(ser_data_t), .par_bit(par_bit_t), .mux_sel(mux_sel_t), 
        .tx_out(TX_OUT) );
endmodule


module uart_top_parallel_data8_test_1 ( TX_CLK, TX_IN_P, TX_IN_V, TX_OUT_S, 
        TX_OUT_V, RX_CLK, RX_IN_S, Prescale, PAR_EN, PAR_TYP, RX_OUT_P, 
        RX_OUT_V, RST, parity_error, framing_error, test_si, test_se );
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  input TX_CLK, TX_IN_V, RX_CLK, RX_IN_S, PAR_EN, PAR_TYP, RST, test_si,
         test_se;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, parity_error, framing_error;
  wire   n1, n2, n4, n5;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  uart_rx_parallel_data8_test_1 uart_rx_U ( .clk(RX_CLK), .rst(n1), .rx_in(
        RX_IN_S), .par_en(PAR_EN), .par_typ(PAR_TYP), .prescale(Prescale), 
        .p_data(RX_OUT_P), .par_err(parity_error), .stp_err(framing_error), 
        .data_valid(RX_OUT_V), .test_si2(n4), .test_si1(test_si), .test_so1(n5), .test_se(test_se) );
  uart_tx_DATA_WIDTH8_test_1 uart_tx_U ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(TX_OUT_S), .BUSY(TX_OUT_V), .test_si(n5), .test_so(n4), .test_se(test_se) );
endmodule


module FIFO_WR_DATA_DEPTH8_ADDR_WIDTH3_test_1 ( w_en, w_clk, wrst_n, wq2_r_ptr, 
        w_addr, w_ptr, w_full, w_ptr_gray, test_si, test_se );
  input [3:0] wq2_r_ptr;
  output [2:0] w_addr;
  output [3:0] w_ptr;
  output [3:0] w_ptr_gray;
  input w_en, w_clk, wrst_n, test_si, test_se;
  output w_full;
  wire   N5, n10, n11, n12, n13, n14, n15, n16, n17, n21, n22, n25, n26, n27,
         n28;
  wire   [3:0] w_ptr_next;
  wire   [2:0] gray_w_ptr_next;

  SDFFRQX2M \w_ptr_reg[3]  ( .D(w_ptr_next[3]), .SI(w_addr[2]), .SE(n28), .CK(
        w_clk), .RN(n21), .Q(w_ptr[3]) );
  SDFFRQX2M w_full_reg ( .D(N5), .SI(test_si), .SE(n27), .CK(w_clk), .RN(n21), 
        .Q(w_full) );
  SDFFRQX2M \w_ptr_reg[2]  ( .D(w_ptr_next[2]), .SI(w_addr[1]), .SE(n26), .CK(
        w_clk), .RN(n21), .Q(w_addr[2]) );
  SDFFRQX2M \w_ptr_gray_reg[3]  ( .D(w_ptr_next[3]), .SI(w_ptr_gray[2]), .SE(
        n28), .CK(w_clk), .RN(n21), .Q(w_ptr_gray[3]) );
  SDFFRQX2M \w_ptr_gray_reg[2]  ( .D(gray_w_ptr_next[2]), .SI(w_ptr_gray[1]), 
        .SE(n27), .CK(w_clk), .RN(n21), .Q(w_ptr_gray[2]) );
  SDFFRQX2M \w_ptr_gray_reg[1]  ( .D(gray_w_ptr_next[1]), .SI(w_ptr_gray[0]), 
        .SE(n26), .CK(w_clk), .RN(n21), .Q(w_ptr_gray[1]) );
  SDFFRQX2M \w_ptr_gray_reg[0]  ( .D(gray_w_ptr_next[0]), .SI(w_full), .SE(n28), .CK(w_clk), .RN(n21), .Q(w_ptr_gray[0]) );
  SDFFRQX2M \w_ptr_reg[0]  ( .D(w_ptr_next[0]), .SI(w_ptr_gray[3]), .SE(n27), 
        .CK(w_clk), .RN(n21), .Q(w_addr[0]) );
  SDFFRQX2M \w_ptr_reg[1]  ( .D(w_ptr_next[1]), .SI(w_addr[0]), .SE(n26), .CK(
        w_clk), .RN(n21), .Q(w_addr[1]) );
  BUFX2M U12 ( .A(w_addr[1]), .Y(w_ptr[1]) );
  BUFX2M U13 ( .A(w_addr[0]), .Y(w_ptr[0]) );
  BUFX2M U14 ( .A(w_addr[2]), .Y(w_ptr[2]) );
  INVX2M U15 ( .A(n22), .Y(n21) );
  INVX2M U16 ( .A(wrst_n), .Y(n22) );
  CLKXOR2X2M U17 ( .A(w_ptr_next[2]), .B(w_ptr_next[1]), .Y(gray_w_ptr_next[1]) );
  CLKXOR2X2M U18 ( .A(w_ptr_next[1]), .B(w_ptr_next[0]), .Y(gray_w_ptr_next[0]) );
  CLKXOR2X2M U19 ( .A(w_ptr_next[3]), .B(w_ptr_next[2]), .Y(gray_w_ptr_next[2]) );
  CLKXOR2X2M U20 ( .A(n15), .B(w_addr[1]), .Y(w_ptr_next[1]) );
  XNOR2X2M U21 ( .A(n17), .B(w_ptr[3]), .Y(w_ptr_next[3]) );
  NAND3X2M U22 ( .A(w_addr[1]), .B(n15), .C(w_addr[2]), .Y(n17) );
  XNOR2X2M U23 ( .A(n16), .B(w_addr[2]), .Y(w_ptr_next[2]) );
  NAND2X2M U24 ( .A(w_addr[1]), .B(n15), .Y(n16) );
  CLKXOR2X2M U25 ( .A(n14), .B(w_addr[0]), .Y(w_ptr_next[0]) );
  CLKXOR2X2M U26 ( .A(wq2_r_ptr[1]), .B(gray_w_ptr_next[1]), .Y(n13) );
  NOR2BX2M U27 ( .AN(w_en), .B(w_full), .Y(n14) );
  NOR4X1M U28 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(N5) );
  XNOR2X2M U29 ( .A(w_ptr_next[3]), .B(wq2_r_ptr[3]), .Y(n10) );
  CLKXOR2X2M U30 ( .A(wq2_r_ptr[0]), .B(gray_w_ptr_next[0]), .Y(n12) );
  XNOR2X2M U31 ( .A(gray_w_ptr_next[2]), .B(wq2_r_ptr[2]), .Y(n11) );
  AND2X2M U32 ( .A(w_addr[0]), .B(n14), .Y(n15) );
  INVXLM U33 ( .A(test_se), .Y(n25) );
  INVXLM U34 ( .A(n25), .Y(n26) );
  INVXLM U35 ( .A(n25), .Y(n27) );
  INVXLM U36 ( .A(n25), .Y(n28) );
endmodule


module FIFO_RD_DATA_DEPTH8_ADDR_WIDTH3_test_1 ( r_en, r_clk, rrst_n, rq2_w_ptr, 
        r_addr, r_ptr, r_empty, gray_r_ptr, test_si, test_se );
  input [3:0] rq2_w_ptr;
  output [2:0] r_addr;
  output [3:0] r_ptr;
  output [3:0] gray_r_ptr;
  input r_en, r_clk, rrst_n, test_si, test_se;
  output r_empty;
  wire   N2, n10, n11, n12, n13, n14, n15, n16, n17, n21, n22, n25, n26, n27,
         n28;
  wire   [3:0] r_ptr_next;
  wire   [2:0] gray_r_ptr_next;

  SDFFSQX2M r_empty_reg ( .D(N2), .SI(gray_r_ptr[3]), .SE(n26), .CK(r_clk), 
        .SN(n21), .Q(r_empty) );
  SDFFRQX2M \r_ptr_reg[3]  ( .D(r_ptr_next[3]), .SI(r_addr[2]), .SE(n28), .CK(
        r_clk), .RN(n21), .Q(r_ptr[3]) );
  SDFFRQX2M \r_ptr_reg[0]  ( .D(r_ptr_next[0]), .SI(r_empty), .SE(n27), .CK(
        r_clk), .RN(n21), .Q(r_addr[0]) );
  SDFFRQX2M \r_ptr_reg[2]  ( .D(r_ptr_next[2]), .SI(r_addr[1]), .SE(n26), .CK(
        r_clk), .RN(n21), .Q(r_addr[2]) );
  SDFFRQX2M \gray_r_ptr_reg[0]  ( .D(gray_r_ptr_next[0]), .SI(test_si), .SE(
        n28), .CK(r_clk), .RN(n21), .Q(gray_r_ptr[0]) );
  SDFFRQX2M \gray_r_ptr_reg[1]  ( .D(gray_r_ptr_next[1]), .SI(gray_r_ptr[0]), 
        .SE(n27), .CK(r_clk), .RN(n21), .Q(gray_r_ptr[1]) );
  SDFFRQX2M \gray_r_ptr_reg[3]  ( .D(r_ptr_next[3]), .SI(gray_r_ptr[2]), .SE(
        n26), .CK(r_clk), .RN(n21), .Q(gray_r_ptr[3]) );
  SDFFRQX2M \gray_r_ptr_reg[2]  ( .D(gray_r_ptr_next[2]), .SI(gray_r_ptr[1]), 
        .SE(n28), .CK(r_clk), .RN(n21), .Q(gray_r_ptr[2]) );
  SDFFRQX2M \r_ptr_reg[1]  ( .D(r_ptr_next[1]), .SI(r_addr[0]), .SE(n27), .CK(
        r_clk), .RN(n21), .Q(r_addr[1]) );
  BUFX2M U12 ( .A(r_addr[1]), .Y(r_ptr[1]) );
  BUFX2M U13 ( .A(r_addr[2]), .Y(r_ptr[2]) );
  BUFX2M U14 ( .A(r_addr[0]), .Y(r_ptr[0]) );
  INVX2M U15 ( .A(n22), .Y(n21) );
  INVX2M U16 ( .A(rrst_n), .Y(n22) );
  CLKXOR2X2M U17 ( .A(r_ptr_next[2]), .B(r_ptr_next[1]), .Y(gray_r_ptr_next[1]) );
  CLKXOR2X2M U18 ( .A(r_ptr_next[3]), .B(r_ptr_next[2]), .Y(gray_r_ptr_next[2]) );
  CLKXOR2X2M U19 ( .A(r_ptr_next[1]), .B(r_ptr_next[0]), .Y(gray_r_ptr_next[0]) );
  XNOR2X2M U20 ( .A(n17), .B(r_ptr[3]), .Y(r_ptr_next[3]) );
  NAND3X2M U21 ( .A(r_addr[1]), .B(n15), .C(r_addr[2]), .Y(n17) );
  CLKXOR2X2M U22 ( .A(n15), .B(r_addr[1]), .Y(r_ptr_next[1]) );
  XNOR2X2M U23 ( .A(n16), .B(r_addr[2]), .Y(r_ptr_next[2]) );
  NAND2X2M U24 ( .A(r_addr[1]), .B(n15), .Y(n16) );
  CLKXOR2X2M U25 ( .A(n14), .B(r_addr[0]), .Y(r_ptr_next[0]) );
  CLKXOR2X2M U26 ( .A(rq2_w_ptr[0]), .B(gray_r_ptr_next[0]), .Y(n12) );
  NOR2BX2M U27 ( .AN(r_en), .B(r_empty), .Y(n14) );
  NOR4X1M U28 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(N2) );
  CLKXOR2X2M U29 ( .A(rq2_w_ptr[3]), .B(r_ptr_next[3]), .Y(n11) );
  CLKXOR2X2M U30 ( .A(rq2_w_ptr[2]), .B(gray_r_ptr_next[2]), .Y(n10) );
  CLKXOR2X2M U31 ( .A(rq2_w_ptr[1]), .B(gray_r_ptr_next[1]), .Y(n13) );
  AND2X2M U32 ( .A(r_addr[0]), .B(n14), .Y(n15) );
  INVXLM U33 ( .A(test_se), .Y(n25) );
  INVXLM U34 ( .A(n25), .Y(n26) );
  INVXLM U35 ( .A(n25), .Y(n27) );
  INVXLM U36 ( .A(n25), .Y(n28) );
endmodule


module DF_SYNC_BUS_WIDTH4_test_0 ( unsync_bus, clk, rst_n, sync_bus, test_si, 
        test_se );
  input [3:0] unsync_bus;
  output [3:0] sync_bus;
  input clk, rst_n, test_si, test_se;
  wire   n9, n10, n13, n14, n15, n16;
  wire   [3:0] sync_ff1;

  SDFFRQX2M \sync_ff2_reg[1]  ( .D(sync_ff1[1]), .SI(sync_bus[0]), .SE(n15), 
        .CK(clk), .RN(n9), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_ff2_reg[0]  ( .D(sync_ff1[0]), .SI(sync_ff1[3]), .SE(n14), 
        .CK(clk), .RN(n9), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_ff2_reg[3]  ( .D(sync_ff1[3]), .SI(sync_bus[2]), .SE(n16), 
        .CK(clk), .RN(n9), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_ff2_reg[2]  ( .D(sync_ff1[2]), .SI(sync_bus[1]), .SE(n15), 
        .CK(clk), .RN(n9), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_ff1_reg[3]  ( .D(unsync_bus[3]), .SI(sync_ff1[2]), .SE(n14), 
        .CK(clk), .RN(n9), .Q(sync_ff1[3]) );
  SDFFRQX2M \sync_ff1_reg[2]  ( .D(unsync_bus[2]), .SI(sync_ff1[1]), .SE(n16), 
        .CK(clk), .RN(n9), .Q(sync_ff1[2]) );
  SDFFRQX2M \sync_ff1_reg[1]  ( .D(unsync_bus[1]), .SI(sync_ff1[0]), .SE(n15), 
        .CK(clk), .RN(n9), .Q(sync_ff1[1]) );
  SDFFRQX2M \sync_ff1_reg[0]  ( .D(unsync_bus[0]), .SI(test_si), .SE(n14), 
        .CK(clk), .RN(n9), .Q(sync_ff1[0]) );
  INVX2M U11 ( .A(n10), .Y(n9) );
  INVX2M U12 ( .A(rst_n), .Y(n10) );
  INVXLM U13 ( .A(test_se), .Y(n13) );
  INVXLM U14 ( .A(n13), .Y(n14) );
  INVXLM U15 ( .A(n13), .Y(n15) );
  INVXLM U16 ( .A(n13), .Y(n16) );
endmodule


module DF_SYNC_BUS_WIDTH4_test_1 ( unsync_bus, clk, rst_n, sync_bus, test_si2, 
        test_si1, test_so1, test_se );
  input [3:0] unsync_bus;
  output [3:0] sync_bus;
  input clk, rst_n, test_si2, test_si1, test_se;
  output test_so1;
  wire   n20, n21, n22, n23;
  wire   [3:0] sync_ff1;
  assign test_so1 = sync_ff1[2];

  SDFFRQX2M \sync_ff2_reg[3]  ( .D(sync_ff1[3]), .SI(sync_bus[2]), .SE(n22), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_ff2_reg[2]  ( .D(sync_ff1[2]), .SI(sync_bus[1]), .SE(n21), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_ff2_reg[1]  ( .D(sync_ff1[1]), .SI(sync_bus[0]), .SE(n23), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_ff2_reg[0]  ( .D(sync_ff1[0]), .SI(sync_ff1[3]), .SE(n22), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_ff1_reg[3]  ( .D(unsync_bus[3]), .SI(test_si2), .SE(n21), 
        .CK(clk), .RN(rst_n), .Q(sync_ff1[3]) );
  SDFFRQX2M \sync_ff1_reg[2]  ( .D(unsync_bus[2]), .SI(sync_ff1[1]), .SE(n23), 
        .CK(clk), .RN(rst_n), .Q(sync_ff1[2]) );
  SDFFRQX2M \sync_ff1_reg[1]  ( .D(unsync_bus[1]), .SI(sync_ff1[0]), .SE(n22), 
        .CK(clk), .RN(rst_n), .Q(sync_ff1[1]) );
  SDFFRQX2M \sync_ff1_reg[0]  ( .D(unsync_bus[0]), .SI(test_si1), .SE(n21), 
        .CK(clk), .RN(rst_n), .Q(sync_ff1[0]) );
  INVXLM U11 ( .A(test_se), .Y(n20) );
  INVXLM U12 ( .A(n20), .Y(n21) );
  INVXLM U13 ( .A(n20), .Y(n22) );
  INVXLM U14 ( .A(n20), .Y(n23) );
endmodule


module fifo_memory_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3_test_1 ( w_data, w_addr, 
        r_addr, w_clk_en, w_clk, rst, r_data, test_si, test_so, test_se );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_clk_en, w_clk, rst, test_si, test_se;
  output test_so;
  wire   N10, N11, N12, \memory[7][7] , \memory[7][6] , \memory[7][5] ,
         \memory[7][4] , \memory[7][3] , \memory[7][2] , \memory[7][1] ,
         \memory[7][0] , \memory[6][7] , \memory[6][6] , \memory[6][5] ,
         \memory[6][4] , \memory[6][3] , \memory[6][2] , \memory[6][1] ,
         \memory[6][0] , \memory[5][7] , \memory[5][6] , \memory[5][5] ,
         \memory[5][4] , \memory[5][3] , \memory[5][2] , \memory[5][1] ,
         \memory[5][0] , \memory[4][7] , \memory[4][6] , \memory[4][5] ,
         \memory[4][4] , \memory[4][3] , \memory[4][2] , \memory[4][1] ,
         \memory[4][0] , \memory[3][7] , \memory[3][6] , \memory[3][5] ,
         \memory[3][4] , \memory[3][3] , \memory[3][2] , \memory[3][1] ,
         \memory[3][0] , \memory[2][7] , \memory[2][6] , \memory[2][5] ,
         \memory[2][4] , \memory[2][3] , \memory[2][2] , \memory[2][1] ,
         \memory[2][0] , \memory[1][7] , \memory[1][6] , \memory[1][5] ,
         \memory[1][4] , \memory[1][3] , \memory[1][2] , \memory[1][1] ,
         \memory[1][0] , \memory[0][7] , \memory[0][6] , \memory[0][5] ,
         \memory[0][4] , \memory[0][3] , \memory[0][2] , \memory[0][1] ,
         \memory[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];
  assign test_so = \memory[7][7] ;

  SDFFRQX2M \memory_reg[1][7]  ( .D(n100), .SI(\memory[1][6] ), .SE(n212), 
        .CK(w_clk), .RN(n193), .Q(\memory[1][7] ) );
  SDFFRQX2M \memory_reg[1][6]  ( .D(n99), .SI(\memory[1][5] ), .SE(n211), .CK(
        w_clk), .RN(n193), .Q(\memory[1][6] ) );
  SDFFRQX2M \memory_reg[1][5]  ( .D(n98), .SI(\memory[1][4] ), .SE(n213), .CK(
        w_clk), .RN(n193), .Q(\memory[1][5] ) );
  SDFFRQX2M \memory_reg[1][4]  ( .D(n97), .SI(\memory[1][3] ), .SE(n212), .CK(
        w_clk), .RN(n193), .Q(\memory[1][4] ) );
  SDFFRQX2M \memory_reg[1][3]  ( .D(n96), .SI(\memory[1][2] ), .SE(n211), .CK(
        w_clk), .RN(n190), .Q(\memory[1][3] ) );
  SDFFRQX2M \memory_reg[1][2]  ( .D(n95), .SI(\memory[1][1] ), .SE(n213), .CK(
        w_clk), .RN(n193), .Q(\memory[1][2] ) );
  SDFFRQX2M \memory_reg[1][1]  ( .D(n94), .SI(\memory[1][0] ), .SE(n212), .CK(
        w_clk), .RN(n191), .Q(\memory[1][1] ) );
  SDFFRQX2M \memory_reg[1][0]  ( .D(n93), .SI(\memory[0][7] ), .SE(n211), .CK(
        w_clk), .RN(n192), .Q(\memory[1][0] ) );
  SDFFRQX2M \memory_reg[0][7]  ( .D(n92), .SI(\memory[0][6] ), .SE(n217), .CK(
        w_clk), .RN(n190), .Q(\memory[0][7] ) );
  SDFFRQX2M \memory_reg[0][6]  ( .D(n91), .SI(\memory[0][5] ), .SE(n216), .CK(
        w_clk), .RN(n193), .Q(\memory[0][6] ) );
  SDFFRQX2M \memory_reg[0][5]  ( .D(n90), .SI(\memory[0][4] ), .SE(n216), .CK(
        w_clk), .RN(n191), .Q(\memory[0][5] ) );
  SDFFRQX2M \memory_reg[0][4]  ( .D(n89), .SI(\memory[0][3] ), .SE(n219), .CK(
        w_clk), .RN(rst), .Q(\memory[0][4] ) );
  SDFFRQX2M \memory_reg[0][3]  ( .D(n88), .SI(\memory[0][2] ), .SE(n208), .CK(
        w_clk), .RN(rst), .Q(\memory[0][3] ) );
  SDFFRQX2M \memory_reg[0][2]  ( .D(n87), .SI(\memory[0][1] ), .SE(n217), .CK(
        w_clk), .RN(rst), .Q(\memory[0][2] ) );
  SDFFRQX2M \memory_reg[0][1]  ( .D(n86), .SI(\memory[0][0] ), .SE(n220), .CK(
        w_clk), .RN(rst), .Q(\memory[0][1] ) );
  SDFFRQX2M \memory_reg[0][0]  ( .D(n85), .SI(test_si), .SE(n214), .CK(w_clk), 
        .RN(rst), .Q(\memory[0][0] ) );
  SDFFRQX2M \memory_reg[5][7]  ( .D(n132), .SI(\memory[5][6] ), .SE(n218), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][7] ) );
  SDFFRQX2M \memory_reg[5][6]  ( .D(n131), .SI(\memory[5][5] ), .SE(n218), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][6] ) );
  SDFFRQX2M \memory_reg[5][5]  ( .D(n130), .SI(\memory[5][4] ), .SE(n216), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][5] ) );
  SDFFRQX2M \memory_reg[5][4]  ( .D(n129), .SI(\memory[5][3] ), .SE(n219), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][4] ) );
  SDFFRQX2M \memory_reg[5][3]  ( .D(n128), .SI(\memory[5][2] ), .SE(n208), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][3] ) );
  SDFFRQX2M \memory_reg[5][2]  ( .D(n127), .SI(\memory[5][1] ), .SE(n220), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][2] ) );
  SDFFRQX2M \memory_reg[5][1]  ( .D(n126), .SI(\memory[5][0] ), .SE(n214), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][1] ) );
  SDFFRQX2M \memory_reg[5][0]  ( .D(n125), .SI(\memory[4][7] ), .SE(n214), 
        .CK(w_clk), .RN(n191), .Q(\memory[5][0] ) );
  SDFFRQX2M \memory_reg[4][7]  ( .D(n124), .SI(\memory[4][6] ), .SE(n219), 
        .CK(w_clk), .RN(n191), .Q(\memory[4][7] ) );
  SDFFRQX2M \memory_reg[4][6]  ( .D(n123), .SI(\memory[4][5] ), .SE(n210), 
        .CK(w_clk), .RN(n191), .Q(\memory[4][6] ) );
  SDFFRQX2M \memory_reg[4][5]  ( .D(n122), .SI(\memory[4][4] ), .SE(n216), 
        .CK(w_clk), .RN(n192), .Q(\memory[4][5] ) );
  SDFFRQX2M \memory_reg[4][4]  ( .D(n121), .SI(\memory[4][3] ), .SE(n209), 
        .CK(w_clk), .RN(n192), .Q(\memory[4][4] ) );
  SDFFRQX2M \memory_reg[4][3]  ( .D(n120), .SI(\memory[4][2] ), .SE(n208), 
        .CK(w_clk), .RN(n192), .Q(\memory[4][3] ) );
  SDFFRQX2M \memory_reg[4][2]  ( .D(n119), .SI(\memory[4][1] ), .SE(n219), 
        .CK(w_clk), .RN(n192), .Q(\memory[4][2] ) );
  SDFFRQX2M \memory_reg[4][1]  ( .D(n118), .SI(\memory[4][0] ), .SE(n214), 
        .CK(w_clk), .RN(n192), .Q(\memory[4][1] ) );
  SDFFRQX2M \memory_reg[4][0]  ( .D(n117), .SI(\memory[3][7] ), .SE(n218), 
        .CK(w_clk), .RN(n192), .Q(\memory[4][0] ) );
  SDFFRQX2M \memory_reg[7][7]  ( .D(n148), .SI(\memory[7][6] ), .SE(n220), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][7] ) );
  SDFFRQX2M \memory_reg[7][6]  ( .D(n147), .SI(\memory[7][5] ), .SE(n216), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][6] ) );
  SDFFRQX2M \memory_reg[7][5]  ( .D(n146), .SI(\memory[7][4] ), .SE(n217), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][5] ) );
  SDFFRQX2M \memory_reg[7][4]  ( .D(n145), .SI(\memory[7][3] ), .SE(n220), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][4] ) );
  SDFFRQX2M \memory_reg[7][3]  ( .D(n144), .SI(\memory[7][2] ), .SE(n214), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][3] ) );
  SDFFRQX2M \memory_reg[7][2]  ( .D(n143), .SI(\memory[7][1] ), .SE(n219), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][2] ) );
  SDFFRQX2M \memory_reg[7][1]  ( .D(n142), .SI(\memory[7][0] ), .SE(n219), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][1] ) );
  SDFFRQX2M \memory_reg[7][0]  ( .D(n141), .SI(\memory[6][7] ), .SE(n215), 
        .CK(w_clk), .RN(n190), .Q(\memory[7][0] ) );
  SDFFRQX2M \memory_reg[6][7]  ( .D(n140), .SI(\memory[6][6] ), .SE(n215), 
        .CK(w_clk), .RN(n190), .Q(\memory[6][7] ) );
  SDFFRQX2M \memory_reg[6][6]  ( .D(n139), .SI(\memory[6][5] ), .SE(n209), 
        .CK(w_clk), .RN(n190), .Q(\memory[6][6] ) );
  SDFFRQX2M \memory_reg[6][5]  ( .D(n138), .SI(\memory[6][4] ), .SE(n220), 
        .CK(w_clk), .RN(n190), .Q(\memory[6][5] ) );
  SDFFRQX2M \memory_reg[6][4]  ( .D(n137), .SI(\memory[6][3] ), .SE(n218), 
        .CK(w_clk), .RN(n190), .Q(\memory[6][4] ) );
  SDFFRQX2M \memory_reg[6][3]  ( .D(n136), .SI(\memory[6][2] ), .SE(n217), 
        .CK(w_clk), .RN(n190), .Q(\memory[6][3] ) );
  SDFFRQX2M \memory_reg[6][2]  ( .D(n135), .SI(\memory[6][1] ), .SE(n216), 
        .CK(w_clk), .RN(n191), .Q(\memory[6][2] ) );
  SDFFRQX2M \memory_reg[6][1]  ( .D(n134), .SI(\memory[6][0] ), .SE(n215), 
        .CK(w_clk), .RN(n191), .Q(\memory[6][1] ) );
  SDFFRQX2M \memory_reg[6][0]  ( .D(n133), .SI(\memory[5][7] ), .SE(n215), 
        .CK(w_clk), .RN(n191), .Q(\memory[6][0] ) );
  SDFFRQX2M \memory_reg[3][7]  ( .D(n116), .SI(\memory[3][6] ), .SE(n214), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][7] ) );
  SDFFRQX2M \memory_reg[3][6]  ( .D(n115), .SI(\memory[3][5] ), .SE(n217), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][6] ) );
  SDFFRQX2M \memory_reg[3][5]  ( .D(n114), .SI(\memory[3][4] ), .SE(n220), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][5] ) );
  SDFFRQX2M \memory_reg[3][4]  ( .D(n113), .SI(\memory[3][3] ), .SE(n217), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][4] ) );
  SDFFRQX2M \memory_reg[3][3]  ( .D(n112), .SI(\memory[3][2] ), .SE(n217), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][3] ) );
  SDFFRQX2M \memory_reg[3][2]  ( .D(n111), .SI(\memory[3][1] ), .SE(n218), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][2] ) );
  SDFFRQX2M \memory_reg[3][1]  ( .D(n110), .SI(\memory[3][0] ), .SE(n215), 
        .CK(w_clk), .RN(n192), .Q(\memory[3][1] ) );
  SDFFRQX2M \memory_reg[3][0]  ( .D(n109), .SI(\memory[2][7] ), .SE(n214), 
        .CK(w_clk), .RN(n193), .Q(\memory[3][0] ) );
  SDFFRQX2M \memory_reg[2][7]  ( .D(n108), .SI(\memory[2][6] ), .SE(n215), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][7] ) );
  SDFFRQX2M \memory_reg[2][6]  ( .D(n107), .SI(\memory[2][5] ), .SE(n220), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][6] ) );
  SDFFRQX2M \memory_reg[2][5]  ( .D(n106), .SI(\memory[2][4] ), .SE(n210), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][5] ) );
  SDFFRQX2M \memory_reg[2][4]  ( .D(n105), .SI(\memory[2][3] ), .SE(n216), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][4] ) );
  SDFFRQX2M \memory_reg[2][3]  ( .D(n104), .SI(\memory[2][2] ), .SE(n215), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][3] ) );
  SDFFRQX2M \memory_reg[2][2]  ( .D(n103), .SI(\memory[2][1] ), .SE(n218), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][2] ) );
  SDFFRQX2M \memory_reg[2][1]  ( .D(n102), .SI(\memory[2][0] ), .SE(n218), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][1] ) );
  SDFFRQX2M \memory_reg[2][0]  ( .D(n101), .SI(\memory[1][7] ), .SE(n219), 
        .CK(w_clk), .RN(n193), .Q(\memory[2][0] ) );
  CLKBUFX4M U66 ( .A(rst), .Y(n190) );
  BUFX4M U67 ( .A(n84), .Y(n183) );
  BUFX4M U68 ( .A(n80), .Y(n187) );
  BUFX4M U69 ( .A(n81), .Y(n186) );
  BUFX4M U70 ( .A(n82), .Y(n185) );
  INVX2M U71 ( .A(w_data[7]), .Y(n203) );
  INVX2M U72 ( .A(w_data[0]), .Y(n196) );
  INVX2M U73 ( .A(w_data[1]), .Y(n197) );
  INVX2M U74 ( .A(w_data[2]), .Y(n198) );
  INVX2M U75 ( .A(w_data[3]), .Y(n199) );
  INVX2M U76 ( .A(w_data[4]), .Y(n200) );
  INVX2M U77 ( .A(w_data[5]), .Y(n201) );
  INVX2M U78 ( .A(w_data[6]), .Y(n202) );
  BUFX4M U79 ( .A(rst), .Y(n193) );
  BUFX4M U80 ( .A(rst), .Y(n192) );
  BUFX4M U81 ( .A(rst), .Y(n191) );
  BUFX2M U82 ( .A(n83), .Y(n184) );
  BUFX2M U83 ( .A(n78), .Y(n188) );
  NAND3X2M U84 ( .A(n194), .B(n195), .C(n77), .Y(n83) );
  NAND3X2M U85 ( .A(n194), .B(n195), .C(n79), .Y(n78) );
  BUFX4M U86 ( .A(n171), .Y(n179) );
  NOR2X2M U87 ( .A(n175), .B(n176), .Y(n171) );
  INVX2M U88 ( .A(N10), .Y(n177) );
  NOR2BX2M U89 ( .AN(w_clk_en), .B(w_addr[2]), .Y(n77) );
  OAI2BB2X1M U90 ( .B0(n196), .B1(n184), .A0N(\memory[0][0] ), .A1N(n184), .Y(
        n85) );
  OAI2BB2X1M U91 ( .B0(n197), .B1(n184), .A0N(\memory[0][1] ), .A1N(n184), .Y(
        n86) );
  OAI2BB2X1M U92 ( .B0(n198), .B1(n184), .A0N(\memory[0][2] ), .A1N(n184), .Y(
        n87) );
  OAI2BB2X1M U93 ( .B0(n199), .B1(n184), .A0N(\memory[0][3] ), .A1N(n184), .Y(
        n88) );
  OAI2BB2X1M U94 ( .B0(n200), .B1(n83), .A0N(\memory[0][4] ), .A1N(n184), .Y(
        n89) );
  OAI2BB2X1M U95 ( .B0(n201), .B1(n83), .A0N(\memory[0][5] ), .A1N(n184), .Y(
        n90) );
  OAI2BB2X1M U96 ( .B0(n202), .B1(n83), .A0N(\memory[0][6] ), .A1N(n184), .Y(
        n91) );
  OAI2BB2X1M U97 ( .B0(n196), .B1(n183), .A0N(\memory[1][0] ), .A1N(n183), .Y(
        n93) );
  OAI2BB2X1M U98 ( .B0(n197), .B1(n183), .A0N(\memory[1][1] ), .A1N(n183), .Y(
        n94) );
  OAI2BB2X1M U99 ( .B0(n198), .B1(n183), .A0N(\memory[1][2] ), .A1N(n183), .Y(
        n95) );
  OAI2BB2X1M U100 ( .B0(n199), .B1(n183), .A0N(\memory[1][3] ), .A1N(n183), 
        .Y(n96) );
  OAI2BB2X1M U101 ( .B0(n200), .B1(n183), .A0N(\memory[1][4] ), .A1N(n183), 
        .Y(n97) );
  OAI2BB2X1M U102 ( .B0(n201), .B1(n183), .A0N(\memory[1][5] ), .A1N(n183), 
        .Y(n98) );
  OAI2BB2X1M U103 ( .B0(n202), .B1(n183), .A0N(\memory[1][6] ), .A1N(n183), 
        .Y(n99) );
  OAI2BB2X1M U104 ( .B0(n196), .B1(n188), .A0N(\memory[4][0] ), .A1N(n188), 
        .Y(n117) );
  OAI2BB2X1M U105 ( .B0(n197), .B1(n188), .A0N(\memory[4][1] ), .A1N(n188), 
        .Y(n118) );
  OAI2BB2X1M U106 ( .B0(n198), .B1(n188), .A0N(\memory[4][2] ), .A1N(n188), 
        .Y(n119) );
  OAI2BB2X1M U107 ( .B0(n199), .B1(n78), .A0N(\memory[4][3] ), .A1N(n188), .Y(
        n120) );
  OAI2BB2X1M U108 ( .B0(n200), .B1(n78), .A0N(\memory[4][4] ), .A1N(n188), .Y(
        n121) );
  OAI2BB2X1M U109 ( .B0(n201), .B1(n78), .A0N(\memory[4][5] ), .A1N(n188), .Y(
        n122) );
  OAI2BB2X1M U110 ( .B0(n202), .B1(n78), .A0N(\memory[4][6] ), .A1N(n188), .Y(
        n123) );
  OAI2BB2X1M U111 ( .B0(n196), .B1(n187), .A0N(\memory[5][0] ), .A1N(n187), 
        .Y(n125) );
  OAI2BB2X1M U112 ( .B0(n197), .B1(n187), .A0N(\memory[5][1] ), .A1N(n187), 
        .Y(n126) );
  OAI2BB2X1M U113 ( .B0(n198), .B1(n187), .A0N(\memory[5][2] ), .A1N(n187), 
        .Y(n127) );
  OAI2BB2X1M U114 ( .B0(n199), .B1(n187), .A0N(\memory[5][3] ), .A1N(n187), 
        .Y(n128) );
  OAI2BB2X1M U115 ( .B0(n200), .B1(n187), .A0N(\memory[5][4] ), .A1N(n187), 
        .Y(n129) );
  OAI2BB2X1M U116 ( .B0(n201), .B1(n187), .A0N(\memory[5][5] ), .A1N(n187), 
        .Y(n130) );
  OAI2BB2X1M U117 ( .B0(n202), .B1(n187), .A0N(\memory[5][6] ), .A1N(n187), 
        .Y(n131) );
  OAI2BB2X1M U118 ( .B0(n196), .B1(n186), .A0N(\memory[6][0] ), .A1N(n186), 
        .Y(n133) );
  OAI2BB2X1M U119 ( .B0(n197), .B1(n186), .A0N(\memory[6][1] ), .A1N(n186), 
        .Y(n134) );
  OAI2BB2X1M U120 ( .B0(n198), .B1(n186), .A0N(\memory[6][2] ), .A1N(n186), 
        .Y(n135) );
  OAI2BB2X1M U121 ( .B0(n199), .B1(n186), .A0N(\memory[6][3] ), .A1N(n186), 
        .Y(n136) );
  OAI2BB2X1M U122 ( .B0(n200), .B1(n186), .A0N(\memory[6][4] ), .A1N(n186), 
        .Y(n137) );
  OAI2BB2X1M U123 ( .B0(n201), .B1(n186), .A0N(\memory[6][5] ), .A1N(n186), 
        .Y(n138) );
  OAI2BB2X1M U124 ( .B0(n202), .B1(n186), .A0N(\memory[6][6] ), .A1N(n186), 
        .Y(n139) );
  OAI2BB2X1M U125 ( .B0(n196), .B1(n185), .A0N(\memory[7][0] ), .A1N(n185), 
        .Y(n141) );
  OAI2BB2X1M U126 ( .B0(n197), .B1(n185), .A0N(\memory[7][1] ), .A1N(n185), 
        .Y(n142) );
  OAI2BB2X1M U127 ( .B0(n198), .B1(n185), .A0N(\memory[7][2] ), .A1N(n185), 
        .Y(n143) );
  OAI2BB2X1M U128 ( .B0(n199), .B1(n185), .A0N(\memory[7][3] ), .A1N(n185), 
        .Y(n144) );
  OAI2BB2X1M U129 ( .B0(n200), .B1(n185), .A0N(\memory[7][4] ), .A1N(n185), 
        .Y(n145) );
  OAI2BB2X1M U130 ( .B0(n201), .B1(n185), .A0N(\memory[7][5] ), .A1N(n185), 
        .Y(n146) );
  OAI2BB2X1M U131 ( .B0(n202), .B1(n185), .A0N(\memory[7][6] ), .A1N(n185), 
        .Y(n147) );
  OAI2BB2X1M U132 ( .B0(n203), .B1(n83), .A0N(\memory[0][7] ), .A1N(n184), .Y(
        n92) );
  OAI2BB2X1M U133 ( .B0(n203), .B1(n183), .A0N(\memory[1][7] ), .A1N(n183), 
        .Y(n100) );
  OAI2BB2X1M U134 ( .B0(n203), .B1(n189), .A0N(\memory[3][7] ), .A1N(n189), 
        .Y(n116) );
  OAI2BB2X1M U135 ( .B0(n203), .B1(n78), .A0N(\memory[4][7] ), .A1N(n188), .Y(
        n124) );
  OAI2BB2X1M U136 ( .B0(n203), .B1(n187), .A0N(\memory[5][7] ), .A1N(n187), 
        .Y(n132) );
  OAI2BB2X1M U137 ( .B0(n203), .B1(n186), .A0N(\memory[6][7] ), .A1N(n186), 
        .Y(n140) );
  OAI2BB2X1M U138 ( .B0(n203), .B1(n185), .A0N(\memory[7][7] ), .A1N(n185), 
        .Y(n148) );
  NAND3X2M U139 ( .A(n77), .B(n195), .C(w_addr[0]), .Y(n84) );
  NAND3X2M U140 ( .A(w_addr[0]), .B(w_addr[1]), .C(n79), .Y(n82) );
  NAND3X2M U141 ( .A(w_addr[0]), .B(n195), .C(n79), .Y(n80) );
  NAND3X2M U142 ( .A(w_addr[1]), .B(n194), .C(n79), .Y(n81) );
  BUFX4M U143 ( .A(n76), .Y(n189) );
  NAND3X2M U144 ( .A(w_addr[1]), .B(n77), .C(w_addr[0]), .Y(n76) );
  BUFX4M U145 ( .A(n75), .Y(n182) );
  NAND3X2M U146 ( .A(n77), .B(n194), .C(w_addr[1]), .Y(n75) );
  OAI2BB2X1M U147 ( .B0(n182), .B1(n196), .A0N(\memory[2][0] ), .A1N(n182), 
        .Y(n101) );
  OAI2BB2X1M U148 ( .B0(n182), .B1(n197), .A0N(\memory[2][1] ), .A1N(n182), 
        .Y(n102) );
  OAI2BB2X1M U149 ( .B0(n182), .B1(n198), .A0N(\memory[2][2] ), .A1N(n182), 
        .Y(n103) );
  OAI2BB2X1M U150 ( .B0(n182), .B1(n199), .A0N(\memory[2][3] ), .A1N(n182), 
        .Y(n104) );
  OAI2BB2X1M U151 ( .B0(n182), .B1(n200), .A0N(\memory[2][4] ), .A1N(n182), 
        .Y(n105) );
  OAI2BB2X1M U152 ( .B0(n182), .B1(n201), .A0N(\memory[2][5] ), .A1N(n182), 
        .Y(n106) );
  OAI2BB2X1M U153 ( .B0(n182), .B1(n202), .A0N(\memory[2][6] ), .A1N(n182), 
        .Y(n107) );
  OAI2BB2X1M U154 ( .B0(n189), .B1(n196), .A0N(\memory[3][0] ), .A1N(n189), 
        .Y(n109) );
  OAI2BB2X1M U155 ( .B0(n189), .B1(n197), .A0N(\memory[3][1] ), .A1N(n189), 
        .Y(n110) );
  OAI2BB2X1M U156 ( .B0(n189), .B1(n198), .A0N(\memory[3][2] ), .A1N(n189), 
        .Y(n111) );
  OAI2BB2X1M U157 ( .B0(n189), .B1(n199), .A0N(\memory[3][3] ), .A1N(n189), 
        .Y(n112) );
  OAI2BB2X1M U158 ( .B0(n189), .B1(n200), .A0N(\memory[3][4] ), .A1N(n189), 
        .Y(n113) );
  OAI2BB2X1M U159 ( .B0(n189), .B1(n201), .A0N(\memory[3][5] ), .A1N(n189), 
        .Y(n114) );
  OAI2BB2X1M U160 ( .B0(n189), .B1(n202), .A0N(\memory[3][6] ), .A1N(n189), 
        .Y(n115) );
  OAI2BB2X1M U161 ( .B0(n182), .B1(n203), .A0N(\memory[2][7] ), .A1N(n182), 
        .Y(n108) );
  AND2X2M U162 ( .A(w_addr[2]), .B(w_clk_en), .Y(n79) );
  INVX2M U163 ( .A(w_addr[1]), .Y(n195) );
  INVX2M U164 ( .A(w_addr[0]), .Y(n194) );
  INVX2M U165 ( .A(N11), .Y(n176) );
  BUFX4M U166 ( .A(n169), .Y(n180) );
  NOR2X2M U167 ( .A(n176), .B(N12), .Y(n169) );
  BUFX4M U168 ( .A(n168), .Y(n181) );
  NOR2X2M U169 ( .A(N11), .B(N12), .Y(n168) );
  INVX2M U170 ( .A(N12), .Y(n175) );
  BUFX4M U171 ( .A(n172), .Y(n178) );
  NOR2X2M U172 ( .A(n175), .B(N11), .Y(n172) );
  AO22X1M U173 ( .A0(\memory[3][0] ), .A1(n180), .B0(\memory[1][0] ), .B1(n181), .Y(n65) );
  AOI221XLM U174 ( .A0(\memory[5][0] ), .A1(n178), .B0(\memory[7][0] ), .B1(
        n179), .C0(n65), .Y(n68) );
  AO22X1M U175 ( .A0(\memory[2][0] ), .A1(n180), .B0(\memory[0][0] ), .B1(n181), .Y(n66) );
  AOI221XLM U176 ( .A0(\memory[4][0] ), .A1(n178), .B0(\memory[6][0] ), .B1(
        n179), .C0(n66), .Y(n67) );
  OAI22X1M U177 ( .A0(n177), .A1(n68), .B0(N10), .B1(n67), .Y(r_data[0]) );
  AO22X1M U178 ( .A0(\memory[3][1] ), .A1(n180), .B0(\memory[1][1] ), .B1(n181), .Y(n69) );
  AOI221XLM U179 ( .A0(\memory[5][1] ), .A1(n178), .B0(\memory[7][1] ), .B1(
        n179), .C0(n69), .Y(n72) );
  AO22X1M U180 ( .A0(\memory[2][1] ), .A1(n180), .B0(\memory[0][1] ), .B1(n181), .Y(n70) );
  AOI221XLM U181 ( .A0(\memory[4][1] ), .A1(n178), .B0(\memory[6][1] ), .B1(
        n179), .C0(n70), .Y(n71) );
  OAI22X1M U182 ( .A0(n177), .A1(n72), .B0(N10), .B1(n71), .Y(r_data[1]) );
  AO22X1M U183 ( .A0(\memory[3][2] ), .A1(n180), .B0(\memory[1][2] ), .B1(n181), .Y(n73) );
  AOI221XLM U184 ( .A0(\memory[5][2] ), .A1(n178), .B0(\memory[7][2] ), .B1(
        n179), .C0(n73), .Y(n150) );
  AO22X1M U185 ( .A0(\memory[2][2] ), .A1(n180), .B0(\memory[0][2] ), .B1(n181), .Y(n74) );
  AOI221XLM U186 ( .A0(\memory[4][2] ), .A1(n178), .B0(\memory[6][2] ), .B1(
        n179), .C0(n74), .Y(n149) );
  OAI22X1M U187 ( .A0(n177), .A1(n150), .B0(N10), .B1(n149), .Y(r_data[2]) );
  AO22X1M U188 ( .A0(\memory[3][3] ), .A1(n180), .B0(\memory[1][3] ), .B1(n181), .Y(n151) );
  AOI221XLM U189 ( .A0(\memory[5][3] ), .A1(n178), .B0(\memory[7][3] ), .B1(
        n179), .C0(n151), .Y(n154) );
  AO22X1M U190 ( .A0(\memory[2][3] ), .A1(n180), .B0(\memory[0][3] ), .B1(n181), .Y(n152) );
  AOI221XLM U191 ( .A0(\memory[4][3] ), .A1(n178), .B0(\memory[6][3] ), .B1(
        n179), .C0(n152), .Y(n153) );
  OAI22X1M U192 ( .A0(n177), .A1(n154), .B0(N10), .B1(n153), .Y(r_data[3]) );
  AO22X1M U193 ( .A0(\memory[3][4] ), .A1(n180), .B0(\memory[1][4] ), .B1(n181), .Y(n155) );
  AOI221XLM U194 ( .A0(\memory[5][4] ), .A1(n178), .B0(\memory[7][4] ), .B1(
        n179), .C0(n155), .Y(n158) );
  AO22X1M U195 ( .A0(\memory[2][4] ), .A1(n180), .B0(\memory[0][4] ), .B1(n181), .Y(n156) );
  AOI221XLM U196 ( .A0(\memory[4][4] ), .A1(n178), .B0(\memory[6][4] ), .B1(
        n179), .C0(n156), .Y(n157) );
  OAI22X1M U197 ( .A0(n177), .A1(n158), .B0(N10), .B1(n157), .Y(r_data[4]) );
  AO22X1M U198 ( .A0(\memory[3][5] ), .A1(n180), .B0(\memory[1][5] ), .B1(n181), .Y(n159) );
  AOI221XLM U199 ( .A0(\memory[5][5] ), .A1(n178), .B0(\memory[7][5] ), .B1(
        n179), .C0(n159), .Y(n162) );
  AO22X1M U200 ( .A0(\memory[2][5] ), .A1(n180), .B0(\memory[0][5] ), .B1(n181), .Y(n160) );
  AOI221XLM U201 ( .A0(\memory[4][5] ), .A1(n178), .B0(\memory[6][5] ), .B1(
        n179), .C0(n160), .Y(n161) );
  OAI22X1M U202 ( .A0(n177), .A1(n162), .B0(N10), .B1(n161), .Y(r_data[5]) );
  AO22X1M U203 ( .A0(\memory[3][6] ), .A1(n180), .B0(\memory[1][6] ), .B1(n181), .Y(n163) );
  AOI221XLM U204 ( .A0(\memory[5][6] ), .A1(n178), .B0(\memory[7][6] ), .B1(
        n179), .C0(n163), .Y(n166) );
  AO22X1M U205 ( .A0(\memory[2][6] ), .A1(n180), .B0(\memory[0][6] ), .B1(n181), .Y(n164) );
  AOI221XLM U206 ( .A0(\memory[4][6] ), .A1(n178), .B0(\memory[6][6] ), .B1(
        n179), .C0(n164), .Y(n165) );
  OAI22X1M U207 ( .A0(n177), .A1(n166), .B0(n206), .B1(n165), .Y(r_data[6]) );
  AO22X1M U208 ( .A0(\memory[3][7] ), .A1(n180), .B0(\memory[1][7] ), .B1(n181), .Y(n167) );
  AOI221XLM U209 ( .A0(\memory[5][7] ), .A1(n178), .B0(\memory[7][7] ), .B1(
        n179), .C0(n167), .Y(n174) );
  AO22X1M U210 ( .A0(\memory[2][7] ), .A1(n180), .B0(\memory[0][7] ), .B1(n181), .Y(n170) );
  AOI221XLM U211 ( .A0(\memory[4][7] ), .A1(n178), .B0(\memory[6][7] ), .B1(
        n179), .C0(n170), .Y(n173) );
  OAI22X1M U212 ( .A0(n174), .A1(n177), .B0(N10), .B1(n173), .Y(r_data[7]) );
  INVXLM U213 ( .A(n177), .Y(n206) );
  INVXLM U214 ( .A(n221), .Y(n207) );
  INVXLM U215 ( .A(test_se), .Y(n221) );
  INVXLM U216 ( .A(n221), .Y(n208) );
  INVXLM U217 ( .A(n221), .Y(n209) );
  INVXLM U218 ( .A(n221), .Y(n210) );
  INVXLM U219 ( .A(n209), .Y(n222) );
  INVXLM U220 ( .A(n222), .Y(n211) );
  INVXLM U221 ( .A(n222), .Y(n212) );
  INVXLM U222 ( .A(n222), .Y(n213) );
  DLY1X1M U223 ( .A(test_se), .Y(n214) );
  DLY1X1M U224 ( .A(n207), .Y(n215) );
  DLY1X1M U225 ( .A(test_se), .Y(n216) );
  DLY1X1M U226 ( .A(test_se), .Y(n217) );
  DLY1X1M U227 ( .A(test_se), .Y(n218) );
  DLY1X1M U228 ( .A(test_se), .Y(n219) );
  DLY1X1M U229 ( .A(test_se), .Y(n220) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3_test_1 ( W_CLK, W_RST, 
        W_INC, R_CLK, R_RST, R_INC, WR_DATA, RD_DATA, FULL, EMPTY, test_si2, 
        test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   w_clk_en, n1, n2, n3, n4, n7, n8, n9, n12, n13, n14, n15;
  wire   [3:0] wq2_r_ptr;
  wire   [2:0] w_addr;
  wire   [3:0] w_ptr_gray;
  wire   [3:0] rq2_w_ptr;
  wire   [2:0] r_addr;
  wire   [3:0] r_ptr_gray;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;
  assign test_so2 = rq2_w_ptr[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
  NOR2BX2M U5 ( .AN(W_INC), .B(FULL), .Y(w_clk_en) );
  DLY1X1M U6 ( .A(test_se), .Y(n12) );
  DLY1X1M U7 ( .A(test_se), .Y(n13) );
  DLY1X1M U8 ( .A(test_se), .Y(n14) );
  DLY1X1M U9 ( .A(test_se), .Y(n15) );
  FIFO_WR_DATA_DEPTH8_ADDR_WIDTH3_test_1 u_fifo_wr ( .w_en(W_INC), .w_clk(
        W_CLK), .wrst_n(n3), .wq2_r_ptr(wq2_r_ptr), .w_addr(w_addr), .w_ptr({
        n7, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}), .w_full(FULL), .w_ptr_gray(w_ptr_gray), 
        .test_si(n8), .test_se(n12) );
  FIFO_RD_DATA_DEPTH8_ADDR_WIDTH3_test_1 u_fifo_rd ( .r_en(R_INC), .r_clk(
        R_CLK), .rrst_n(n1), .rq2_w_ptr(rq2_w_ptr), .r_addr(r_addr), .r_ptr({
        n8, SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}), .r_empty(EMPTY), .gray_r_ptr(r_ptr_gray), 
        .test_si(n9), .test_se(n15) );
  DF_SYNC_BUS_WIDTH4_test_0 u_sync_r2w ( .unsync_bus(r_ptr_gray), .clk(W_CLK), 
        .rst_n(n3), .sync_bus(wq2_r_ptr), .test_si(n7), .test_se(n14) );
  DF_SYNC_BUS_WIDTH4_test_1 u_sync_w2r ( .unsync_bus(w_ptr_gray), .clk(R_CLK), 
        .rst_n(n1), .sync_bus(rq2_w_ptr), .test_si2(test_si2), .test_si1(
        wq2_r_ptr[3]), .test_so1(test_so1), .test_se(n12) );
  fifo_memory_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3_test_1 u_fifo_memory ( 
        .w_data(WR_DATA), .w_addr(w_addr), .r_addr(r_addr), .w_clk_en(w_clk_en), .w_clk(W_CLK), .rst(n3), .r_data(RD_DATA), .test_si(test_si1), .test_so(n9), 
        .test_se(n13) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( rst, clk, sync_rst, test_si, test_so, 
        test_se );
  input rst, clk, test_si, test_se;
  output sync_rst, test_so;
  wire   \res_sync_reg[1] ;
  assign test_so = \res_sync_reg[1] ;

  SDFFRQX2M \res_sync_reg_reg[0]  ( .D(\res_sync_reg[1] ), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
  SDFFRQX2M \res_sync_reg_reg[1]  ( .D(1'b1), .SI(sync_rst), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\res_sync_reg[1] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( rst, clk, sync_rst, test_si, test_so, 
        test_se );
  input rst, clk, test_si, test_se;
  output sync_rst, test_so;
  wire   \res_sync_reg[1] ;
  assign test_so = \res_sync_reg[1] ;

  SDFFRQX2M \res_sync_reg_reg[0]  ( .D(\res_sync_reg[1] ), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(sync_rst) );
  SDFFRQX2M \res_sync_reg_reg[1]  ( .D(1'b1), .SI(sync_rst), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(\res_sync_reg[1] ) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module clk_div_RATIO_WIDTH8_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WIDTH8_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si2, test_si1, test_se;
  output o_div_clk, test_so2, test_so1;
  wire   pos_clk, neg_clk, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N26, N27, N28, N29, N30, N31, N32, N33, N46, N47, N48, N49, N50, N51,
         N52, N53, N60, n19, n22, n23, n24, n25, n26, n27, n28, n29, n30, n1,
         n2, n3, n4, n5, n6, n18, n20, n21, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n59, n60;
  wire   [7:0] counter;
  assign test_so2 = pos_clk;
  assign test_so1 = neg_clk;

  SDFFNSRHX2M neg_clk_reg ( .D(N60), .SI(test_si1), .SE(n59), .CKN(i_ref_clk), 
        .SN(1'b1), .RN(n2), .Q(neg_clk) );
  SDFFRQX2M \counter_reg[7]  ( .D(N53), .SI(counter[6]), .SE(n60), .CK(
        i_ref_clk), .RN(n2), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N52), .SI(counter[5]), .SE(n59), .CK(
        i_ref_clk), .RN(n2), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N48), .SI(counter[1]), .SE(n60), .CK(
        i_ref_clk), .RN(n2), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N49), .SI(counter[2]), .SE(n59), .CK(
        i_ref_clk), .RN(n2), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N50), .SI(counter[3]), .SE(n60), .CK(
        i_ref_clk), .RN(n2), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N51), .SI(counter[4]), .SE(n59), .CK(
        i_ref_clk), .RN(n2), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N46), .SI(test_si2), .SE(n60), .CK(i_ref_clk), .RN(n2), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N47), .SI(counter[0]), .SE(n59), .CK(
        i_ref_clk), .RN(n2), .Q(counter[1]) );
  SDFFRQX2M pos_clk_reg ( .D(n30), .SI(counter[7]), .SE(n60), .CK(i_ref_clk), 
        .RN(n2), .Q(pos_clk) );
  OR2X2M U5 ( .A(N24), .B(n25), .Y(n28) );
  NOR2BX2M U6 ( .AN(N27), .B(n28), .Y(N47) );
  NOR2BX2M U7 ( .AN(N28), .B(n28), .Y(N48) );
  NOR2BX2M U17 ( .AN(N29), .B(n28), .Y(N49) );
  NOR2BX2M U18 ( .AN(N30), .B(n28), .Y(N50) );
  NOR2BX2M U19 ( .AN(N31), .B(n28), .Y(N51) );
  NOR2BX2M U20 ( .AN(N32), .B(n28), .Y(N52) );
  INVX2M U21 ( .A(n22), .Y(n55) );
  INVX2M U22 ( .A(n3), .Y(n2) );
  INVX2M U23 ( .A(i_rst_n), .Y(n3) );
  INVX2M U24 ( .A(i_ref_clk), .Y(n19) );
  AND3X2M U25 ( .A(n54), .B(i_div_ratio[0]), .C(pos_clk), .Y(N60) );
  INVX2M U26 ( .A(n25), .Y(n54) );
  OR2X2M U27 ( .A(n53), .B(n52), .Y(n1) );
  NOR2X2M U28 ( .A(n24), .B(n25), .Y(n30) );
  AOI22X1M U29 ( .A0(n26), .A1(n27), .B0(n1), .B1(pos_clk), .Y(n24) );
  NOR4X1M U30 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n27) );
  NOR4X1M U31 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n26) );
  NOR2BX2M U32 ( .AN(N33), .B(n28), .Y(N53) );
  NOR2BX2M U33 ( .AN(N26), .B(n28), .Y(N46) );
  OR2X2M U34 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n4) );
  NOR4X1M U35 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), 
        .D(n29), .Y(n22) );
  OR4X1M U36 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n29) );
  NAND2X2M U37 ( .A(i_clk_en), .B(n55), .Y(n25) );
  AOI21X2M U38 ( .A0(neg_clk), .A1(i_div_ratio[0]), .B0(pos_clk), .Y(n23) );
  OAI22X1M U39 ( .A0(n19), .A1(n55), .B0(n22), .B1(n23), .Y(o_div_clk) );
  CLKINVX1M U40 ( .A(i_div_ratio[0]), .Y(N15) );
  OAI2BB1X1M U41 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n4), .Y(N16) );
  OR2X1M U42 ( .A(n4), .B(i_div_ratio[2]), .Y(n5) );
  OAI2BB1X1M U43 ( .A0N(n4), .A1N(i_div_ratio[2]), .B0(n5), .Y(N17) );
  OR2X1M U44 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OAI2BB1X1M U45 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N18) );
  OR2X1M U46 ( .A(n6), .B(i_div_ratio[4]), .Y(n18) );
  OAI2BB1X1M U47 ( .A0N(n6), .A1N(i_div_ratio[4]), .B0(n18), .Y(N19) );
  OR2X1M U48 ( .A(n18), .B(i_div_ratio[5]), .Y(n20) );
  OAI2BB1X1M U49 ( .A0N(n18), .A1N(i_div_ratio[5]), .B0(n20), .Y(N20) );
  OR2X1M U50 ( .A(n20), .B(i_div_ratio[6]), .Y(n21) );
  OAI2BB1X1M U51 ( .A0N(n20), .A1N(i_div_ratio[6]), .B0(n21), .Y(N21) );
  NOR2X1M U52 ( .A(n21), .B(i_div_ratio[7]), .Y(N23) );
  AO21XLM U53 ( .A0(n21), .A1(i_div_ratio[7]), .B0(N23), .Y(N22) );
  XNOR2X1M U54 ( .A(N21), .B(counter[6]), .Y(n34) );
  XNOR2X1M U55 ( .A(N20), .B(counter[5]), .Y(n33) );
  XNOR2X1M U56 ( .A(N19), .B(counter[4]), .Y(n32) );
  XNOR2X1M U57 ( .A(N18), .B(counter[3]), .Y(n31) );
  NAND4X1M U58 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n42) );
  NOR2BX1M U59 ( .AN(N15), .B(counter[0]), .Y(n35) );
  OAI2B2X1M U60 ( .A1N(counter[1]), .A0(n35), .B0(N16), .B1(n35), .Y(n38) );
  NOR2BX1M U61 ( .AN(counter[0]), .B(N15), .Y(n36) );
  OAI2B2X1M U62 ( .A1N(N16), .A0(n36), .B0(counter[1]), .B1(n36), .Y(n37) );
  NAND3BX1M U63 ( .AN(N23), .B(n38), .C(n37), .Y(n41) );
  CLKXOR2X2M U64 ( .A(N22), .B(counter[7]), .Y(n40) );
  CLKXOR2X2M U65 ( .A(N17), .B(counter[2]), .Y(n39) );
  NOR4X1M U66 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N24) );
  NOR2BX1M U67 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n43) );
  OAI2B2X1M U68 ( .A1N(i_div_ratio[2]), .A0(n43), .B0(counter[1]), .B1(n43), 
        .Y(n47) );
  XNOR2X1M U69 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n46) );
  NOR2BX1M U70 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n44) );
  OAI2B2X1M U71 ( .A1N(counter[1]), .A0(n44), .B0(i_div_ratio[2]), .B1(n44), 
        .Y(n45) );
  NAND4BX1M U72 ( .AN(counter[7]), .B(n47), .C(n46), .D(n45), .Y(n53) );
  XNOR2X1M U73 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n51) );
  XNOR2X1M U74 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n50) );
  XNOR2X1M U75 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n49) );
  XNOR2X1M U76 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n48) );
  NAND4X1M U77 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(n52) );
  DLY1X1M U78 ( .A(test_se), .Y(n59) );
  DLY1X1M U79 ( .A(test_se), .Y(n60) );
  clk_div_RATIO_WIDTH8_0_DW01_inc_0 add_31 ( .A(counter), .SUM({N33, N32, N31, 
        N30, N29, N28, N27, N26}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17, n18, n19, n20;

  OAI211X2M U11 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR3X4M U12 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X4M U13 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND2X2M U14 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U15 ( .A(IN[5]), .B(n20), .C(IN[3]), .D(n15), .Y(n8) );
  NOR4X2M U16 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(n19), .Y(OUT[3]) );
  NAND3X2M U17 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NAND4BX1M U18 ( .AN(IN[3]), .B(n19), .C(n15), .D(n14), .Y(n7) );
  NAND4BX1M U19 ( .AN(n20), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  INVX2M U20 ( .A(IN[0]), .Y(n17) );
  INVX2M U21 ( .A(IN[2]), .Y(n15) );
  INVX2M U22 ( .A(IN[1]), .Y(n16) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
  INVXLM U24 ( .A(IN[4]), .Y(n18) );
  INVXLM U25 ( .A(n18), .Y(n19) );
  INVXLM U26 ( .A(n18), .Y(n20) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[4]) );
endmodule


module clk_div_RATIO_WIDTH8_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WIDTH8_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si2, test_si1, test_se;
  output o_div_clk, test_so2, test_so1;
  wire   pos_clk, neg_clk, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N26, N27, N28, N29, N30, N31, N32, N33, N46, N47, N48, N49, N50, N51,
         N52, N53, N60, n1, n2, n3, n4, n5, n6, n18, n20, n21, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n80, n81;
  wire   [7:0] counter;
  assign test_so2 = pos_clk;
  assign test_so1 = neg_clk;

  SDFFNSRHX2M neg_clk_reg ( .D(N60), .SI(test_si1), .SE(n80), .CKN(i_ref_clk), 
        .SN(1'b1), .RN(n2), .Q(neg_clk) );
  SDFFRQX2M \counter_reg[7]  ( .D(N53), .SI(counter[6]), .SE(n81), .CK(
        i_ref_clk), .RN(n2), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N52), .SI(counter[5]), .SE(n80), .CK(
        i_ref_clk), .RN(n2), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N48), .SI(counter[1]), .SE(n81), .CK(
        i_ref_clk), .RN(n2), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N49), .SI(counter[2]), .SE(n80), .CK(
        i_ref_clk), .RN(n2), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N50), .SI(counter[3]), .SE(n81), .CK(
        i_ref_clk), .RN(n2), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N51), .SI(counter[4]), .SE(n80), .CK(
        i_ref_clk), .RN(n2), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N46), .SI(test_si2), .SE(n81), .CK(i_ref_clk), .RN(n2), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N47), .SI(counter[0]), .SE(n80), .CK(
        i_ref_clk), .RN(n2), .Q(counter[1]) );
  SDFFRQX2M pos_clk_reg ( .D(n56), .SI(counter[7]), .SE(n81), .CK(i_ref_clk), 
        .RN(n2), .Q(pos_clk) );
  OR2X2M U5 ( .A(N24), .B(n61), .Y(n58) );
  NOR2BX2M U6 ( .AN(N27), .B(n58), .Y(N47) );
  NOR2BX2M U7 ( .AN(N28), .B(n58), .Y(N48) );
  NOR2BX2M U17 ( .AN(N29), .B(n58), .Y(N49) );
  NOR2BX2M U18 ( .AN(N30), .B(n58), .Y(N50) );
  NOR2BX2M U19 ( .AN(N31), .B(n58), .Y(N51) );
  NOR2BX2M U20 ( .AN(N32), .B(n58), .Y(N52) );
  OR2X2M U21 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n4) );
  INVX2M U22 ( .A(n64), .Y(n55) );
  INVX2M U23 ( .A(n3), .Y(n2) );
  INVX2M U24 ( .A(i_rst_n), .Y(n3) );
  INVX2M U25 ( .A(i_ref_clk), .Y(n65) );
  AND3X2M U26 ( .A(n54), .B(i_div_ratio[0]), .C(pos_clk), .Y(N60) );
  INVX2M U27 ( .A(n61), .Y(n54) );
  OR2X2M U28 ( .A(n53), .B(n52), .Y(n1) );
  NOR2X2M U29 ( .A(n62), .B(n61), .Y(n56) );
  AOI22X1M U30 ( .A0(n60), .A1(n59), .B0(n1), .B1(pos_clk), .Y(n62) );
  NOR4X1M U31 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n59) );
  NOR4X1M U32 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n60) );
  NOR2BX2M U33 ( .AN(N33), .B(n58), .Y(N53) );
  NOR2BX2M U34 ( .AN(N26), .B(n58), .Y(N46) );
  NOR4X1M U35 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), 
        .D(n57), .Y(n64) );
  OR4X1M U36 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n57) );
  NAND2X2M U37 ( .A(i_clk_en), .B(n55), .Y(n61) );
  AOI21X2M U38 ( .A0(neg_clk), .A1(i_div_ratio[0]), .B0(pos_clk), .Y(n63) );
  OAI22X1M U39 ( .A0(n65), .A1(n55), .B0(n64), .B1(n63), .Y(o_div_clk) );
  CLKINVX1M U40 ( .A(i_div_ratio[0]), .Y(N15) );
  OAI2BB1X1M U41 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n4), .Y(N16) );
  OR2X1M U42 ( .A(n4), .B(i_div_ratio[2]), .Y(n5) );
  OAI2BB1X1M U43 ( .A0N(n4), .A1N(i_div_ratio[2]), .B0(n5), .Y(N17) );
  OR2X1M U44 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OAI2BB1X1M U45 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N18) );
  OR2X1M U46 ( .A(n6), .B(i_div_ratio[4]), .Y(n18) );
  OAI2BB1X1M U47 ( .A0N(n6), .A1N(i_div_ratio[4]), .B0(n18), .Y(N19) );
  OR2X1M U48 ( .A(n18), .B(i_div_ratio[5]), .Y(n20) );
  OAI2BB1X1M U49 ( .A0N(n18), .A1N(i_div_ratio[5]), .B0(n20), .Y(N20) );
  OR2X1M U50 ( .A(n20), .B(i_div_ratio[6]), .Y(n21) );
  OAI2BB1X1M U51 ( .A0N(n20), .A1N(i_div_ratio[6]), .B0(n21), .Y(N21) );
  NOR2X1M U52 ( .A(n21), .B(i_div_ratio[7]), .Y(N23) );
  AO21XLM U53 ( .A0(n21), .A1(i_div_ratio[7]), .B0(N23), .Y(N22) );
  XNOR2X1M U54 ( .A(N21), .B(counter[6]), .Y(n34) );
  XNOR2X1M U55 ( .A(N20), .B(counter[5]), .Y(n33) );
  XNOR2X1M U56 ( .A(N19), .B(counter[4]), .Y(n32) );
  XNOR2X1M U57 ( .A(N18), .B(counter[3]), .Y(n31) );
  NAND4X1M U58 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n42) );
  NOR2BX1M U59 ( .AN(N15), .B(counter[0]), .Y(n35) );
  OAI2B2X1M U60 ( .A1N(counter[1]), .A0(n35), .B0(N16), .B1(n35), .Y(n38) );
  NOR2BX1M U61 ( .AN(counter[0]), .B(N15), .Y(n36) );
  OAI2B2X1M U62 ( .A1N(N16), .A0(n36), .B0(counter[1]), .B1(n36), .Y(n37) );
  NAND3BX1M U63 ( .AN(N23), .B(n38), .C(n37), .Y(n41) );
  CLKXOR2X2M U64 ( .A(N22), .B(counter[7]), .Y(n40) );
  CLKXOR2X2M U65 ( .A(N17), .B(counter[2]), .Y(n39) );
  NOR4X1M U66 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N24) );
  NOR2BX1M U67 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n43) );
  OAI2B2X1M U68 ( .A1N(i_div_ratio[2]), .A0(n43), .B0(counter[1]), .B1(n43), 
        .Y(n47) );
  XNOR2X1M U69 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n46) );
  NOR2BX1M U70 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n44) );
  OAI2B2X1M U71 ( .A1N(counter[1]), .A0(n44), .B0(i_div_ratio[2]), .B1(n44), 
        .Y(n45) );
  NAND4BX1M U72 ( .AN(counter[7]), .B(n47), .C(n46), .D(n45), .Y(n53) );
  XNOR2X1M U73 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n51) );
  XNOR2X1M U74 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n50) );
  XNOR2X1M U75 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n49) );
  XNOR2X1M U76 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n48) );
  NAND4X1M U77 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(n52) );
  DLY1X1M U78 ( .A(test_se), .Y(n80) );
  DLY1X1M U79 ( .A(test_se), .Y(n81) );
  clk_div_RATIO_WIDTH8_1_DW01_inc_0 add_31 ( .A(counter), .SUM({N33, N32, N31, 
        N30, N29, N28, N27, N26}) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   rcv_flop, pls_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module system_top ( SI, SE, scan_clk, scan_rst, test_mode, SO, REF_CLK, RST, 
        UART_CLK, RX_IN, TX_OUT, parity_error, framing_error );
  input [4:0] SI;
  output [4:0] SO;
  input SE, scan_clk, scan_rst, test_mode, REF_CLK, RST, UART_CLK, RX_IN;
  output TX_OUT, parity_error, framing_error;
  wire   gate_en, gate_en_test, CLK_D1, CLK_D2, tx_clk_func, tx_clk,
         rx_clk_func, rx_clk, sync_rst_domain1, RST_D1, sync_rst_domain2,
         RST_D2, we_en, rd_en, rd_data_valid, alu_clk, alu_en, alu_out_valid,
         rx_data_valid, fifo_full, wr_inc, rx_out_valid, tx_busy, fifo_empty,
         rd_inc, n1, n2, n3, n4, n5, n7, n8, n9, n12, n15, n16, n17, n18, n21,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42;
  wire   [7:0] wr_data;
  wire   [3:0] address;
  wire   [7:0] rd_data;
  wire   [7:0] op_A;
  wire   [7:0] op_B;
  wire   [7:0] UART_Config;
  wire   [7:0] div_ratio;
  wire   [3:0] alu_fun;
  wire   [15:0] alu_out;
  wire   [7:0] rx_data_sync;
  wire   [7:0] wr_data_fifo;
  wire   [7:0] rx_data_unsync;
  wire   [7:0] rd_data_fifo;
  wire   [7:0] DIV_RATIO_RX;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(n5), .Y(n4) );
  OR2X2M U5 ( .A(gate_en), .B(test_mode), .Y(gate_en_test) );
  INVX2M U6 ( .A(fifo_empty), .Y(n1) );
  INVX2M U7 ( .A(RST_D1), .Y(n5) );
  INVX2M U8 ( .A(RST_D2), .Y(n3) );
  INVXLM U15 ( .A(n35), .Y(n26) );
  INVXLM U16 ( .A(n35), .Y(n27) );
  INVXLM U17 ( .A(n32), .Y(n28) );
  INVXLM U18 ( .A(n32), .Y(n29) );
  INVXLM U19 ( .A(n32), .Y(n30) );
  INVXLM U20 ( .A(n26), .Y(n32) );
  INVXLM U21 ( .A(n32), .Y(n31) );
  INVXLM U22 ( .A(n35), .Y(n33) );
  INVXLM U23 ( .A(SE), .Y(n35) );
  INVXLM U24 ( .A(n35), .Y(n34) );
  INVXLM U25 ( .A(n40), .Y(n36) );
  INVXLM U26 ( .A(n36), .Y(n37) );
  INVXLM U27 ( .A(n36), .Y(n38) );
  INVXLM U28 ( .A(n38), .Y(n39) );
  INVXLM U29 ( .A(n28), .Y(n40) );
  INVXLM U30 ( .A(n37), .Y(n41) );
  INVXLM U31 ( .A(n38), .Y(n42) );
  mux2X1_1 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_D1) );
  mux2X1_4 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(CLK_D2) );
  mux2X1_3 U2_mux2X1 ( .IN_0(tx_clk_func), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(tx_clk) );
  mux2X1_2 U3_mux2X1 ( .IN_0(rx_clk_func), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(rx_clk) );
  mux2X1_0 U4_mux2X1 ( .IN_0(sync_rst_domain1), .IN_1(scan_rst), .SEL(
        test_mode), .OUT(RST_D1) );
  mux2X1_5 U5_mux2X1 ( .IN_0(sync_rst_domain2), .IN_1(scan_rst), .SEL(
        test_mode), .OUT(RST_D2) );
  Reg_file_ADDR_WIDHT4_DATA_WIDTH8_DATA_DEPTH16_test_1 Reg_file_U0 ( .Wrdata(
        wr_data), .Address(address), .WrEn(we_en), .RdEn(rd_en), .CLK(CLK_D1), 
        .RST(n4), .RdData(rd_data), .RdData_Valid(rd_data_valid), .REG0(op_A), 
        .REG1(op_B), .REG2(UART_Config), .REG3(div_ratio), .test_si2(SI[1]), 
        .test_si1(n15), .test_so2(n12), .test_so1(SO[2]), .test_se(SE) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_test_1 Alu_U0 ( .A(op_A), .B(op_B), .ALU_FUN(
        alu_fun), .CLK(alu_clk), .RST(n4), .Enalbe(alu_en), .ALU_OUT(alu_out), 
        .ALU_VALID(alu_out_valid), .test_si(n18), .test_se(n26) );
  SYS_CTRL_DATA_WIDTH8_ADDR_BUS4_FUN_WIDTH4_test_1 SYS_CTRL_U0 ( .CLK(CLK_D1), 
        .RST(n4), .ALU_OUT(alu_out), .OUT_VALID(alu_out_valid), .RX_P_Data(
        rx_data_sync), .RX_D_VLD(rx_data_valid), .Rd_Data(rd_data), 
        .RdData_Valid(rd_data_valid), .FIFO_FULL(fifo_full), .ALU_EN(alu_en), 
        .ALU_FUN(alu_fun), .CLK_EN(gate_en), .Address(address), .WrEN(we_en), 
        .RdEN(rd_en), .WrData(wr_data), .TX_P_Data(wr_data_fifo), .TX_D_VLD(
        wr_inc), .test_si2(SI[0]), .test_si1(n12), .test_so2(n9), .test_so1(
        SO[1]), .test_se(n27) );
  data_sync_NUM_STAGES2_BUS_WIDTH8_test_1 data_sync_U0 ( .unsync_bus(
        rx_data_unsync), .bus_enable(rx_out_valid), .dest_clk(CLK_D1), 
        .dest_rst(n4), .sync_bus(rx_data_sync), .enable_pulse(rx_data_valid), 
        .test_si(n7), .test_se(n29) );
  uart_top_parallel_data8_test_1 uart_top_U0 ( .TX_CLK(tx_clk), .TX_IN_P(
        rd_data_fifo), .TX_IN_V(n1), .TX_OUT_S(TX_OUT), .TX_OUT_V(tx_busy), 
        .RX_CLK(rx_clk), .RX_IN_S(RX_IN), .Prescale(UART_Config[7:2]), 
        .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), .RX_OUT_P(
        rx_data_unsync), .RX_OUT_V(rx_out_valid), .RST(n2), .parity_error(
        parity_error), .framing_error(framing_error), .test_si(rx_data_sync[7]), .test_se(n34) );
  ASYNC_FIFO_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3_test_1 ASYNC_FIFO_U0 ( 
        .W_CLK(CLK_D1), .W_RST(n4), .W_INC(wr_inc), .R_CLK(tx_clk), .R_RST(n2), 
        .R_INC(rd_inc), .WR_DATA(wr_data_fifo), .RD_DATA(rd_data_fifo), .FULL(
        fifo_full), .EMPTY(fifo_empty), .test_si2(SI[2]), .test_si1(SI[4]), 
        .test_so2(n18), .test_so1(SO[4]), .test_se(n33) );
  RST_SYNC_NUM_STAGES2_test_0 RST_SYNC_U0 ( .rst(RST), .clk(CLK_D1), 
        .sync_rst(sync_rst_domain1), .test_si(n17), .test_so(n16), .test_se(
        n39) );
  RST_SYNC_NUM_STAGES2_test_1 RST_SYNC_U1 ( .rst(RST), .clk(CLK_D2), 
        .sync_rst(sync_rst_domain2), .test_si(n16), .test_so(n15), .test_se(
        n41) );
  CLK_GATE CLK_GATE_U0 ( .CLK_EN(gate_en_test), .CLK(CLK_D1), .GATED_CLK(
        alu_clk) );
  clk_div_RATIO_WIDTH8_test_1 clk_div_U0 ( .i_ref_clk(CLK_D2), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(div_ratio), .o_div_clk(tx_clk_func), 
        .test_si2(n9), .test_si1(SI[3]), .test_so2(n8), .test_so1(n21), 
        .test_se(n30) );
  CLKDIV_MUX CLKDIV_MUX_U0 ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  clk_div_RATIO_WIDTH8_test_0 clk_div_U1 ( .i_ref_clk(CLK_D2), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(rx_clk_func), .test_si2(n8), 
        .test_si1(n21), .test_so2(n7), .test_so1(SO[3]), .test_se(n31) );
  PULSE_GEN_test_1 PULSE_GEN_U0 ( .clk(tx_clk), .rst(n2), .lvl_sig(tx_busy), 
        .pulse_sig(rd_inc), .test_si(alu_out_valid), .test_so(n17), .test_se(
        n42) );
  BUFX2M U14 ( .A(framing_error), .Y(SO[0]) );
endmodule

