/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 09:15:26 2026
/////////////////////////////////////////////////////////////


module Reg_file_ADDR_WIDHT4_DATA_WIDTH8_DATA_DEPTH16 ( Wrdata, Address, WrEn, 
        RdEn, CLK, RST, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [7:0] Wrdata;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
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
         \reg_file[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \RdData_reg[7]  ( .D(n177), .CK(CLK), .RN(n302), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n176), .CK(CLK), .RN(n312), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n175), .CK(CLK), .RN(n312), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n174), .CK(CLK), .RN(n312), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n173), .CK(CLK), .RN(n312), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n172), .CK(CLK), .RN(n312), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n171), .CK(CLK), .RN(n312), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n170), .CK(CLK), .RN(n312), .Q(RdData[0]) );
  DFFRQX2M RdData_Valid_reg ( .D(n318), .CK(CLK), .RN(n307), .Q(RdData_Valid)
         );
  DFFRQX2M \reg_file_reg[5][7]  ( .D(n129), .CK(CLK), .RN(n309), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n128), .CK(CLK), .RN(n309), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n127), .CK(CLK), .RN(n308), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n126), .CK(CLK), .RN(n308), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n125), .CK(CLK), .RN(n308), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n124), .CK(CLK), .RN(n308), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n123), .CK(CLK), .RN(n308), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n122), .CK(CLK), .RN(n308), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n113), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n112), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n111), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n110), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n109), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n108), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n107), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n106), .CK(CLK), .RN(n307), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[9][7]  ( .D(n97), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][7] ) );
  DFFRQX2M \reg_file_reg[9][6]  ( .D(n96), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][6] ) );
  DFFRQX2M \reg_file_reg[9][5]  ( .D(n95), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][5] ) );
  DFFRQX2M \reg_file_reg[9][4]  ( .D(n94), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][4] ) );
  DFFRQX2M \reg_file_reg[9][3]  ( .D(n93), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][3] ) );
  DFFRQX2M \reg_file_reg[9][2]  ( .D(n92), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][2] ) );
  DFFRQX2M \reg_file_reg[9][1]  ( .D(n91), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][1] ) );
  DFFRQX2M \reg_file_reg[9][0]  ( .D(n90), .CK(CLK), .RN(n306), .Q(
        \reg_file[9][0] ) );
  DFFRQX2M \reg_file_reg[11][7]  ( .D(n81), .CK(CLK), .RN(n305), .Q(
        \reg_file[11][7] ) );
  DFFRQX2M \reg_file_reg[11][6]  ( .D(n80), .CK(CLK), .RN(n305), .Q(
        \reg_file[11][6] ) );
  DFFRQX2M \reg_file_reg[11][5]  ( .D(n79), .CK(CLK), .RN(n305), .Q(
        \reg_file[11][5] ) );
  DFFRQX2M \reg_file_reg[11][4]  ( .D(n78), .CK(CLK), .RN(n305), .Q(
        \reg_file[11][4] ) );
  DFFRQX2M \reg_file_reg[11][3]  ( .D(n77), .CK(CLK), .RN(n305), .Q(
        \reg_file[11][3] ) );
  DFFRQX2M \reg_file_reg[11][2]  ( .D(n76), .CK(CLK), .RN(n304), .Q(
        \reg_file[11][2] ) );
  DFFRQX2M \reg_file_reg[11][1]  ( .D(n75), .CK(CLK), .RN(n304), .Q(
        \reg_file[11][1] ) );
  DFFRQX2M \reg_file_reg[11][0]  ( .D(n74), .CK(CLK), .RN(n304), .Q(
        \reg_file[11][0] ) );
  DFFRQX2M \reg_file_reg[13][7]  ( .D(n65), .CK(CLK), .RN(n304), .Q(
        \reg_file[13][7] ) );
  DFFRQX2M \reg_file_reg[13][6]  ( .D(n64), .CK(CLK), .RN(n304), .Q(
        \reg_file[13][6] ) );
  DFFRQX2M \reg_file_reg[13][5]  ( .D(n63), .CK(CLK), .RN(n303), .Q(
        \reg_file[13][5] ) );
  DFFRQX2M \reg_file_reg[13][4]  ( .D(n62), .CK(CLK), .RN(n303), .Q(
        \reg_file[13][4] ) );
  DFFRQX2M \reg_file_reg[13][3]  ( .D(n61), .CK(CLK), .RN(n303), .Q(
        \reg_file[13][3] ) );
  DFFRQX2M \reg_file_reg[13][2]  ( .D(n60), .CK(CLK), .RN(n303), .Q(
        \reg_file[13][2] ) );
  DFFRQX2M \reg_file_reg[13][1]  ( .D(n59), .CK(CLK), .RN(n303), .Q(
        \reg_file[13][1] ) );
  DFFRQX2M \reg_file_reg[13][0]  ( .D(n58), .CK(CLK), .RN(n303), .Q(
        \reg_file[13][0] ) );
  DFFRQX2M \reg_file_reg[15][7]  ( .D(n49), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][7] ) );
  DFFRQX2M \reg_file_reg[15][6]  ( .D(n48), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][6] ) );
  DFFRQX2M \reg_file_reg[15][5]  ( .D(n47), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][5] ) );
  DFFRQX2M \reg_file_reg[15][4]  ( .D(n46), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][4] ) );
  DFFRQX2M \reg_file_reg[15][3]  ( .D(n45), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][3] ) );
  DFFRQX2M \reg_file_reg[15][2]  ( .D(n44), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][2] ) );
  DFFRQX2M \reg_file_reg[15][1]  ( .D(n43), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][1] ) );
  DFFRQX2M \reg_file_reg[15][0]  ( .D(n42), .CK(CLK), .RN(n302), .Q(
        \reg_file[15][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n137), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n136), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n135), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n134), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n133), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n132), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n131), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n130), .CK(CLK), .RN(n309), .Q(
        \reg_file[4][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n121), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n120), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n119), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n118), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n117), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n116), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n115), .CK(CLK), .RN(n308), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n114), .CK(CLK), .RN(n307), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[8][7]  ( .D(n105), .CK(CLK), .RN(n307), .Q(
        \reg_file[8][7] ) );
  DFFRQX2M \reg_file_reg[8][6]  ( .D(n104), .CK(CLK), .RN(n307), .Q(
        \reg_file[8][6] ) );
  DFFRQX2M \reg_file_reg[8][5]  ( .D(n103), .CK(CLK), .RN(n307), .Q(
        \reg_file[8][5] ) );
  DFFRQX2M \reg_file_reg[8][4]  ( .D(n102), .CK(CLK), .RN(n306), .Q(
        \reg_file[8][4] ) );
  DFFRQX2M \reg_file_reg[8][3]  ( .D(n101), .CK(CLK), .RN(n306), .Q(
        \reg_file[8][3] ) );
  DFFRQX2M \reg_file_reg[8][2]  ( .D(n100), .CK(CLK), .RN(n306), .Q(
        \reg_file[8][2] ) );
  DFFRQX2M \reg_file_reg[8][1]  ( .D(n99), .CK(CLK), .RN(n306), .Q(
        \reg_file[8][1] ) );
  DFFRQX2M \reg_file_reg[8][0]  ( .D(n98), .CK(CLK), .RN(n306), .Q(
        \reg_file[8][0] ) );
  DFFRQX2M \reg_file_reg[10][7]  ( .D(n89), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][7] ) );
  DFFRQX2M \reg_file_reg[10][6]  ( .D(n88), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][6] ) );
  DFFRQX2M \reg_file_reg[10][5]  ( .D(n87), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][5] ) );
  DFFRQX2M \reg_file_reg[10][4]  ( .D(n86), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][4] ) );
  DFFRQX2M \reg_file_reg[10][3]  ( .D(n85), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][3] ) );
  DFFRQX2M \reg_file_reg[10][2]  ( .D(n84), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][2] ) );
  DFFRQX2M \reg_file_reg[10][1]  ( .D(n83), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][1] ) );
  DFFRQX2M \reg_file_reg[10][0]  ( .D(n82), .CK(CLK), .RN(n305), .Q(
        \reg_file[10][0] ) );
  DFFRQX2M \reg_file_reg[12][7]  ( .D(n73), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][7] ) );
  DFFRQX2M \reg_file_reg[12][6]  ( .D(n72), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][6] ) );
  DFFRQX2M \reg_file_reg[12][5]  ( .D(n71), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][5] ) );
  DFFRQX2M \reg_file_reg[12][4]  ( .D(n70), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][4] ) );
  DFFRQX2M \reg_file_reg[12][3]  ( .D(n69), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][3] ) );
  DFFRQX2M \reg_file_reg[12][2]  ( .D(n68), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][2] ) );
  DFFRQX2M \reg_file_reg[12][1]  ( .D(n67), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][1] ) );
  DFFRQX2M \reg_file_reg[12][0]  ( .D(n66), .CK(CLK), .RN(n304), .Q(
        \reg_file[12][0] ) );
  DFFRQX2M \reg_file_reg[14][7]  ( .D(n57), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][7] ) );
  DFFRQX2M \reg_file_reg[14][6]  ( .D(n56), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][6] ) );
  DFFRQX2M \reg_file_reg[14][5]  ( .D(n55), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][5] ) );
  DFFRQX2M \reg_file_reg[14][4]  ( .D(n54), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][4] ) );
  DFFRQX2M \reg_file_reg[14][3]  ( .D(n53), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][3] ) );
  DFFRQX2M \reg_file_reg[14][2]  ( .D(n52), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][2] ) );
  DFFRQX2M \reg_file_reg[14][1]  ( .D(n51), .CK(CLK), .RN(n302), .Q(
        \reg_file[14][1] ) );
  DFFRQX2M \reg_file_reg[14][0]  ( .D(n50), .CK(CLK), .RN(n303), .Q(
        \reg_file[14][0] ) );
  DFFSQX2M \reg_file_reg[3][5]  ( .D(n143), .CK(CLK), .SN(n302), .Q(REG3[5])
         );
  DFFSQX2M \reg_file_reg[2][0]  ( .D(n146), .CK(CLK), .SN(n302), .Q(REG2[0])
         );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n147), .CK(CLK), .RN(n310), .Q(REG2[1])
         );
  DFFRQX2M \reg_file_reg[3][6]  ( .D(n144), .CK(CLK), .RN(n310), .Q(REG3[6])
         );
  DFFRQX2M \reg_file_reg[3][4]  ( .D(n142), .CK(CLK), .RN(n310), .Q(REG3[4])
         );
  DFFRQX2M \reg_file_reg[3][7]  ( .D(n145), .CK(CLK), .RN(n310), .Q(REG3[7])
         );
  DFFRQX2M \reg_file_reg[3][3]  ( .D(n141), .CK(CLK), .RN(n310), .Q(REG3[3])
         );
  DFFRQX2M \reg_file_reg[3][2]  ( .D(n140), .CK(CLK), .RN(n309), .Q(REG3[2])
         );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n138), .CK(CLK), .RN(n309), .Q(REG3[0])
         );
  DFFRQX2M \reg_file_reg[3][1]  ( .D(n139), .CK(CLK), .RN(n309), .Q(REG3[1])
         );
  DFFRQX2M \reg_file_reg[2][4]  ( .D(n150), .CK(CLK), .RN(n310), .Q(REG2[4])
         );
  DFFRQX4M \reg_file_reg[2][2]  ( .D(n148), .CK(CLK), .RN(n310), .Q(REG2[2])
         );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n163), .CK(CLK), .RN(n311), .Q(REG0[1])
         );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n162), .CK(CLK), .RN(n311), .Q(REG0[0])
         );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n164), .CK(CLK), .RN(n311), .Q(REG0[2])
         );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n165), .CK(CLK), .RN(n311), .Q(REG0[3])
         );
  DFFRQX2M \reg_file_reg[0][4]  ( .D(n166), .CK(CLK), .RN(n311), .Q(REG0[4])
         );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n167), .CK(CLK), .RN(n311), .Q(REG0[5])
         );
  DFFSQX2M \reg_file_reg[2][7]  ( .D(n153), .CK(CLK), .SN(n302), .Q(REG2[7])
         );
  DFFRQX2M \reg_file_reg[2][3]  ( .D(n149), .CK(CLK), .RN(n310), .Q(REG2[3])
         );
  DFFRQX2M \reg_file_reg[2][5]  ( .D(n151), .CK(CLK), .RN(n310), .Q(REG2[5])
         );
  DFFRQX2M \reg_file_reg[2][6]  ( .D(n152), .CK(CLK), .RN(n310), .Q(REG2[6])
         );
  DFFRQX2M \reg_file_reg[1][2]  ( .D(n156), .CK(CLK), .RN(n310), .Q(REG1[2])
         );
  DFFRQX2M \reg_file_reg[1][3]  ( .D(n157), .CK(CLK), .RN(n311), .Q(REG1[3])
         );
  DFFRQX2M \reg_file_reg[1][0]  ( .D(n154), .CK(CLK), .RN(n310), .Q(REG1[0])
         );
  DFFRQX4M \reg_file_reg[1][7]  ( .D(n161), .CK(CLK), .RN(n311), .Q(REG1[7])
         );
  DFFRQX2M \reg_file_reg[0][6]  ( .D(n168), .CK(CLK), .RN(n311), .Q(REG0[6])
         );
  DFFRQX2M \reg_file_reg[0][7]  ( .D(n169), .CK(CLK), .RN(n311), .Q(REG0[7])
         );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n155), .CK(CLK), .RN(n310), .Q(REG1[1])
         );
  DFFRQX2M \reg_file_reg[1][6]  ( .D(n160), .CK(CLK), .RN(n311), .Q(REG1[6])
         );
  DFFRQX4M \reg_file_reg[1][5]  ( .D(n159), .CK(CLK), .RN(n311), .Q(REG1[5])
         );
  DFFRQX4M \reg_file_reg[1][4]  ( .D(n158), .CK(CLK), .RN(n311), .Q(REG1[4])
         );
  NOR2X2M U3 ( .A(n270), .B(n271), .Y(n258) );
  NOR2X2M U4 ( .A(n271), .B(N12), .Y(n260) );
  NAND2X2M U5 ( .A(N14), .B(n317), .Y(n249) );
  AOI21XLM U6 ( .A0(n254), .A1(n253), .B0(n252), .Y(n267) );
  NOR2X2M U7 ( .A(n317), .B(n270), .Y(n15) );
  NOR2X2M U8 ( .A(n317), .B(N12), .Y(n20) );
  NOR2X2M U9 ( .A(n270), .B(N13), .Y(n23) );
  NOR2X2M U10 ( .A(N12), .B(N13), .Y(n26) );
  AOI22XLM U11 ( .A0(REG0[0]), .A1(n285), .B0(REG1[0]), .B1(n282), .Y(n5) );
  AOI22XLM U12 ( .A0(REG0[1]), .A1(n285), .B0(REG1[1]), .B1(n282), .Y(n181) );
  AOI22XLM U13 ( .A0(REG0[2]), .A1(n285), .B0(REG1[2]), .B1(n282), .Y(n193) );
  AOI22XLM U14 ( .A0(REG0[3]), .A1(n284), .B0(REG1[3]), .B1(n281), .Y(n205) );
  AOI22XLM U15 ( .A0(REG0[4]), .A1(n284), .B0(REG1[4]), .B1(n281), .Y(n217) );
  AOI22XLM U16 ( .A0(REG0[6]), .A1(n283), .B0(REG1[6]), .B1(n280), .Y(n241) );
  AOI22XLM U17 ( .A0(REG0[7]), .A1(n283), .B0(REG1[7]), .B1(n280), .Y(n256) );
  OAI2BB2XLM U18 ( .B0(n327), .B1(n287), .A0N(REG1[0]), .A1N(n287), .Y(n154)
         );
  OAI2BB2XLM U19 ( .B0(n326), .B1(n287), .A0N(REG1[1]), .A1N(n287), .Y(n155)
         );
  OAI2BB2XLM U20 ( .B0(n325), .B1(n38), .A0N(REG1[2]), .A1N(n287), .Y(n156) );
  OAI2BB2XLM U21 ( .B0(n324), .B1(n38), .A0N(REG1[3]), .A1N(n287), .Y(n157) );
  OAI2BB2XLM U22 ( .B0(n323), .B1(n38), .A0N(REG1[4]), .A1N(n287), .Y(n158) );
  OAI2BB2XLM U23 ( .B0(n321), .B1(n38), .A0N(REG1[6]), .A1N(n287), .Y(n160) );
  OAI2BB2XLM U24 ( .B0(n321), .B1(n286), .A0N(REG0[6]), .A1N(n286), .Y(n168)
         );
  OAI2BB2XLM U25 ( .B0(n320), .B1(n40), .A0N(REG0[7]), .A1N(n286), .Y(n169) );
  BUFX2M U26 ( .A(n17), .Y(n300) );
  BUFX2M U27 ( .A(n32), .Y(n292) );
  INVX2M U28 ( .A(n41), .Y(n318) );
  BUFX2M U29 ( .A(n273), .Y(n275) );
  BUFX2M U30 ( .A(n273), .Y(n274) );
  NOR2X2M U31 ( .A(n319), .B(RdEn), .Y(n29) );
  INVX2M U32 ( .A(WrEn), .Y(n319) );
  NAND2X2M U33 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U34 ( .A(n33), .B(n15), .Y(n32) );
  BUFX2M U35 ( .A(n34), .Y(n291) );
  BUFX2M U36 ( .A(n35), .Y(n290) );
  BUFX2M U37 ( .A(n36), .Y(n289) );
  BUFX2M U38 ( .A(n37), .Y(n288) );
  BUFX2M U39 ( .A(n38), .Y(n287) );
  BUFX2M U40 ( .A(n40), .Y(n286) );
  BUFX2M U41 ( .A(n19), .Y(n299) );
  BUFX2M U42 ( .A(n21), .Y(n298) );
  BUFX2M U43 ( .A(n22), .Y(n297) );
  BUFX2M U44 ( .A(n24), .Y(n296) );
  BUFX2M U45 ( .A(n25), .Y(n295) );
  BUFX2M U46 ( .A(n28), .Y(n294) );
  BUFX2M U47 ( .A(n30), .Y(n293) );
  BUFX2M U48 ( .A(n14), .Y(n301) );
  NAND2X2M U49 ( .A(RdEn), .B(n319), .Y(n41) );
  BUFX4M U50 ( .A(n315), .Y(n303) );
  BUFX4M U51 ( .A(n316), .Y(n304) );
  BUFX4M U52 ( .A(n315), .Y(n305) );
  BUFX4M U53 ( .A(n313), .Y(n306) );
  BUFX4M U54 ( .A(n316), .Y(n307) );
  BUFX4M U55 ( .A(n314), .Y(n308) );
  BUFX4M U56 ( .A(n313), .Y(n309) );
  BUFX4M U57 ( .A(n313), .Y(n310) );
  BUFX4M U58 ( .A(n314), .Y(n311) );
  BUFX2M U59 ( .A(n316), .Y(n312) );
  BUFX2M U60 ( .A(n259), .Y(n278) );
  BUFX2M U61 ( .A(n259), .Y(n277) );
  BUFX2M U62 ( .A(n280), .Y(n282) );
  BUFX2M U63 ( .A(n280), .Y(n281) );
  BUFX2M U64 ( .A(n259), .Y(n276) );
  INVX2M U65 ( .A(n272), .Y(n273) );
  INVX2M U66 ( .A(n258), .Y(n272) );
  BUFX2M U67 ( .A(n261), .Y(n285) );
  BUFX2M U68 ( .A(n261), .Y(n284) );
  BUFX2M U69 ( .A(n261), .Y(n283) );
  NAND2X2M U70 ( .A(n15), .B(n16), .Y(n14) );
  NAND2X2M U71 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U72 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U73 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U74 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U75 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U76 ( .A(n26), .B(n18), .Y(n28) );
  AND2X2M U77 ( .A(n27), .B(n271), .Y(n18) );
  AND2X2M U78 ( .A(n39), .B(n271), .Y(n33) );
  NAND2X2M U79 ( .A(n31), .B(n15), .Y(n30) );
  NAND2X2M U80 ( .A(n31), .B(n20), .Y(n34) );
  NAND2X2M U81 ( .A(n33), .B(n20), .Y(n35) );
  NAND2X2M U82 ( .A(n31), .B(n23), .Y(n36) );
  NAND2X2M U83 ( .A(n33), .B(n23), .Y(n37) );
  NAND2X2M U84 ( .A(n31), .B(n26), .Y(n38) );
  NAND2X2M U85 ( .A(n33), .B(n26), .Y(n40) );
  BUFX4M U86 ( .A(n314), .Y(n302) );
  BUFX2M U87 ( .A(n315), .Y(n314) );
  BUFX2M U88 ( .A(n316), .Y(n313) );
  INVX2M U89 ( .A(n279), .Y(n280) );
  INVX2M U90 ( .A(n260), .Y(n279) );
  INVX2M U91 ( .A(N11), .Y(n271) );
  INVX2M U92 ( .A(N12), .Y(n270) );
  INVX2M U93 ( .A(N14), .Y(n269) );
  INVX4M U94 ( .A(Wrdata[0]), .Y(n327) );
  INVX4M U95 ( .A(Wrdata[1]), .Y(n326) );
  INVX4M U96 ( .A(Wrdata[2]), .Y(n325) );
  INVX4M U97 ( .A(Wrdata[3]), .Y(n324) );
  INVX4M U98 ( .A(Wrdata[4]), .Y(n323) );
  INVX4M U99 ( .A(Wrdata[5]), .Y(n322) );
  INVX4M U100 ( .A(Wrdata[6]), .Y(n321) );
  INVX4M U101 ( .A(Wrdata[7]), .Y(n320) );
  NOR2BX2M U102 ( .AN(n29), .B(N14), .Y(n39) );
  INVX2M U103 ( .A(N13), .Y(n317) );
  AND2X2M U104 ( .A(n27), .B(N11), .Y(n16) );
  AND2X2M U105 ( .A(n39), .B(N11), .Y(n31) );
  AND2X2M U106 ( .A(N14), .B(n29), .Y(n27) );
  BUFX2M U107 ( .A(RST), .Y(n316) );
  BUFX2M U108 ( .A(RST), .Y(n315) );
  AO22X1M U109 ( .A0(N43), .A1(n318), .B0(RdData[0]), .B1(n41), .Y(n170) );
  AO22X1M U110 ( .A0(N42), .A1(n318), .B0(RdData[1]), .B1(n41), .Y(n171) );
  AO22X1M U111 ( .A0(N39), .A1(n318), .B0(RdData[4]), .B1(n41), .Y(n174) );
  AO22X1M U112 ( .A0(N38), .A1(n318), .B0(RdData[5]), .B1(n41), .Y(n175) );
  AO22X1M U113 ( .A0(N36), .A1(n318), .B0(RdData[7]), .B1(n41), .Y(n177) );
  AO22X1M U114 ( .A0(N41), .A1(n318), .B0(RdData[2]), .B1(n41), .Y(n172) );
  AO22X1M U115 ( .A0(N40), .A1(n318), .B0(RdData[3]), .B1(n41), .Y(n173) );
  AO22X1M U116 ( .A0(N37), .A1(n318), .B0(RdData[6]), .B1(n41), .Y(n176) );
  OAI2BB2X1M U117 ( .B0(n301), .B1(n327), .A0N(\reg_file[15][0] ), .A1N(n301), 
        .Y(n42) );
  OAI2BB2X1M U118 ( .B0(n301), .B1(n326), .A0N(\reg_file[15][1] ), .A1N(n301), 
        .Y(n43) );
  OAI2BB2X1M U119 ( .B0(n14), .B1(n325), .A0N(\reg_file[15][2] ), .A1N(n301), 
        .Y(n44) );
  OAI2BB2X1M U120 ( .B0(n14), .B1(n324), .A0N(\reg_file[15][3] ), .A1N(n301), 
        .Y(n45) );
  OAI2BB2X1M U121 ( .B0(n14), .B1(n323), .A0N(\reg_file[15][4] ), .A1N(n301), 
        .Y(n46) );
  OAI2BB2X1M U122 ( .B0(n301), .B1(n322), .A0N(\reg_file[15][5] ), .A1N(n301), 
        .Y(n47) );
  OAI2BB2X1M U123 ( .B0(n14), .B1(n321), .A0N(\reg_file[15][6] ), .A1N(n301), 
        .Y(n48) );
  OAI2BB2X1M U124 ( .B0(n14), .B1(n320), .A0N(\reg_file[15][7] ), .A1N(n301), 
        .Y(n49) );
  OAI2BB2X1M U125 ( .B0(n327), .B1(n300), .A0N(\reg_file[14][0] ), .A1N(n300), 
        .Y(n50) );
  OAI2BB2X1M U126 ( .B0(n326), .B1(n300), .A0N(\reg_file[14][1] ), .A1N(n300), 
        .Y(n51) );
  OAI2BB2X1M U127 ( .B0(n325), .B1(n17), .A0N(\reg_file[14][2] ), .A1N(n300), 
        .Y(n52) );
  OAI2BB2X1M U128 ( .B0(n324), .B1(n17), .A0N(\reg_file[14][3] ), .A1N(n300), 
        .Y(n53) );
  OAI2BB2X1M U129 ( .B0(n323), .B1(n17), .A0N(\reg_file[14][4] ), .A1N(n300), 
        .Y(n54) );
  OAI2BB2X1M U130 ( .B0(n322), .B1(n300), .A0N(\reg_file[14][5] ), .A1N(n300), 
        .Y(n55) );
  OAI2BB2X1M U131 ( .B0(n321), .B1(n17), .A0N(\reg_file[14][6] ), .A1N(n300), 
        .Y(n56) );
  OAI2BB2X1M U132 ( .B0(n320), .B1(n17), .A0N(\reg_file[14][7] ), .A1N(n300), 
        .Y(n57) );
  OAI2BB2X1M U133 ( .B0(n327), .B1(n299), .A0N(\reg_file[13][0] ), .A1N(n299), 
        .Y(n58) );
  OAI2BB2X1M U134 ( .B0(n326), .B1(n299), .A0N(\reg_file[13][1] ), .A1N(n299), 
        .Y(n59) );
  OAI2BB2X1M U135 ( .B0(n325), .B1(n19), .A0N(\reg_file[13][2] ), .A1N(n299), 
        .Y(n60) );
  OAI2BB2X1M U136 ( .B0(n324), .B1(n19), .A0N(\reg_file[13][3] ), .A1N(n299), 
        .Y(n61) );
  OAI2BB2X1M U137 ( .B0(n323), .B1(n19), .A0N(\reg_file[13][4] ), .A1N(n299), 
        .Y(n62) );
  OAI2BB2X1M U138 ( .B0(n322), .B1(n299), .A0N(\reg_file[13][5] ), .A1N(n299), 
        .Y(n63) );
  OAI2BB2X1M U139 ( .B0(n321), .B1(n19), .A0N(\reg_file[13][6] ), .A1N(n299), 
        .Y(n64) );
  OAI2BB2X1M U140 ( .B0(n320), .B1(n19), .A0N(\reg_file[13][7] ), .A1N(n299), 
        .Y(n65) );
  OAI2BB2X1M U141 ( .B0(n327), .B1(n298), .A0N(\reg_file[12][0] ), .A1N(n298), 
        .Y(n66) );
  OAI2BB2X1M U142 ( .B0(n326), .B1(n298), .A0N(\reg_file[12][1] ), .A1N(n298), 
        .Y(n67) );
  OAI2BB2X1M U143 ( .B0(n325), .B1(n21), .A0N(\reg_file[12][2] ), .A1N(n298), 
        .Y(n68) );
  OAI2BB2X1M U144 ( .B0(n324), .B1(n21), .A0N(\reg_file[12][3] ), .A1N(n298), 
        .Y(n69) );
  OAI2BB2X1M U145 ( .B0(n323), .B1(n21), .A0N(\reg_file[12][4] ), .A1N(n298), 
        .Y(n70) );
  OAI2BB2X1M U146 ( .B0(n322), .B1(n298), .A0N(\reg_file[12][5] ), .A1N(n298), 
        .Y(n71) );
  OAI2BB2X1M U147 ( .B0(n321), .B1(n21), .A0N(\reg_file[12][6] ), .A1N(n298), 
        .Y(n72) );
  OAI2BB2X1M U148 ( .B0(n320), .B1(n21), .A0N(\reg_file[12][7] ), .A1N(n298), 
        .Y(n73) );
  OAI2BB2X1M U149 ( .B0(n327), .B1(n297), .A0N(\reg_file[11][0] ), .A1N(n297), 
        .Y(n74) );
  OAI2BB2X1M U150 ( .B0(n326), .B1(n297), .A0N(\reg_file[11][1] ), .A1N(n297), 
        .Y(n75) );
  OAI2BB2X1M U151 ( .B0(n325), .B1(n22), .A0N(\reg_file[11][2] ), .A1N(n297), 
        .Y(n76) );
  OAI2BB2X1M U152 ( .B0(n324), .B1(n22), .A0N(\reg_file[11][3] ), .A1N(n297), 
        .Y(n77) );
  OAI2BB2X1M U153 ( .B0(n323), .B1(n22), .A0N(\reg_file[11][4] ), .A1N(n297), 
        .Y(n78) );
  OAI2BB2X1M U154 ( .B0(n322), .B1(n297), .A0N(\reg_file[11][5] ), .A1N(n297), 
        .Y(n79) );
  OAI2BB2X1M U155 ( .B0(n321), .B1(n22), .A0N(\reg_file[11][6] ), .A1N(n297), 
        .Y(n80) );
  OAI2BB2X1M U156 ( .B0(n320), .B1(n22), .A0N(\reg_file[11][7] ), .A1N(n297), 
        .Y(n81) );
  OAI2BB2X1M U157 ( .B0(n327), .B1(n296), .A0N(\reg_file[10][0] ), .A1N(n296), 
        .Y(n82) );
  OAI2BB2X1M U158 ( .B0(n326), .B1(n296), .A0N(\reg_file[10][1] ), .A1N(n296), 
        .Y(n83) );
  OAI2BB2X1M U159 ( .B0(n325), .B1(n24), .A0N(\reg_file[10][2] ), .A1N(n296), 
        .Y(n84) );
  OAI2BB2X1M U160 ( .B0(n324), .B1(n24), .A0N(\reg_file[10][3] ), .A1N(n296), 
        .Y(n85) );
  OAI2BB2X1M U161 ( .B0(n323), .B1(n24), .A0N(\reg_file[10][4] ), .A1N(n296), 
        .Y(n86) );
  OAI2BB2X1M U162 ( .B0(n322), .B1(n296), .A0N(\reg_file[10][5] ), .A1N(n296), 
        .Y(n87) );
  OAI2BB2X1M U163 ( .B0(n321), .B1(n24), .A0N(\reg_file[10][6] ), .A1N(n296), 
        .Y(n88) );
  OAI2BB2X1M U164 ( .B0(n320), .B1(n24), .A0N(\reg_file[10][7] ), .A1N(n296), 
        .Y(n89) );
  OAI2BB2X1M U165 ( .B0(n327), .B1(n295), .A0N(\reg_file[9][0] ), .A1N(n295), 
        .Y(n90) );
  OAI2BB2X1M U166 ( .B0(n326), .B1(n295), .A0N(\reg_file[9][1] ), .A1N(n295), 
        .Y(n91) );
  OAI2BB2X1M U167 ( .B0(n325), .B1(n25), .A0N(\reg_file[9][2] ), .A1N(n295), 
        .Y(n92) );
  OAI2BB2X1M U168 ( .B0(n324), .B1(n25), .A0N(\reg_file[9][3] ), .A1N(n295), 
        .Y(n93) );
  OAI2BB2X1M U169 ( .B0(n323), .B1(n25), .A0N(\reg_file[9][4] ), .A1N(n295), 
        .Y(n94) );
  OAI2BB2X1M U170 ( .B0(n322), .B1(n295), .A0N(\reg_file[9][5] ), .A1N(n295), 
        .Y(n95) );
  OAI2BB2X1M U171 ( .B0(n321), .B1(n25), .A0N(\reg_file[9][6] ), .A1N(n295), 
        .Y(n96) );
  OAI2BB2X1M U172 ( .B0(n320), .B1(n25), .A0N(\reg_file[9][7] ), .A1N(n295), 
        .Y(n97) );
  OAI2BB2X1M U173 ( .B0(n327), .B1(n294), .A0N(\reg_file[8][0] ), .A1N(n294), 
        .Y(n98) );
  OAI2BB2X1M U174 ( .B0(n326), .B1(n294), .A0N(\reg_file[8][1] ), .A1N(n294), 
        .Y(n99) );
  OAI2BB2X1M U175 ( .B0(n325), .B1(n28), .A0N(\reg_file[8][2] ), .A1N(n294), 
        .Y(n100) );
  OAI2BB2X1M U176 ( .B0(n324), .B1(n28), .A0N(\reg_file[8][3] ), .A1N(n294), 
        .Y(n101) );
  OAI2BB2X1M U177 ( .B0(n323), .B1(n28), .A0N(\reg_file[8][4] ), .A1N(n294), 
        .Y(n102) );
  OAI2BB2X1M U178 ( .B0(n322), .B1(n294), .A0N(\reg_file[8][5] ), .A1N(n294), 
        .Y(n103) );
  OAI2BB2X1M U179 ( .B0(n321), .B1(n28), .A0N(\reg_file[8][6] ), .A1N(n294), 
        .Y(n104) );
  OAI2BB2X1M U180 ( .B0(n320), .B1(n28), .A0N(\reg_file[8][7] ), .A1N(n294), 
        .Y(n105) );
  OAI2BB2X1M U181 ( .B0(n327), .B1(n293), .A0N(\reg_file[7][0] ), .A1N(n293), 
        .Y(n106) );
  OAI2BB2X1M U182 ( .B0(n326), .B1(n30), .A0N(\reg_file[7][1] ), .A1N(n293), 
        .Y(n107) );
  OAI2BB2X1M U183 ( .B0(n325), .B1(n30), .A0N(\reg_file[7][2] ), .A1N(n293), 
        .Y(n108) );
  OAI2BB2X1M U184 ( .B0(n324), .B1(n30), .A0N(\reg_file[7][3] ), .A1N(n293), 
        .Y(n109) );
  OAI2BB2X1M U185 ( .B0(n323), .B1(n30), .A0N(\reg_file[7][4] ), .A1N(n293), 
        .Y(n110) );
  OAI2BB2X1M U186 ( .B0(n322), .B1(n293), .A0N(\reg_file[7][5] ), .A1N(n293), 
        .Y(n111) );
  OAI2BB2X1M U187 ( .B0(n321), .B1(n30), .A0N(\reg_file[7][6] ), .A1N(n293), 
        .Y(n112) );
  OAI2BB2X1M U188 ( .B0(n320), .B1(n30), .A0N(\reg_file[7][7] ), .A1N(n293), 
        .Y(n113) );
  OAI2BB2X1M U189 ( .B0(n327), .B1(n292), .A0N(\reg_file[6][0] ), .A1N(n292), 
        .Y(n114) );
  OAI2BB2X1M U190 ( .B0(n326), .B1(n32), .A0N(\reg_file[6][1] ), .A1N(n292), 
        .Y(n115) );
  OAI2BB2X1M U191 ( .B0(n325), .B1(n32), .A0N(\reg_file[6][2] ), .A1N(n292), 
        .Y(n116) );
  OAI2BB2X1M U192 ( .B0(n324), .B1(n32), .A0N(\reg_file[6][3] ), .A1N(n292), 
        .Y(n117) );
  OAI2BB2X1M U193 ( .B0(n323), .B1(n32), .A0N(\reg_file[6][4] ), .A1N(n292), 
        .Y(n118) );
  OAI2BB2X1M U194 ( .B0(n322), .B1(n292), .A0N(\reg_file[6][5] ), .A1N(n292), 
        .Y(n119) );
  OAI2BB2X1M U195 ( .B0(n321), .B1(n32), .A0N(\reg_file[6][6] ), .A1N(n292), 
        .Y(n120) );
  OAI2BB2X1M U196 ( .B0(n320), .B1(n32), .A0N(\reg_file[6][7] ), .A1N(n292), 
        .Y(n121) );
  OAI2BB2X1M U197 ( .B0(n327), .B1(n291), .A0N(\reg_file[5][0] ), .A1N(n291), 
        .Y(n122) );
  OAI2BB2X1M U198 ( .B0(n326), .B1(n34), .A0N(\reg_file[5][1] ), .A1N(n291), 
        .Y(n123) );
  OAI2BB2X1M U199 ( .B0(n325), .B1(n34), .A0N(\reg_file[5][2] ), .A1N(n291), 
        .Y(n124) );
  OAI2BB2X1M U200 ( .B0(n324), .B1(n34), .A0N(\reg_file[5][3] ), .A1N(n291), 
        .Y(n125) );
  OAI2BB2X1M U201 ( .B0(n323), .B1(n34), .A0N(\reg_file[5][4] ), .A1N(n291), 
        .Y(n126) );
  OAI2BB2X1M U202 ( .B0(n322), .B1(n291), .A0N(\reg_file[5][5] ), .A1N(n291), 
        .Y(n127) );
  OAI2BB2X1M U203 ( .B0(n321), .B1(n34), .A0N(\reg_file[5][6] ), .A1N(n291), 
        .Y(n128) );
  OAI2BB2X1M U204 ( .B0(n320), .B1(n34), .A0N(\reg_file[5][7] ), .A1N(n291), 
        .Y(n129) );
  OAI2BB2X1M U205 ( .B0(n327), .B1(n290), .A0N(\reg_file[4][0] ), .A1N(n290), 
        .Y(n130) );
  OAI2BB2X1M U206 ( .B0(n326), .B1(n35), .A0N(\reg_file[4][1] ), .A1N(n290), 
        .Y(n131) );
  OAI2BB2X1M U207 ( .B0(n325), .B1(n35), .A0N(\reg_file[4][2] ), .A1N(n290), 
        .Y(n132) );
  OAI2BB2X1M U208 ( .B0(n324), .B1(n35), .A0N(\reg_file[4][3] ), .A1N(n290), 
        .Y(n133) );
  OAI2BB2X1M U209 ( .B0(n323), .B1(n35), .A0N(\reg_file[4][4] ), .A1N(n290), 
        .Y(n134) );
  OAI2BB2X1M U210 ( .B0(n322), .B1(n290), .A0N(\reg_file[4][5] ), .A1N(n290), 
        .Y(n135) );
  OAI2BB2X1M U211 ( .B0(n321), .B1(n35), .A0N(\reg_file[4][6] ), .A1N(n290), 
        .Y(n136) );
  OAI2BB2X1M U212 ( .B0(n320), .B1(n35), .A0N(\reg_file[4][7] ), .A1N(n290), 
        .Y(n137) );
  OAI2BB2X1M U213 ( .B0(n327), .B1(n289), .A0N(REG3[0]), .A1N(n289), .Y(n138)
         );
  OAI2BB2X1M U214 ( .B0(n326), .B1(n289), .A0N(REG3[1]), .A1N(n289), .Y(n139)
         );
  OAI2BB2X1M U215 ( .B0(n325), .B1(n36), .A0N(REG3[2]), .A1N(n289), .Y(n140)
         );
  OAI2BB2X1M U216 ( .B0(n324), .B1(n36), .A0N(REG3[3]), .A1N(n289), .Y(n141)
         );
  OAI2BB2X1M U217 ( .B0(n323), .B1(n36), .A0N(REG3[4]), .A1N(n289), .Y(n142)
         );
  OAI2BB2X1M U218 ( .B0(n321), .B1(n36), .A0N(REG3[6]), .A1N(n289), .Y(n144)
         );
  OAI2BB2X1M U219 ( .B0(n320), .B1(n36), .A0N(REG3[7]), .A1N(n289), .Y(n145)
         );
  OAI2BB2X1M U220 ( .B0(n326), .B1(n37), .A0N(REG2[1]), .A1N(n288), .Y(n147)
         );
  OAI2BB2X1M U221 ( .B0(n325), .B1(n288), .A0N(REG2[2]), .A1N(n288), .Y(n148)
         );
  OAI2BB2X1M U222 ( .B0(n324), .B1(n37), .A0N(REG2[3]), .A1N(n288), .Y(n149)
         );
  OAI2BB2X1M U223 ( .B0(n323), .B1(n37), .A0N(REG2[4]), .A1N(n288), .Y(n150)
         );
  OAI2BB2X1M U224 ( .B0(n322), .B1(n37), .A0N(REG2[5]), .A1N(n288), .Y(n151)
         );
  OAI2BB2X1M U225 ( .B0(n321), .B1(n37), .A0N(REG2[6]), .A1N(n288), .Y(n152)
         );
  OAI2BB2X1M U226 ( .B0(n322), .B1(n38), .A0N(REG1[5]), .A1N(n287), .Y(n159)
         );
  OAI2BB2X1M U227 ( .B0(n320), .B1(n38), .A0N(REG1[7]), .A1N(n287), .Y(n161)
         );
  OAI2BB2X1M U228 ( .B0(n327), .B1(n286), .A0N(REG0[0]), .A1N(n286), .Y(n162)
         );
  OAI2BB2X1M U229 ( .B0(n326), .B1(n40), .A0N(REG0[1]), .A1N(n286), .Y(n163)
         );
  OAI2BB2X1M U230 ( .B0(n325), .B1(n40), .A0N(REG0[2]), .A1N(n286), .Y(n164)
         );
  OAI2BB2X1M U231 ( .B0(n324), .B1(n40), .A0N(REG0[3]), .A1N(n286), .Y(n165)
         );
  OAI2BB2X1M U232 ( .B0(n323), .B1(n40), .A0N(REG0[4]), .A1N(n286), .Y(n166)
         );
  OAI2BB2X1M U233 ( .B0(n322), .B1(n40), .A0N(REG0[5]), .A1N(n286), .Y(n167)
         );
  OAI2BB2X1M U234 ( .B0(n322), .B1(n36), .A0N(REG3[5]), .A1N(n289), .Y(n143)
         );
  OAI2BB2X1M U235 ( .B0(n327), .B1(n288), .A0N(REG2[0]), .A1N(n288), .Y(n146)
         );
  OAI2BB2X1M U236 ( .B0(n320), .B1(n37), .A0N(REG2[7]), .A1N(n288), .Y(n153)
         );
  NOR2X1M U237 ( .A(n270), .B(N11), .Y(n259) );
  AOI22X1M U238 ( .A0(\reg_file[10][0] ), .A1(n278), .B0(\reg_file[11][0] ), 
        .B1(n275), .Y(n2) );
  NOR2X1M U239 ( .A(N11), .B(N12), .Y(n261) );
  AOI22X1M U240 ( .A0(\reg_file[8][0] ), .A1(n285), .B0(\reg_file[9][0] ), 
        .B1(n282), .Y(n1) );
  AOI21X1M U241 ( .A0(n2), .A1(n1), .B0(n249), .Y(n12) );
  AOI22X1M U242 ( .A0(\reg_file[14][0] ), .A1(n278), .B0(\reg_file[15][0] ), 
        .B1(n275), .Y(n4) );
  AOI22X1M U243 ( .A0(\reg_file[12][0] ), .A1(n285), .B0(\reg_file[13][0] ), 
        .B1(n282), .Y(n3) );
  CLKNAND2X2M U244 ( .A(N14), .B(N13), .Y(n252) );
  AOI21X1M U245 ( .A0(n4), .A1(n3), .B0(n252), .Y(n11) );
  AOI22X1M U246 ( .A0(REG2[0]), .A1(n278), .B0(REG3[0]), .B1(n275), .Y(n6) );
  CLKNAND2X2M U247 ( .A(n317), .B(n269), .Y(n255) );
  AOI21X1M U248 ( .A0(n6), .A1(n5), .B0(n255), .Y(n10) );
  AOI22X1M U249 ( .A0(\reg_file[6][0] ), .A1(n278), .B0(\reg_file[7][0] ), 
        .B1(n275), .Y(n8) );
  AOI22X1M U250 ( .A0(\reg_file[4][0] ), .A1(n285), .B0(\reg_file[5][0] ), 
        .B1(n282), .Y(n7) );
  CLKNAND2X2M U251 ( .A(N13), .B(n269), .Y(n262) );
  AOI21X1M U252 ( .A0(n8), .A1(n7), .B0(n262), .Y(n9) );
  OR4X1M U253 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N43) );
  AOI22X1M U254 ( .A0(\reg_file[10][1] ), .A1(n278), .B0(\reg_file[11][1] ), 
        .B1(n275), .Y(n178) );
  AOI22X1M U255 ( .A0(\reg_file[8][1] ), .A1(n285), .B0(\reg_file[9][1] ), 
        .B1(n282), .Y(n13) );
  AOI21X1M U256 ( .A0(n178), .A1(n13), .B0(n249), .Y(n188) );
  AOI22X1M U257 ( .A0(\reg_file[14][1] ), .A1(n278), .B0(\reg_file[15][1] ), 
        .B1(n275), .Y(n180) );
  AOI22X1M U258 ( .A0(\reg_file[12][1] ), .A1(n285), .B0(\reg_file[13][1] ), 
        .B1(n282), .Y(n179) );
  AOI21X1M U259 ( .A0(n180), .A1(n179), .B0(n252), .Y(n187) );
  AOI22X1M U260 ( .A0(REG2[1]), .A1(n278), .B0(REG3[1]), .B1(n275), .Y(n182)
         );
  AOI21X1M U261 ( .A0(n182), .A1(n181), .B0(n255), .Y(n186) );
  AOI22X1M U262 ( .A0(\reg_file[6][1] ), .A1(n278), .B0(\reg_file[7][1] ), 
        .B1(n275), .Y(n184) );
  AOI22X1M U263 ( .A0(\reg_file[4][1] ), .A1(n285), .B0(\reg_file[5][1] ), 
        .B1(n282), .Y(n183) );
  AOI21X1M U264 ( .A0(n184), .A1(n183), .B0(n262), .Y(n185) );
  OR4X1M U265 ( .A(n188), .B(n187), .C(n186), .D(n185), .Y(N42) );
  AOI22X1M U266 ( .A0(\reg_file[10][2] ), .A1(n278), .B0(\reg_file[11][2] ), 
        .B1(n275), .Y(n190) );
  AOI22X1M U267 ( .A0(\reg_file[8][2] ), .A1(n285), .B0(\reg_file[9][2] ), 
        .B1(n282), .Y(n189) );
  AOI21X1M U268 ( .A0(n190), .A1(n189), .B0(n249), .Y(n200) );
  AOI22X1M U269 ( .A0(\reg_file[14][2] ), .A1(n278), .B0(\reg_file[15][2] ), 
        .B1(n275), .Y(n192) );
  AOI22X1M U270 ( .A0(\reg_file[12][2] ), .A1(n285), .B0(\reg_file[13][2] ), 
        .B1(n282), .Y(n191) );
  AOI21X1M U271 ( .A0(n192), .A1(n191), .B0(n252), .Y(n199) );
  AOI22X1M U272 ( .A0(REG2[2]), .A1(n278), .B0(REG3[2]), .B1(n275), .Y(n194)
         );
  AOI21X1M U273 ( .A0(n194), .A1(n193), .B0(n255), .Y(n198) );
  AOI22X1M U274 ( .A0(\reg_file[6][2] ), .A1(n278), .B0(\reg_file[7][2] ), 
        .B1(n275), .Y(n196) );
  AOI22X1M U275 ( .A0(\reg_file[4][2] ), .A1(n285), .B0(\reg_file[5][2] ), 
        .B1(n282), .Y(n195) );
  AOI21X1M U276 ( .A0(n196), .A1(n195), .B0(n262), .Y(n197) );
  OR4X1M U277 ( .A(n200), .B(n199), .C(n198), .D(n197), .Y(N41) );
  AOI22X1M U278 ( .A0(\reg_file[10][3] ), .A1(n277), .B0(\reg_file[11][3] ), 
        .B1(n274), .Y(n202) );
  AOI22X1M U279 ( .A0(\reg_file[8][3] ), .A1(n284), .B0(\reg_file[9][3] ), 
        .B1(n281), .Y(n201) );
  AOI21X1M U280 ( .A0(n202), .A1(n201), .B0(n249), .Y(n212) );
  AOI22X1M U281 ( .A0(\reg_file[14][3] ), .A1(n277), .B0(\reg_file[15][3] ), 
        .B1(n274), .Y(n204) );
  AOI22X1M U282 ( .A0(\reg_file[12][3] ), .A1(n284), .B0(\reg_file[13][3] ), 
        .B1(n281), .Y(n203) );
  AOI21X1M U283 ( .A0(n204), .A1(n203), .B0(n252), .Y(n211) );
  AOI22X1M U284 ( .A0(REG2[3]), .A1(n277), .B0(REG3[3]), .B1(n274), .Y(n206)
         );
  AOI21X1M U285 ( .A0(n206), .A1(n205), .B0(n255), .Y(n210) );
  AOI22X1M U286 ( .A0(\reg_file[6][3] ), .A1(n277), .B0(\reg_file[7][3] ), 
        .B1(n274), .Y(n208) );
  AOI22X1M U287 ( .A0(\reg_file[4][3] ), .A1(n284), .B0(\reg_file[5][3] ), 
        .B1(n281), .Y(n207) );
  AOI21X1M U288 ( .A0(n208), .A1(n207), .B0(n262), .Y(n209) );
  OR4X1M U289 ( .A(n212), .B(n211), .C(n210), .D(n209), .Y(N40) );
  AOI22X1M U290 ( .A0(\reg_file[10][4] ), .A1(n277), .B0(\reg_file[11][4] ), 
        .B1(n274), .Y(n214) );
  AOI22X1M U291 ( .A0(\reg_file[8][4] ), .A1(n284), .B0(\reg_file[9][4] ), 
        .B1(n281), .Y(n213) );
  AOI21X1M U292 ( .A0(n214), .A1(n213), .B0(n249), .Y(n224) );
  AOI22X1M U293 ( .A0(\reg_file[14][4] ), .A1(n277), .B0(\reg_file[15][4] ), 
        .B1(n274), .Y(n216) );
  AOI22X1M U294 ( .A0(\reg_file[12][4] ), .A1(n284), .B0(\reg_file[13][4] ), 
        .B1(n281), .Y(n215) );
  AOI21X1M U295 ( .A0(n216), .A1(n215), .B0(n252), .Y(n223) );
  AOI22X1M U296 ( .A0(REG2[4]), .A1(n277), .B0(REG3[4]), .B1(n274), .Y(n218)
         );
  AOI21X1M U297 ( .A0(n218), .A1(n217), .B0(n255), .Y(n222) );
  AOI22X1M U298 ( .A0(\reg_file[6][4] ), .A1(n277), .B0(\reg_file[7][4] ), 
        .B1(n274), .Y(n220) );
  AOI22X1M U299 ( .A0(\reg_file[4][4] ), .A1(n284), .B0(\reg_file[5][4] ), 
        .B1(n281), .Y(n219) );
  AOI21X1M U300 ( .A0(n220), .A1(n219), .B0(n262), .Y(n221) );
  OR4X1M U301 ( .A(n224), .B(n223), .C(n222), .D(n221), .Y(N39) );
  AOI22X1M U302 ( .A0(\reg_file[10][5] ), .A1(n277), .B0(\reg_file[11][5] ), 
        .B1(n274), .Y(n226) );
  AOI22X1M U303 ( .A0(\reg_file[8][5] ), .A1(n284), .B0(\reg_file[9][5] ), 
        .B1(n281), .Y(n225) );
  AOI21X1M U304 ( .A0(n226), .A1(n225), .B0(n249), .Y(n236) );
  AOI22X1M U305 ( .A0(\reg_file[14][5] ), .A1(n277), .B0(\reg_file[15][5] ), 
        .B1(n274), .Y(n228) );
  AOI22X1M U306 ( .A0(\reg_file[12][5] ), .A1(n284), .B0(\reg_file[13][5] ), 
        .B1(n281), .Y(n227) );
  AOI21X1M U307 ( .A0(n228), .A1(n227), .B0(n252), .Y(n235) );
  AOI22X1M U308 ( .A0(REG2[5]), .A1(n277), .B0(REG3[5]), .B1(n274), .Y(n230)
         );
  AOI22X1M U309 ( .A0(REG0[5]), .A1(n284), .B0(REG1[5]), .B1(n281), .Y(n229)
         );
  AOI21X1M U310 ( .A0(n230), .A1(n229), .B0(n255), .Y(n234) );
  AOI22X1M U311 ( .A0(\reg_file[6][5] ), .A1(n277), .B0(\reg_file[7][5] ), 
        .B1(n274), .Y(n232) );
  AOI22X1M U312 ( .A0(\reg_file[4][5] ), .A1(n284), .B0(\reg_file[5][5] ), 
        .B1(n281), .Y(n231) );
  AOI21X1M U313 ( .A0(n232), .A1(n231), .B0(n262), .Y(n233) );
  OR4X1M U314 ( .A(n236), .B(n235), .C(n234), .D(n233), .Y(N38) );
  AOI22X1M U315 ( .A0(\reg_file[10][6] ), .A1(n276), .B0(\reg_file[11][6] ), 
        .B1(n273), .Y(n238) );
  AOI22X1M U316 ( .A0(\reg_file[8][6] ), .A1(n283), .B0(\reg_file[9][6] ), 
        .B1(n280), .Y(n237) );
  AOI21X1M U317 ( .A0(n238), .A1(n237), .B0(n249), .Y(n248) );
  AOI22X1M U318 ( .A0(\reg_file[14][6] ), .A1(n276), .B0(\reg_file[15][6] ), 
        .B1(n258), .Y(n240) );
  AOI22X1M U319 ( .A0(\reg_file[12][6] ), .A1(n283), .B0(\reg_file[13][6] ), 
        .B1(n260), .Y(n239) );
  AOI21X1M U320 ( .A0(n240), .A1(n239), .B0(n252), .Y(n247) );
  AOI22X1M U321 ( .A0(REG2[6]), .A1(n276), .B0(REG3[6]), .B1(n273), .Y(n242)
         );
  AOI21X1M U322 ( .A0(n242), .A1(n241), .B0(n255), .Y(n246) );
  AOI22X1M U323 ( .A0(\reg_file[6][6] ), .A1(n276), .B0(\reg_file[7][6] ), 
        .B1(n273), .Y(n244) );
  AOI22X1M U324 ( .A0(\reg_file[4][6] ), .A1(n283), .B0(\reg_file[5][6] ), 
        .B1(n260), .Y(n243) );
  AOI21X1M U325 ( .A0(n244), .A1(n243), .B0(n262), .Y(n245) );
  OR4X1M U326 ( .A(n248), .B(n247), .C(n246), .D(n245), .Y(N37) );
  AOI22X1M U327 ( .A0(\reg_file[10][7] ), .A1(n276), .B0(\reg_file[11][7] ), 
        .B1(n258), .Y(n251) );
  AOI22X1M U328 ( .A0(\reg_file[8][7] ), .A1(n283), .B0(\reg_file[9][7] ), 
        .B1(n260), .Y(n250) );
  AOI21X1M U329 ( .A0(n251), .A1(n250), .B0(n249), .Y(n268) );
  AOI22X1M U330 ( .A0(\reg_file[14][7] ), .A1(n276), .B0(\reg_file[15][7] ), 
        .B1(n273), .Y(n254) );
  AOI22X1M U331 ( .A0(\reg_file[12][7] ), .A1(n283), .B0(\reg_file[13][7] ), 
        .B1(n280), .Y(n253) );
  AOI22X1M U332 ( .A0(REG2[7]), .A1(n276), .B0(REG3[7]), .B1(n258), .Y(n257)
         );
  AOI21X1M U333 ( .A0(n257), .A1(n256), .B0(n255), .Y(n266) );
  AOI22X1M U334 ( .A0(\reg_file[6][7] ), .A1(n276), .B0(\reg_file[7][7] ), 
        .B1(n273), .Y(n264) );
  AOI22X1M U335 ( .A0(\reg_file[4][7] ), .A1(n283), .B0(\reg_file[5][7] ), 
        .B1(n280), .Y(n263) );
  AOI21X1M U336 ( .A0(n264), .A1(n263), .B0(n262), .Y(n265) );
  OR4X1M U337 ( .A(n268), .B(n267), .C(n266), .D(n265), .Y(N36) );
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n16, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
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
         \u_div/PartRem[7][1] , n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15;

  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n8), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n8), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n9), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n10), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n8), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n11), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n9), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n10), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n11), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n10), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n11), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n10), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n11), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n11), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n7), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n9), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n11), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n6), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n7), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n8), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n6), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n9), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n9), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n7), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n10), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n10), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n11), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n5), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  AND2X4M U1 ( .A(\u_div/CryTmp[3][5] ), .B(n2), .Y(quotient[3]) );
  AND4X4M U2 ( .A(\u_div/CryTmp[7][1] ), .B(n13), .C(n11), .D(n10), .Y(
        quotient[7]) );
  AND2X2M U3 ( .A(n14), .B(n9), .Y(n13) );
  CLKAND2X6M U4 ( .A(\u_div/CryTmp[5][3] ), .B(n13), .Y(quotient[5]) );
  INVX4M U5 ( .A(b[0]), .Y(n12) );
  INVX2M U6 ( .A(b[4]), .Y(n8) );
  AND2X8M U7 ( .A(\u_div/CryTmp[1][7] ), .B(n5), .Y(quotient[1]) );
  INVX2M U8 ( .A(b[5]), .Y(n7) );
  MX2X2M U9 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  AND2X2M U10 ( .A(\u_div/CryTmp[6][2] ), .B(n1), .Y(quotient[6]) );
  INVX2M U11 ( .A(b[3]), .Y(n9) );
  AND2X1M U12 ( .A(n13), .B(n10), .Y(n1) );
  INVX2M U13 ( .A(b[2]), .Y(n10) );
  MX2X1M U14 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  NOR2X12M U15 ( .A(b[6]), .B(b[7]), .Y(n15) );
  MX2XLM U16 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  OR2X2M U17 ( .A(n12), .B(a[4]), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U18 ( .A(n12), .B(a[3]), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U19 ( .A(n12), .B(a[2]), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U20 ( .A(n12), .B(a[1]), .Y(\u_div/CryTmp[1][1] ) );
  OR2X2M U21 ( .A(n12), .B(a[6]), .Y(\u_div/CryTmp[6][1] ) );
  OR2X2M U22 ( .A(n12), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  AND2X2M U23 ( .A(\u_div/CryTmp[2][6] ), .B(n15), .Y(quotient[2]) );
  MX2XLM U24 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2XLM U25 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2XLM U26 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2XLM U27 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2XLM U28 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2XLM U29 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  INVX2M U30 ( .A(b[1]), .Y(n11) );
  MX2X2M U31 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  AND2X1M U32 ( .A(n7), .B(n15), .Y(n2) );
  MX2X1M U33 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  OR2X2M U34 ( .A(n12), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U35 ( .A(n12), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U36 ( .A(n12), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U37 ( .A(n12), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U38 ( .A(n12), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U39 ( .A(n12), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U40 ( .A(n12), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U41 ( .A(n12), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U42 ( .A(b[0]), .B(n4), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U43 ( .A(b[6]), .Y(n6) );
  INVX2M U44 ( .A(a[0]), .Y(n4) );
  INVX2M U45 ( .A(b[7]), .Y(n5) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U49 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U54 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U57 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n16), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND2X1M U63 ( .A(\u_div/CryTmp[4][4] ), .B(n14), .Y(quotient[4]) );
  AND3X1M U64 ( .A(n15), .B(n8), .C(n7), .Y(n14) );
  AND2X1M U65 ( .A(\u_div/CryTmp[2][6] ), .B(n15), .Y(n16) );
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

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
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
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
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

  Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , 
        \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , 
        \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n12, 
        n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
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
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
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
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
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
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKINVX2M U10 ( .A(B[2]), .Y(n30) );
  CLKINVX2M U11 ( .A(B[3]), .Y(n29) );
  CLKINVX2M U12 ( .A(B[4]), .Y(n28) );
  CLKINVX2M U13 ( .A(B[0]), .Y(n32) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U16 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  AND2X2M U17 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U19 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U23 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U28 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX2M U29 ( .A(B[6]), .Y(n26) );
  INVX2M U30 ( .A(A[0]), .Y(n24) );
  INVX2M U31 ( .A(A[1]), .Y(n23) );
  CLKXOR2X2M U32 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  CLKXOR2X2M U33 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKXOR2X2M U34 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  CLKXOR2X2M U35 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  CLKXOR2X2M U36 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  INVX2M U37 ( .A(B[1]), .Y(n31) );
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
endmodule


module Alu_DATA_WIDTH8_FUN_WIDTH4 ( A, B, ALU_FUN, CLK, RST, Enalbe, ALU_OUT, 
        ALU_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enalbe;
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
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n3, n4,
         n5, n6, n7, n8, n9, n15, n17, n20, n23, n25, n26, n32, n34, n40, n46,
         n47, n57, n60, n61, n68, n69, n76, n77, n84, n85, n93, n94, n100,
         n103, n107, n108, n109, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182;

  AOI222X4M U12 ( .A0(n20), .A1(n179), .B0(B[0]), .B1(n28), .C0(N126), .C1(n29), .Y(n11) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW_div_uns_0 div_32 ( .a({n60, n57, n47, n46, n40, 
        n34, n32, n26}), .b({B[7], n3, B[5:2], n23, B[0]}), .quotient({N133, 
        N132, N131, N130, N129, N128, N127, N126}) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_sub_0 sub_26 ( .A({1'b0, n60, n57, n47, n46, 
        n40, n34, n32, n26}), .B({1'b0, B[7], n5, B[5:2], n23, B[0]}), .CI(
        1'b0), .DIFF({N109, N108, N107, N106, N105, N104, N103, N102, N101})
         );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW01_add_0 add_23 ( .A({1'b0, n60, n57, n47, n46, 
        n40, n34, n32, n26}), .B({1'b0, B[7], n4, B[5:2], n23, B[0]}), .CI(
        1'b0), .SUM({N100, N99, N98, N97, N96, N95, N94, N93, N92}) );
  Alu_DATA_WIDTH8_FUN_WIDTH4_DW02_mult_0 mult_29 ( .A({n60, n57, n47, n46, n40, 
        n34, n32, n26}), .B({B[7], n4, B[5:2], n23, B[0]}), .TC(1'b0), 
        .PRODUCT({N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, 
        N115, N114, N113, N112, N111, N110}) );
  DFFRQX2M ALU_VALID_reg ( .D(N178), .CK(CLK), .RN(n68), .Q(ALU_VALID) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n131), .CK(CLK), .RN(n61), .Q(ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n138), .CK(CLK), .RN(n61), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n137), .CK(CLK), .RN(n61), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n136), .CK(CLK), .RN(n61), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n135), .CK(CLK), .RN(n61), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n134), .CK(CLK), .RN(n61), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n133), .CK(CLK), .RN(n61), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n132), .CK(CLK), .RN(n61), .Q(ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n130), .CK(CLK), .RN(n61), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n129), .CK(CLK), .RN(n61), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n128), .CK(CLK), .RN(n61), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n127), .CK(CLK), .RN(n61), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n126), .CK(CLK), .RN(n68), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n125), .CK(CLK), .RN(n68), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(n124), .CK(CLK), .RN(n68), .Q(ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(n123), .CK(CLK), .RN(n68), .Q(ALU_OUT[0]) );
  BUFX2M U3 ( .A(n25), .Y(n3) );
  BUFX2M U4 ( .A(n25), .Y(n4) );
  BUFX2M U7 ( .A(n25), .Y(n5) );
  OAI221X1M U8 ( .A0(n179), .A1(n30), .B0(n26), .B1(n17), .C0(n31), .Y(n28) );
  AND3X2M U9 ( .A(n12), .B(n10), .C(n13), .Y(n6) );
  BUFX2M U10 ( .A(A[7]), .Y(n60) );
  NAND2X2M U11 ( .A(n11), .B(n6), .Y(n123) );
  BUFX2M U13 ( .A(B[1]), .Y(n23) );
  BUFX2M U14 ( .A(B[6]), .Y(n25) );
  AOI222XLM U15 ( .A0(N116), .A1(n15), .B0(N132), .B1(n29), .C0(n20), .C1(n174), .Y(n87) );
  BUFX4M U16 ( .A(A[6]), .Y(n57) );
  AOI222XLM U17 ( .A0(B[5]), .A1(n82), .B0(N106), .B1(n22), .C0(n83), .C1(n180), .Y(n80) );
  AOI222XLM U18 ( .A0(N114), .A1(n15), .B0(N130), .B1(n29), .C0(n20), .C1(n176), .Y(n71) );
  AOI222XLM U19 ( .A0(N117), .A1(n15), .B0(N133), .B1(n29), .C0(n20), .C1(n161), .Y(n99) );
  AOI222XLM U20 ( .A0(N115), .A1(n15), .B0(N131), .B1(n29), .C0(n20), .C1(n175), .Y(n79) );
  AOI22X1M U21 ( .A0(n171), .A1(n51), .B0(n173), .B1(n102), .Y(n49) );
  NOR3X2M U22 ( .A(n173), .B(ALU_FUN[2]), .C(n170), .Y(n51) );
  NOR3X2M U23 ( .A(n173), .B(ALU_FUN[0]), .C(n167), .Y(n18) );
  AOI222XLM U24 ( .A0(B[2]), .A1(n58), .B0(N103), .B1(n22), .C0(n59), .C1(n155), .Y(n55) );
  AOI222XLM U25 ( .A0(B[3]), .A1(n66), .B0(N104), .B1(n22), .C0(n67), .C1(n156), .Y(n64) );
  AOI222XLM U26 ( .A0(B[4]), .A1(n74), .B0(N105), .B1(n22), .C0(n75), .C1(n181), .Y(n72) );
  AOI222XLM U27 ( .A0(N108), .A1(n22), .B0(n57), .B1(n162), .C0(N99), .C1(n21), 
        .Y(n97) );
  AOI22XLM U28 ( .A0(n60), .A1(n165), .B0(ALU_OUT[7]), .B1(n167), .Y(n98) );
  AOI222XLM U29 ( .A0(N97), .A1(n21), .B0(n46), .B1(n162), .C0(n57), .C1(n14), 
        .Y(n81) );
  AOI222XLM U30 ( .A0(N98), .A1(n21), .B0(n47), .B1(n162), .C0(n60), .C1(n14), 
        .Y(n89) );
  AOI22XLM U31 ( .A0(n57), .A1(n165), .B0(ALU_OUT[6]), .B1(n167), .Y(n86) );
  INVXLM U32 ( .A(B[0]), .Y(n154) );
  INVXLM U33 ( .A(B[2]), .Y(n155) );
  INVXLM U34 ( .A(B[3]), .Y(n156) );
  NAND2BXLM U35 ( .AN(n46), .B(B[4]), .Y(n93) );
  INVXLM U36 ( .A(B[4]), .Y(n181) );
  AND2X2M U37 ( .A(n20), .B(n159), .Y(n7) );
  AND2X2M U38 ( .A(Enalbe), .B(n48), .Y(n8) );
  AND2X1M U39 ( .A(N127), .B(n29), .Y(n9) );
  NOR3X2M U40 ( .A(n7), .B(n8), .C(n9), .Y(n36) );
  BUFX2M U41 ( .A(n27), .Y(n20) );
  OAI31XLM U42 ( .A0(n49), .A1(n23), .A2(n32), .B0(n50), .Y(n48) );
  AOI222XLM U43 ( .A0(N113), .A1(n15), .B0(N129), .B1(n29), .C0(n20), .C1(n177), .Y(n63) );
  INVX2M U44 ( .A(n95), .Y(n166) );
  NOR2X2M U45 ( .A(n167), .B(n49), .Y(n95) );
  INVX2M U46 ( .A(n31), .Y(n165) );
  INVX2M U47 ( .A(n44), .Y(n162) );
  INVX4M U48 ( .A(Enalbe), .Y(n167) );
  AOI222XLM U49 ( .A0(N112), .A1(n15), .B0(N128), .B1(n29), .C0(n20), .C1(n178), .Y(n54) );
  INVX2M U50 ( .A(n42), .Y(n163) );
  NAND3BX2M U51 ( .AN(n43), .B(n18), .C(N160), .Y(n42) );
  NAND2X2M U52 ( .A(n90), .B(n173), .Y(n31) );
  NAND2X2M U53 ( .A(Enalbe), .B(n52), .Y(n30) );
  NOR3X2M U54 ( .A(n43), .B(n167), .C(n170), .Y(n90) );
  NAND2X2M U55 ( .A(n102), .B(n170), .Y(n106) );
  NOR2X2M U56 ( .A(n171), .B(n172), .Y(n102) );
  INVX2M U57 ( .A(n20), .Y(n164) );
  OAI22X1M U58 ( .A0(n179), .A1(n44), .B0(n45), .B1(n182), .Y(n41) );
  AOI21X2M U59 ( .A0(n169), .A1(n159), .B0(n165), .Y(n45) );
  OAI21X2M U60 ( .A0(n159), .A1(n17), .B0(n164), .Y(n39) );
  NAND2X2M U61 ( .A(n102), .B(n18), .Y(n44) );
  AND2X2M U62 ( .A(n114), .B(n170), .Y(n21) );
  INVX2M U63 ( .A(n17), .Y(n169) );
  BUFX2M U64 ( .A(n33), .Y(n15) );
  AND2X2M U65 ( .A(n101), .B(n171), .Y(n114) );
  INVX4M U66 ( .A(n69), .Y(n61) );
  INVX2M U67 ( .A(n69), .Y(n68) );
  AOI33X2M U68 ( .A0(n51), .A1(ALU_FUN[1]), .A2(N159), .B0(n32), .B1(n52), 
        .B2(n23), .Y(n50) );
  INVX2M U69 ( .A(n76), .Y(n158) );
  INVX2M U70 ( .A(n5), .Y(n157) );
  INVX2M U71 ( .A(n139), .Y(n160) );
  INVX2M U72 ( .A(n32), .Y(n159) );
  AND4X2M U73 ( .A(N158), .B(n172), .C(n18), .D(ALU_FUN[1]), .Y(n16) );
  AOI21X4M U74 ( .A0(N109), .A1(n22), .B0(n95), .Y(n111) );
  AOI221XLM U75 ( .A0(n60), .A1(n169), .B0(n95), .B1(n161), .C0(n20), .Y(n105)
         );
  AOI221XLM U76 ( .A0(n169), .A1(n161), .B0(n60), .B1(n168), .C0(n165), .Y(
        n104) );
  INVX2M U77 ( .A(n30), .Y(n168) );
  OAI221X1M U78 ( .A0(n26), .A1(n166), .B0(n17), .B1(n179), .C0(n164), .Y(n19)
         );
  OAI221X1M U79 ( .A0(n34), .A1(n166), .B0(n17), .B1(n178), .C0(n164), .Y(n59)
         );
  OAI221X1M U80 ( .A0(n40), .A1(n166), .B0(n17), .B1(n177), .C0(n164), .Y(n67)
         );
  OAI221X1M U81 ( .A0(n46), .A1(n166), .B0(n17), .B1(n176), .C0(n164), .Y(n75)
         );
  OAI221X1M U82 ( .A0(n47), .A1(n166), .B0(n17), .B1(n175), .C0(n164), .Y(n83)
         );
  OAI221X1M U83 ( .A0(n57), .A1(n166), .B0(n17), .B1(n174), .C0(n164), .Y(n92)
         );
  OAI221X1M U84 ( .A0(n30), .A1(n178), .B0(n34), .B1(n17), .C0(n31), .Y(n58)
         );
  OAI221X1M U85 ( .A0(n30), .A1(n177), .B0(n40), .B1(n17), .C0(n31), .Y(n66)
         );
  OAI221X1M U86 ( .A0(n30), .A1(n176), .B0(n46), .B1(n17), .C0(n31), .Y(n74)
         );
  OAI221X1M U87 ( .A0(n30), .A1(n175), .B0(n47), .B1(n17), .C0(n31), .Y(n82)
         );
  OAI221X1M U88 ( .A0(n30), .A1(n174), .B0(n57), .B1(n17), .C0(n31), .Y(n91)
         );
  NAND2X2M U89 ( .A(ALU_FUN[2]), .B(n171), .Y(n43) );
  INVX2M U90 ( .A(ALU_FUN[0]), .Y(n170) );
  INVX2M U91 ( .A(ALU_FUN[3]), .Y(n173) );
  INVX2M U92 ( .A(ALU_FUN[1]), .Y(n171) );
  OAI2BB2X1M U93 ( .B0(ALU_FUN[3]), .B1(n43), .A0N(n171), .A1N(n51), .Y(n52)
         );
  INVX2M U94 ( .A(ALU_FUN[2]), .Y(n172) );
  AND2X2M U95 ( .A(n90), .B(ALU_FUN[3]), .Y(n14) );
  NOR3X2M U96 ( .A(n167), .B(ALU_FUN[3]), .C(n106), .Y(n27) );
  AND3X2M U97 ( .A(n101), .B(ALU_FUN[0]), .C(ALU_FUN[1]), .Y(n29) );
  NOR3X2M U98 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .C(n167), .Y(n101) );
  AND2X2M U99 ( .A(n114), .B(ALU_FUN[0]), .Y(n22) );
  BUFX4M U100 ( .A(n24), .Y(n17) );
  NAND4X2M U101 ( .A(Enalbe), .B(ALU_FUN[3]), .C(n110), .D(n170), .Y(n24) );
  NOR2X2M U102 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n110) );
  NOR2X2M U103 ( .A(n122), .B(n167), .Y(N178) );
  AND4X2M U104 ( .A(n43), .B(n106), .C(ALU_FUN[2]), .D(n49), .Y(n122) );
  AND3X2M U105 ( .A(n101), .B(ALU_FUN[1]), .C(n170), .Y(n33) );
  INVX2M U106 ( .A(n60), .Y(n161) );
  INVX2M U107 ( .A(n26), .Y(n179) );
  INVX2M U108 ( .A(n57), .Y(n174) );
  INVX2M U109 ( .A(n34), .Y(n178) );
  INVX2M U110 ( .A(n40), .Y(n177) );
  INVX2M U111 ( .A(n46), .Y(n176) );
  INVX2M U112 ( .A(n47), .Y(n175) );
  INVX2M U113 ( .A(n23), .Y(n182) );
  INVX2M U114 ( .A(RST), .Y(n69) );
  AOI222X1M U115 ( .A0(ALU_OUT[0]), .A1(n167), .B0(N110), .B1(n33), .C0(n165), 
        .C1(n26), .Y(n10) );
  AOI222X1M U116 ( .A0(n19), .A1(n154), .B0(N92), .B1(n21), .C0(N101), .C1(n22), .Y(n12) );
  AOI211X2M U117 ( .A0(n32), .A1(n14), .B0(n163), .C0(n16), .Y(n13) );
  NAND4X2M U118 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n124) );
  AOI222X1M U119 ( .A0(N102), .A1(n22), .B0(n34), .B1(n14), .C0(N93), .C1(n21), 
        .Y(n37) );
  AOI222X1M U120 ( .A0(ALU_OUT[1]), .A1(n167), .B0(N111), .B1(n33), .C0(n165), 
        .C1(n32), .Y(n35) );
  AOI211X2M U121 ( .A0(n39), .A1(n182), .B0(n41), .C0(n163), .Y(n38) );
  BUFX4M U122 ( .A(A[5]), .Y(n47) );
  NAND4X2M U123 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n125) );
  AOI222X1M U124 ( .A0(N94), .A1(n21), .B0(n162), .B1(n32), .C0(n40), .C1(n14), 
        .Y(n56) );
  AOI22X1M U125 ( .A0(n34), .A1(n165), .B0(ALU_OUT[2]), .B1(n167), .Y(n53) );
  BUFX4M U126 ( .A(A[4]), .Y(n46) );
  NAND4X2M U127 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n126) );
  AOI222X1M U128 ( .A0(N95), .A1(n21), .B0(n34), .B1(n162), .C0(n46), .C1(n14), 
        .Y(n65) );
  AOI22X1M U129 ( .A0(n40), .A1(n165), .B0(ALU_OUT[3]), .B1(n167), .Y(n62) );
  BUFX4M U130 ( .A(A[3]), .Y(n40) );
  BUFX4M U131 ( .A(A[2]), .Y(n34) );
  NAND2X2M U132 ( .A(n120), .B(n111), .Y(n137) );
  AOI22X1M U133 ( .A0(N124), .A1(n33), .B0(ALU_OUT[14]), .B1(n167), .Y(n120)
         );
  NAND4X2M U134 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n127) );
  AOI222X1M U135 ( .A0(N96), .A1(n21), .B0(n40), .B1(n162), .C0(n47), .C1(n14), 
        .Y(n73) );
  AOI22X1M U136 ( .A0(n46), .A1(n165), .B0(ALU_OUT[4]), .B1(n167), .Y(n70) );
  BUFX4M U137 ( .A(A[1]), .Y(n32) );
  NAND2X2M U138 ( .A(n121), .B(n111), .Y(n138) );
  AOI22X1M U139 ( .A0(N125), .A1(n33), .B0(ALU_OUT[15]), .B1(n167), .Y(n121)
         );
  BUFX4M U140 ( .A(A[0]), .Y(n26) );
  NAND2X2M U141 ( .A(n118), .B(n111), .Y(n135) );
  AOI22X1M U142 ( .A0(N122), .A1(n33), .B0(ALU_OUT[12]), .B1(n167), .Y(n118)
         );
  NAND2X2M U143 ( .A(n119), .B(n111), .Y(n136) );
  AOI22X1M U144 ( .A0(N123), .A1(n33), .B0(ALU_OUT[13]), .B1(n167), .Y(n119)
         );
  NAND4X2M U145 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n128) );
  AOI22X1M U146 ( .A0(n47), .A1(n165), .B0(ALU_OUT[5]), .B1(n167), .Y(n78) );
  NAND2X2M U147 ( .A(n116), .B(n111), .Y(n133) );
  AOI22X1M U148 ( .A0(N120), .A1(n33), .B0(ALU_OUT[10]), .B1(n167), .Y(n116)
         );
  NAND2X2M U149 ( .A(n117), .B(n111), .Y(n134) );
  AOI22X1M U150 ( .A0(N121), .A1(n33), .B0(ALU_OUT[11]), .B1(n167), .Y(n117)
         );
  OAI2B11X2M U151 ( .A1N(ALU_OUT[8]), .A0(Enalbe), .B0(n111), .C0(n112), .Y(
        n131) );
  AOI221XLM U152 ( .A0(N118), .A1(n15), .B0(N100), .B1(n21), .C0(n113), .Y(
        n112) );
  NOR3X2M U153 ( .A(n161), .B(n167), .C(n106), .Y(n113) );
  NAND2X2M U154 ( .A(n115), .B(n111), .Y(n132) );
  AOI22X1M U155 ( .A0(N119), .A1(n15), .B0(ALU_OUT[9]), .B1(n167), .Y(n115) );
  NAND4BX1M U156 ( .AN(n96), .B(n97), .C(n98), .D(n99), .Y(n130) );
  OAI2B2X1M U157 ( .A1N(B[7]), .A0(n104), .B0(B[7]), .B1(n105), .Y(n96) );
  NAND4X2M U158 ( .A(n86), .B(n87), .C(n88), .D(n89), .Y(n129) );
  AOI222X1M U159 ( .A0(n4), .A1(n91), .B0(N107), .B1(n22), .C0(n92), .C1(n157), 
        .Y(n88) );
  INVX2M U160 ( .A(B[5]), .Y(n180) );
  NOR2X1M U161 ( .A(n161), .B(B[7]), .Y(n150) );
  NAND2BX1M U162 ( .AN(B[4]), .B(n46), .Y(n143) );
  CLKNAND2X2M U163 ( .A(n143), .B(n93), .Y(n145) );
  NOR2X1M U164 ( .A(n156), .B(n40), .Y(n140) );
  NOR2X1M U165 ( .A(n155), .B(n34), .Y(n85) );
  NOR2X1M U166 ( .A(n154), .B(n26), .Y(n76) );
  CLKNAND2X2M U167 ( .A(n34), .B(n155), .Y(n142) );
  NAND2BX1M U168 ( .AN(n85), .B(n142), .Y(n108) );
  AOI21X1M U169 ( .A0(n76), .A1(n159), .B0(n23), .Y(n77) );
  AOI211X1M U170 ( .A0(n32), .A1(n158), .B0(n108), .C0(n77), .Y(n84) );
  CLKNAND2X2M U171 ( .A(n40), .B(n156), .Y(n141) );
  OAI31X1M U172 ( .A0(n140), .A1(n85), .A2(n84), .B0(n141), .Y(n94) );
  NAND2BX1M U173 ( .AN(n47), .B(B[5]), .Y(n148) );
  OAI211X1M U174 ( .A0(n145), .A1(n94), .B0(n93), .C0(n148), .Y(n100) );
  NAND2BX1M U175 ( .AN(B[5]), .B(n47), .Y(n144) );
  XNOR2X1M U176 ( .A(n57), .B(n4), .Y(n147) );
  AOI32X1M U177 ( .A0(n100), .A1(n144), .A2(n147), .B0(n5), .B1(n174), .Y(n103) );
  CLKNAND2X2M U178 ( .A(B[7]), .B(n161), .Y(n151) );
  OAI21X1M U179 ( .A0(n150), .A1(n103), .B0(n151), .Y(N160) );
  CLKNAND2X2M U180 ( .A(n26), .B(n154), .Y(n109) );
  OA21X1M U181 ( .A0(n109), .A1(n159), .B0(n23), .Y(n107) );
  AOI211X1M U182 ( .A0(n109), .A1(n159), .B0(n108), .C0(n107), .Y(n139) );
  AOI31X1M U183 ( .A0(n160), .A1(n142), .A2(n141), .B0(n140), .Y(n146) );
  OAI2B11X1M U184 ( .A1N(n146), .A0(n145), .B0(n144), .C0(n143), .Y(n149) );
  AOI32X1M U185 ( .A0(n149), .A1(n148), .A2(n147), .B0(n57), .B1(n157), .Y(
        n152) );
  AOI2B1X1M U186 ( .A1N(n152), .A0(n151), .B0(n150), .Y(n153) );
  CLKINVX1M U187 ( .A(n153), .Y(N159) );
  NOR2X1M U188 ( .A(N160), .B(N159), .Y(N158) );
endmodule


module SYS_CTRL_DATA_WIDTH8_ADDR_BUS4_FUN_WIDTH4 ( CLK, RST, ALU_OUT, 
        OUT_VALID, RX_P_Data, RX_D_VLD, Rd_Data, RdData_Valid, FIFO_FULL, 
        ALU_EN, ALU_FUN, CLK_EN, Address, WrEN, RdEN, WrData, TX_P_Data, 
        TX_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] Rd_Data;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_Data;
  input CLK, RST, OUT_VALID, RX_D_VLD, RdData_Valid, FIFO_FULL;
  output ALU_EN, CLK_EN, WrEN, RdEN, TX_D_VLD, clk_div_en;
  wire   n24, n25, n26, n27, n36, n37, n38, n39, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n28,
         n29, n30, n31, n33, n34, n35, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n170, n171, n172, n173, n174, n175;
  wire   [3:0] current_state;
  wire   [7:0] data_reg;
  wire   [15:0] result_reg;

  AOI211X4M U74 ( .A0(n41), .A1(n3), .B0(n67), .C0(n107), .Y(n85) );
  DFFRQX2M \result_reg_reg[14]  ( .D(n150), .CK(CLK), .RN(n7), .Q(
        result_reg[14]) );
  DFFRQX2M \result_reg_reg[13]  ( .D(n151), .CK(CLK), .RN(n7), .Q(
        result_reg[13]) );
  DFFRQX2M \result_reg_reg[12]  ( .D(n152), .CK(CLK), .RN(n7), .Q(
        result_reg[12]) );
  DFFRQX2M \result_reg_reg[11]  ( .D(n153), .CK(CLK), .RN(n7), .Q(
        result_reg[11]) );
  DFFRQX2M \result_reg_reg[10]  ( .D(n154), .CK(CLK), .RN(n7), .Q(
        result_reg[10]) );
  DFFRQX2M \result_reg_reg[9]  ( .D(n155), .CK(CLK), .RN(n7), .Q(result_reg[9]) );
  DFFRQX2M \result_reg_reg[8]  ( .D(n156), .CK(CLK), .RN(n6), .Q(result_reg[8]) );
  DFFRQX2M \result_reg_reg[15]  ( .D(n165), .CK(CLK), .RN(n6), .Q(
        result_reg[15]) );
  DFFRQX2M \result_reg_reg[7]  ( .D(n157), .CK(CLK), .RN(n6), .Q(result_reg[7]) );
  DFFRQX2M \result_reg_reg[6]  ( .D(n158), .CK(CLK), .RN(n6), .Q(result_reg[6]) );
  DFFRQX2M \result_reg_reg[5]  ( .D(n159), .CK(CLK), .RN(n6), .Q(result_reg[5]) );
  DFFRQX2M \result_reg_reg[4]  ( .D(n160), .CK(CLK), .RN(n6), .Q(result_reg[4]) );
  DFFRQX2M \result_reg_reg[3]  ( .D(n161), .CK(CLK), .RN(n6), .Q(result_reg[3]) );
  DFFRQX2M \result_reg_reg[2]  ( .D(n162), .CK(CLK), .RN(n6), .Q(result_reg[2]) );
  DFFRQX2M \result_reg_reg[1]  ( .D(n163), .CK(CLK), .RN(n6), .Q(result_reg[1]) );
  DFFRQX2M \result_reg_reg[0]  ( .D(n164), .CK(CLK), .RN(n6), .Q(result_reg[0]) );
  DFFRQX2M \data_reg_reg[7]  ( .D(n145), .CK(CLK), .RN(n6), .Q(data_reg[7]) );
  DFFRQX2M \data_reg_reg[6]  ( .D(n144), .CK(CLK), .RN(n6), .Q(data_reg[6]) );
  DFFRQX2M \data_reg_reg[5]  ( .D(n143), .CK(CLK), .RN(n6), .Q(data_reg[5]) );
  DFFRQX2M \data_reg_reg[4]  ( .D(n142), .CK(CLK), .RN(n5), .Q(data_reg[4]) );
  DFFRQX2M \data_reg_reg[3]  ( .D(n141), .CK(CLK), .RN(n5), .Q(data_reg[3]) );
  DFFRQX2M \data_reg_reg[2]  ( .D(n140), .CK(CLK), .RN(n5), .Q(data_reg[2]) );
  DFFRQX2M \data_reg_reg[1]  ( .D(n139), .CK(CLK), .RN(n5), .Q(data_reg[1]) );
  DFFRQX2M \data_reg_reg[0]  ( .D(n138), .CK(CLK), .RN(n5), .Q(data_reg[0]) );
  DFFRX1M \fun_reg_reg[3]  ( .D(n137), .CK(CLK), .RN(n5), .QN(n36) );
  DFFRX1M \fun_reg_reg[2]  ( .D(n136), .CK(CLK), .RN(n5), .QN(n37) );
  DFFRX1M \fun_reg_reg[1]  ( .D(n135), .CK(CLK), .RN(n5), .QN(n38) );
  DFFRX1M \fun_reg_reg[0]  ( .D(n134), .CK(CLK), .RN(n5), .QN(n39) );
  DFFRX1M \addr_reg_reg[3]  ( .D(n149), .CK(CLK), .RN(n5), .QN(n24) );
  DFFRX1M \addr_reg_reg[2]  ( .D(n148), .CK(CLK), .RN(n5), .QN(n25) );
  DFFRX1M \addr_reg_reg[1]  ( .D(n147), .CK(CLK), .RN(n5), .QN(n26) );
  DFFRQX2M \current_state_reg[3]  ( .D(n166), .CK(CLK), .RN(n7), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n167), .CK(CLK), .RN(n7), .Q(
        current_state[1]) );
  DFFRX1M \addr_reg_reg[0]  ( .D(n146), .CK(CLK), .RN(n5), .QN(n27) );
  DFFRQX2M \current_state_reg[0]  ( .D(n169), .CK(CLK), .RN(n7), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n168), .CK(CLK), .RN(n7), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR2X2M U5 ( .A(n50), .B(n26), .Y(Address[1]) );
  NOR2X2M U6 ( .A(n50), .B(n25), .Y(Address[2]) );
  OAI21X2M U7 ( .A0(n50), .A1(n27), .B0(n115), .Y(Address[0]) );
  INVX2M U8 ( .A(n128), .Y(n41) );
  NOR2X2M U9 ( .A(n39), .B(n132), .Y(ALU_FUN[0]) );
  NOR2X2M U10 ( .A(n50), .B(n24), .Y(Address[3]) );
  INVX2M U11 ( .A(RX_D_VLD), .Y(n14) );
  NOR2X4M U12 ( .A(n22), .B(RdEN), .Y(n50) );
  INVX2M U13 ( .A(WrEN), .Y(n23) );
  NOR2X2M U14 ( .A(n70), .B(n31), .Y(n65) );
  INVX2M U15 ( .A(n64), .Y(n28) );
  INVX2M U16 ( .A(n95), .Y(n29) );
  INVX2M U17 ( .A(n78), .Y(RdEN) );
  INVX2M U18 ( .A(n119), .Y(n22) );
  NOR4X2M U19 ( .A(n40), .B(n41), .C(n80), .D(n34), .Y(n51) );
  NAND4X2M U20 ( .A(n96), .B(n115), .C(n132), .D(n95), .Y(n70) );
  INVX2M U21 ( .A(n132), .Y(ALU_EN) );
  NAND2X2M U22 ( .A(n82), .B(n129), .Y(n95) );
  NAND3X2M U23 ( .A(n74), .B(n115), .C(n119), .Y(WrEN) );
  NAND3X2M U24 ( .A(n72), .B(n73), .C(n74), .Y(n64) );
  INVX2M U25 ( .A(n49), .Y(n11) );
  INVX2M U26 ( .A(n68), .Y(n12) );
  INVX2M U27 ( .A(n71), .Y(n31) );
  INVX2M U28 ( .A(n90), .Y(n33) );
  INVX2M U29 ( .A(n88), .Y(n43) );
  AND2X2M U30 ( .A(n53), .B(n64), .Y(n55) );
  AND2X2M U31 ( .A(n53), .B(RdEN), .Y(n56) );
  BUFX4M U32 ( .A(n75), .Y(n4) );
  INVX2M U33 ( .A(n93), .Y(n13) );
  INVX2M U34 ( .A(n81), .Y(n40) );
  INVX2M U35 ( .A(n98), .Y(n34) );
  INVX2M U36 ( .A(n96), .Y(n42) );
  AND4X2M U37 ( .A(n115), .B(n96), .C(n73), .D(n72), .Y(n113) );
  BUFX4M U38 ( .A(RST), .Y(n5) );
  BUFX4M U39 ( .A(RST), .Y(n6) );
  BUFX2M U40 ( .A(RST), .Y(n7) );
  NAND2X2M U41 ( .A(n112), .B(n118), .Y(n78) );
  NAND2X2M U42 ( .A(n83), .B(n118), .Y(n132) );
  NAND2X2M U43 ( .A(n83), .B(n111), .Y(n115) );
  NOR2X2M U44 ( .A(n46), .B(n35), .Y(n82) );
  NAND2X2M U45 ( .A(n82), .B(n117), .Y(n119) );
  AOI211X2M U46 ( .A0(n82), .A1(n83), .B0(n43), .C0(n33), .Y(n71) );
  NAND4X2M U47 ( .A(n28), .B(n50), .C(n51), .D(n52), .Y(n49) );
  NOR4X1M U48 ( .A(n29), .B(ALU_EN), .C(n31), .D(n14), .Y(n52) );
  NAND4X2M U49 ( .A(n28), .B(n50), .C(n65), .D(n69), .Y(n68) );
  NOR3X2M U50 ( .A(n14), .B(n41), .C(n40), .Y(n69) );
  NAND2X2M U51 ( .A(n129), .B(n118), .Y(n90) );
  NAND2X2M U52 ( .A(n116), .B(n129), .Y(n88) );
  INVX2M U53 ( .A(n85), .Y(n10) );
  NAND2X2M U54 ( .A(n82), .B(n112), .Y(n74) );
  NOR2X2M U55 ( .A(n23), .B(n175), .Y(WrData[0]) );
  NOR2X2M U56 ( .A(n23), .B(n174), .Y(WrData[1]) );
  NOR2X2M U57 ( .A(n23), .B(n173), .Y(WrData[2]) );
  NOR2X2M U58 ( .A(n23), .B(n172), .Y(WrData[3]) );
  NOR2X2M U59 ( .A(n23), .B(n171), .Y(WrData[4]) );
  NOR2X2M U60 ( .A(n23), .B(n170), .Y(WrData[5]) );
  NOR2X2M U61 ( .A(n23), .B(n48), .Y(WrData[6]) );
  NOR2X2M U62 ( .A(n23), .B(n47), .Y(WrData[7]) );
  AOI31X2M U63 ( .A0(n88), .A1(n90), .A2(n128), .B0(n3), .Y(TX_D_VLD) );
  NOR2X2M U64 ( .A(n44), .B(n45), .Y(n129) );
  NAND2X2M U65 ( .A(n116), .B(n117), .Y(n73) );
  NAND2X2M U66 ( .A(n116), .B(n112), .Y(n72) );
  NAND2X2M U67 ( .A(n111), .B(n117), .Y(n81) );
  NAND2X2M U68 ( .A(n129), .B(n111), .Y(n128) );
  OAI22X1M U69 ( .A0(n99), .A1(n10), .B0(n85), .B1(n45), .Y(n168) );
  NOR4X1M U70 ( .A(n100), .B(n97), .C(n80), .D(n101), .Y(n99) );
  NAND3X2M U71 ( .A(n90), .B(n95), .C(n78), .Y(n100) );
  NOR4X1M U72 ( .A(n15), .B(n18), .C(n13), .D(n102), .Y(n101) );
  OAI22X1M U73 ( .A0(n84), .A1(n10), .B0(n85), .B1(n44), .Y(n166) );
  NOR3X2M U75 ( .A(n86), .B(n70), .C(n87), .Y(n84) );
  OAI22X1M U76 ( .A0(n14), .A1(n74), .B0(n9), .B1(n88), .Y(n87) );
  OAI211X2M U77 ( .A0(n89), .A1(n13), .B0(n78), .C0(n90), .Y(n86) );
  AND2X2M U78 ( .A(n111), .B(n112), .Y(n80) );
  AND3X2M U79 ( .A(n65), .B(n51), .C(n66), .Y(n53) );
  AOI211X2M U80 ( .A0(n14), .A1(n64), .B0(n22), .C0(n67), .Y(n66) );
  AND4X2M U81 ( .A(n72), .B(n73), .C(n76), .D(n77), .Y(n75) );
  NOR3X2M U82 ( .A(n42), .B(WrEN), .C(ALU_EN), .Y(n76) );
  AND4X2M U83 ( .A(n78), .B(n79), .C(n71), .D(n51), .Y(n77) );
  NOR2X2M U84 ( .A(n81), .B(n14), .Y(n93) );
  OAI211X2M U85 ( .A0(n9), .A1(n88), .B0(n103), .C0(n104), .Y(n97) );
  AOI21BX2M U86 ( .A0(n105), .A1(n93), .B0N(n72), .Y(n104) );
  NAND2X2M U87 ( .A(n83), .B(n116), .Y(n96) );
  NAND4BX1M U88 ( .AN(n102), .B(n93), .C(n15), .D(n18), .Y(n114) );
  NAND2X2M U89 ( .A(n117), .B(n118), .Y(n98) );
  AND3X2M U90 ( .A(n133), .B(n15), .C(n18), .Y(n105) );
  NAND2X2M U91 ( .A(n79), .B(n73), .Y(n94) );
  INVX2M U92 ( .A(n89), .Y(n16) );
  INVX2M U93 ( .A(n3), .Y(n9) );
  NOR2X2M U94 ( .A(n45), .B(current_state[3]), .Y(n112) );
  NOR2X2M U95 ( .A(n35), .B(current_state[1]), .Y(n118) );
  INVX2M U96 ( .A(current_state[0]), .Y(n35) );
  INVX2M U97 ( .A(current_state[2]), .Y(n45) );
  NOR2X4M U98 ( .A(n36), .B(n132), .Y(ALU_FUN[3]) );
  NOR2X4M U99 ( .A(n37), .B(n132), .Y(ALU_FUN[2]) );
  NOR2X4M U100 ( .A(n38), .B(n132), .Y(ALU_FUN[1]) );
  NOR2X2M U101 ( .A(current_state[0]), .B(current_state[1]), .Y(n111) );
  NOR2X2M U102 ( .A(current_state[2]), .B(current_state[3]), .Y(n117) );
  NOR2X2M U103 ( .A(n44), .B(current_state[2]), .Y(n83) );
  INVX2M U104 ( .A(current_state[3]), .Y(n44) );
  INVX2M U105 ( .A(current_state[1]), .Y(n46) );
  AO21XLM U106 ( .A0(n80), .A1(n14), .B0(n108), .Y(n107) );
  AOI21X2M U107 ( .A0(RX_P_Data[7]), .A1(RX_P_Data[3]), .B0(n81), .Y(n108) );
  NOR2X2M U108 ( .A(n46), .B(current_state[0]), .Y(n116) );
  OAI21X2M U109 ( .A0(n53), .A1(n174), .B0(n57), .Y(n139) );
  AOI22X1M U110 ( .A0(n55), .A1(RX_P_Data[1]), .B0(Rd_Data[1]), .B1(n56), .Y(
        n57) );
  OAI21X2M U111 ( .A0(n53), .A1(n48), .B0(n62), .Y(n144) );
  AOI22X1M U112 ( .A0(RX_P_Data[6]), .A1(n55), .B0(Rd_Data[6]), .B1(n56), .Y(
        n62) );
  OAI22X1M U113 ( .A0(n49), .A1(n15), .B0(n11), .B1(n39), .Y(n134) );
  OAI22X1M U114 ( .A0(n49), .A1(n21), .B0(n11), .B1(n38), .Y(n135) );
  OAI22X1M U115 ( .A0(n49), .A1(n20), .B0(n11), .B1(n37), .Y(n136) );
  OAI22X1M U116 ( .A0(n49), .A1(n19), .B0(n11), .B1(n36), .Y(n137) );
  AOI31X2M U117 ( .A0(n91), .A1(n8), .A2(n92), .B0(n10), .Y(n167) );
  AOI221XLM U118 ( .A0(n93), .A1(n16), .B0(n42), .B1(n14), .C0(n94), .Y(n92)
         );
  AOI22X1M U119 ( .A0(n33), .A1(n9), .B0(n34), .B1(RX_D_VLD), .Y(n91) );
  INVX2M U120 ( .A(n97), .Y(n8) );
  OAI22XLM U121 ( .A0(n106), .A1(n10), .B0(n85), .B1(n35), .Y(n169) );
  NOR4X1M U122 ( .A(n109), .B(n110), .C(n29), .D(n80), .Y(n106) );
  OAI21X2M U123 ( .A0(n113), .A1(n14), .B0(n114), .Y(n110) );
  OAI221X1M U124 ( .A0(n9), .A1(n90), .B0(RX_D_VLD), .B1(n98), .C0(n103), .Y(
        n109) );
  OAI22X1M U125 ( .A0(n15), .A1(n68), .B0(n12), .B1(n27), .Y(n146) );
  OAI22X1M U126 ( .A0(n21), .A1(n68), .B0(n12), .B1(n26), .Y(n147) );
  OAI22X1M U127 ( .A0(n20), .A1(n68), .B0(n12), .B1(n25), .Y(n148) );
  OAI22X1M U128 ( .A0(n19), .A1(n68), .B0(n12), .B1(n24), .Y(n149) );
  NOR2X2M U129 ( .A(RdData_Valid), .B(n78), .Y(n67) );
  OAI21X2M U130 ( .A0(n53), .A1(n175), .B0(n54), .Y(n138) );
  AOI22X1M U131 ( .A0(n55), .A1(RX_P_Data[0]), .B0(Rd_Data[0]), .B1(n56), .Y(
        n54) );
  OAI21X2M U132 ( .A0(n53), .A1(n173), .B0(n58), .Y(n140) );
  AOI22X1M U133 ( .A0(n55), .A1(RX_P_Data[2]), .B0(Rd_Data[2]), .B1(n56), .Y(
        n58) );
  OAI21X2M U134 ( .A0(n53), .A1(n172), .B0(n59), .Y(n141) );
  AOI22X1M U135 ( .A0(n55), .A1(RX_P_Data[3]), .B0(Rd_Data[3]), .B1(n56), .Y(
        n59) );
  OAI21X2M U136 ( .A0(n53), .A1(n171), .B0(n60), .Y(n142) );
  AOI22X1M U137 ( .A0(RX_P_Data[4]), .A1(n55), .B0(Rd_Data[4]), .B1(n56), .Y(
        n60) );
  OAI21X2M U138 ( .A0(n53), .A1(n170), .B0(n61), .Y(n143) );
  AOI22X1M U139 ( .A0(RX_P_Data[5]), .A1(n55), .B0(Rd_Data[5]), .B1(n56), .Y(
        n61) );
  OAI21X2M U140 ( .A0(n53), .A1(n47), .B0(n63), .Y(n145) );
  AOI22X1M U141 ( .A0(RX_P_Data[7]), .A1(n55), .B0(Rd_Data[7]), .B1(n56), .Y(
        n63) );
  AO2B2X2M U142 ( .B0(ALU_OUT[3]), .B1(n4), .A0(result_reg[3]), .A1N(n4), .Y(
        n161) );
  AO2B2X2M U143 ( .B0(ALU_OUT[4]), .B1(n4), .A0(result_reg[4]), .A1N(n4), .Y(
        n160) );
  AO2B2X2M U144 ( .B0(ALU_OUT[5]), .B1(n4), .A0(result_reg[5]), .A1N(n4), .Y(
        n159) );
  AO2B2X2M U145 ( .B0(ALU_OUT[6]), .B1(n4), .A0(result_reg[6]), .A1N(n4), .Y(
        n158) );
  AO2B2X2M U146 ( .B0(ALU_OUT[15]), .B1(n4), .A0(result_reg[15]), .A1N(n4), 
        .Y(n165) );
  AO2B2X2M U147 ( .B0(ALU_OUT[0]), .B1(n4), .A0(result_reg[0]), .A1N(n4), .Y(
        n164) );
  AO2B2X2M U148 ( .B0(ALU_OUT[1]), .B1(n75), .A0(result_reg[1]), .A1N(n4), .Y(
        n163) );
  AO2B2X2M U149 ( .B0(ALU_OUT[2]), .B1(n75), .A0(result_reg[2]), .A1N(n4), .Y(
        n162) );
  AO2B2X2M U150 ( .B0(ALU_OUT[7]), .B1(n75), .A0(result_reg[7]), .A1N(n4), .Y(
        n157) );
  AO2B2X2M U151 ( .B0(ALU_OUT[8]), .B1(n75), .A0(result_reg[8]), .A1N(n4), .Y(
        n156) );
  AO2B2X2M U152 ( .B0(ALU_OUT[9]), .B1(n75), .A0(result_reg[9]), .A1N(n4), .Y(
        n155) );
  AO2B2X2M U153 ( .B0(ALU_OUT[10]), .B1(n75), .A0(result_reg[10]), .A1N(n4), 
        .Y(n154) );
  AO2B2X2M U154 ( .B0(ALU_OUT[11]), .B1(n75), .A0(result_reg[11]), .A1N(n4), 
        .Y(n153) );
  AO2B2X2M U155 ( .B0(ALU_OUT[12]), .B1(n75), .A0(result_reg[12]), .A1N(n4), 
        .Y(n152) );
  AO2B2X2M U156 ( .B0(ALU_OUT[13]), .B1(n75), .A0(result_reg[13]), .A1N(n4), 
        .Y(n151) );
  AO2B2X2M U157 ( .B0(ALU_OUT[14]), .B1(n75), .A0(result_reg[14]), .A1N(n4), 
        .Y(n150) );
  NOR2X2M U158 ( .A(n3), .B(n127), .Y(TX_P_Data[0]) );
  AOI222X1M U159 ( .A0(n41), .A1(data_reg[0]), .B0(n43), .B1(result_reg[8]), 
        .C0(n33), .C1(result_reg[0]), .Y(n127) );
  NOR2X2M U160 ( .A(n3), .B(n126), .Y(TX_P_Data[1]) );
  AOI222X1M U161 ( .A0(n41), .A1(data_reg[1]), .B0(n43), .B1(result_reg[9]), 
        .C0(n33), .C1(result_reg[1]), .Y(n126) );
  NOR2X2M U162 ( .A(n3), .B(n125), .Y(TX_P_Data[2]) );
  AOI222X1M U163 ( .A0(n41), .A1(data_reg[2]), .B0(n43), .B1(result_reg[10]), 
        .C0(n33), .C1(result_reg[2]), .Y(n125) );
  NOR2X2M U164 ( .A(n3), .B(n124), .Y(TX_P_Data[3]) );
  AOI222X1M U165 ( .A0(n41), .A1(data_reg[3]), .B0(n43), .B1(result_reg[11]), 
        .C0(n33), .C1(result_reg[3]), .Y(n124) );
  NOR2X2M U166 ( .A(n3), .B(n123), .Y(TX_P_Data[4]) );
  AOI222X1M U167 ( .A0(n41), .A1(data_reg[4]), .B0(n43), .B1(result_reg[12]), 
        .C0(n33), .C1(result_reg[4]), .Y(n123) );
  NOR2X2M U168 ( .A(n3), .B(n122), .Y(TX_P_Data[5]) );
  AOI222X1M U169 ( .A0(n41), .A1(data_reg[5]), .B0(n43), .B1(result_reg[13]), 
        .C0(n33), .C1(result_reg[5]), .Y(n122) );
  NOR2X2M U170 ( .A(n3), .B(n121), .Y(TX_P_Data[6]) );
  AOI222X1M U171 ( .A0(n41), .A1(data_reg[6]), .B0(n43), .B1(result_reg[14]), 
        .C0(n33), .C1(result_reg[6]), .Y(n121) );
  NOR2X2M U172 ( .A(n3), .B(n120), .Y(TX_P_Data[7]) );
  AOI222X1M U173 ( .A0(n41), .A1(data_reg[7]), .B0(n43), .B1(result_reg[15]), 
        .C0(n33), .C1(result_reg[7]), .Y(n120) );
  AOI2BB1X2M U174 ( .A0N(n74), .A1N(RX_D_VLD), .B0(ALU_EN), .Y(n103) );
  NOR4X1M U175 ( .A(n17), .B(n20), .C(RX_P_Data[1]), .D(RX_P_Data[5]), .Y(n133) );
  INVX2M U176 ( .A(RX_P_Data[0]), .Y(n15) );
  NAND3X2M U177 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n133), .Y(n89) );
  INVX2M U178 ( .A(RX_P_Data[2]), .Y(n20) );
  INVX2M U179 ( .A(RX_P_Data[4]), .Y(n18) );
  BUFX4M U180 ( .A(FIFO_FULL), .Y(n3) );
  INVX2M U181 ( .A(RX_P_Data[6]), .Y(n17) );
  OAI211X2M U182 ( .A0(n130), .A1(n131), .B0(n74), .C0(n30), .Y(CLK_EN) );
  OAI21X2M U183 ( .A0(n16), .A1(n105), .B0(RX_P_Data[3]), .Y(n130) );
  NAND2X2M U184 ( .A(n93), .B(RX_P_Data[7]), .Y(n131) );
  INVX2M U185 ( .A(n70), .Y(n30) );
  OR2X2M U186 ( .A(OUT_VALID), .B(n95), .Y(n79) );
  NAND4X2M U187 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n20), .D(n17), .Y(
        n102) );
  INVX2M U188 ( .A(RX_P_Data[1]), .Y(n21) );
  INVX2M U189 ( .A(RX_P_Data[3]), .Y(n19) );
  INVX2M U190 ( .A(data_reg[0]), .Y(n175) );
  INVX2M U191 ( .A(data_reg[1]), .Y(n174) );
  INVX2M U192 ( .A(data_reg[2]), .Y(n173) );
  INVX2M U193 ( .A(data_reg[3]), .Y(n172) );
  INVX2M U194 ( .A(data_reg[4]), .Y(n171) );
  INVX2M U195 ( .A(data_reg[5]), .Y(n170) );
  INVX2M U196 ( .A(data_reg[6]), .Y(n48) );
  INVX2M U197 ( .A(data_reg[7]), .Y(n47) );
endmodule


module data_sync_NUM_STAGES2_BUS_WIDTH8 ( unsync_bus, bus_enable, dest_clk, 
        dest_rst, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, dest_clk, dest_rst;
  output enable_pulse;
  wire   q, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [1:0] multi_ff;

  DFFRQX2M q_reg ( .D(multi_ff[1]), .CK(dest_clk), .RN(n10), .Q(q) );
  DFFRQX2M \multi_ff_reg[1]  ( .D(multi_ff[0]), .CK(dest_clk), .RN(n10), .Q(
        multi_ff[1]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n3), .CK(dest_clk), .RN(n10), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n7), .CK(dest_clk), .RN(n10), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n9), .CK(dest_clk), .RN(n10), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n5), .CK(dest_clk), .RN(n10), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n6), .CK(dest_clk), .RN(n10), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n2), .CK(dest_clk), .RN(n10), .Q(sync_bus[1]) );
  DFFRQX2M enable_pulse_reg ( .D(n12), .CK(dest_clk), .RN(n10), .Q(
        enable_pulse) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n8), .CK(dest_clk), .RN(n10), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n4), .CK(dest_clk), .RN(n10), .Q(sync_bus[3]) );
  DFFRQX2M \multi_ff_reg[0]  ( .D(bus_enable), .CK(dest_clk), .RN(n10), .Q(
        multi_ff[0]) );
  NAND2BX2M U3 ( .AN(q), .B(multi_ff[1]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n12) );
  INVX4M U5 ( .A(n11), .Y(n10) );
  INVX2M U6 ( .A(dest_rst), .Y(n11) );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n12), .B0(sync_bus[1]), .B1(n1), .Y(n2)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n12), .B0(sync_bus[3]), .B1(n1), .Y(n4)
         );
  AO22X1M U9 ( .A0(unsync_bus[5]), .A1(n12), .B0(sync_bus[5]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n12), .B0(sync_bus[2]), .B1(n1), .Y(n3) );
  AO22X1M U11 ( .A0(unsync_bus[4]), .A1(n12), .B0(sync_bus[4]), .B1(n1), .Y(n5) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n12), .B0(sync_bus[6]), .B1(n1), .Y(n7) );
  AO22X1M U13 ( .A0(unsync_bus[7]), .A1(n12), .B0(sync_bus[7]), .B1(n1), .Y(n8) );
  AO22X1M U14 ( .A0(unsync_bus[0]), .A1(n12), .B0(sync_bus[0]), .B1(n1), .Y(n9) );
endmodule


module fsm_parallel_data8 ( clk, rst, rx_in, bit_cnt, par_en, edge_cnt, 
        prescale, par_err, strt_glitch, stp_err, dat_samp_en, enable_counter, 
        deser_en, par_chk_en, strt_chk_en, stp_chk_en, data_valid );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input clk, rst, rx_in, par_en, par_err, strt_glitch, stp_err;
  output dat_samp_en, enable_counter, deser_en, par_chk_en, strt_chk_en,
         stp_chk_en, data_valid;
  wire   N41, N42, N43, N44, N45, N71, N72, N91, N92, N93, N94, N95, N96, N122,
         N123, N148, N149, N150, N151, N152, N178, N179, N198, N199, N200,
         N201, N202, N228, N229, n60, n61, \eq_65/B[0] , \eq_65/B[1] ,
         \eq_65/B[2] , \eq_65/B[3] , \eq_65/B[4] , \add_120/carry[2] ,
         \add_120/carry[3] , \add_120/carry[4] , \add_120/carry[5] ,
         \add_120/A[5] , \add_108/carry[2] , \add_108/carry[3] ,
         \add_108/carry[4] , \add_108/carry[5] , \add_79/carry[2] ,
         \add_79/carry[3] , \add_79/carry[4] , \add_79/carry[5] ,
         \add_62/carry[2] , \add_62/carry[3] , \add_62/carry[4] ,
         \add_62/carry[5] , n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124;
  wire   [2:0] current_state;

  DFFRQX2M \current_state_reg[2]  ( .D(n124), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n60), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n61), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  OAI2BB1X2M U3 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n16), .Y(
        \eq_65/B[1] ) );
  INVX2M U4 ( .A(n7), .Y(n20) );
  INVX2M U5 ( .A(\eq_65/B[1] ), .Y(N91) );
  OAI2BB1X2M U6 ( .A0N(n18), .A1N(prescale[4]), .B0(n19), .Y(\eq_65/B[4] ) );
  OAI2BB1X2M U7 ( .A0N(n17), .A1N(prescale[3]), .B0(n18), .Y(\eq_65/B[3] ) );
  AO21X2M U8 ( .A0(n19), .A1(prescale[5]), .B0(n7), .Y(n1) );
  OAI2BB1X2M U9 ( .A0N(n16), .A1N(prescale[2]), .B0(n17), .Y(\eq_65/B[2] ) );
  NOR3X2M U10 ( .A(current_state[0]), .B(current_state[2]), .C(n123), .Y(n112)
         );
  NOR3X2M U11 ( .A(current_state[0]), .B(current_state[1]), .C(n100), .Y(n96)
         );
  NAND2XLM U12 ( .A(n111), .B(n96), .Y(n115) );
  NOR2X2M U13 ( .A(n8), .B(n9), .Y(n93) );
  NOR2X2M U14 ( .A(n10), .B(n11), .Y(n75) );
  NOR2X2M U15 ( .A(n14), .B(n15), .Y(n37) );
  NOR2X2M U16 ( .A(n8), .B(n9), .Y(n94) );
  NOR2X2M U17 ( .A(n12), .B(n13), .Y(n52) );
  NOR2X2M U18 ( .A(n12), .B(n13), .Y(n49) );
  NOR2X2M U19 ( .A(n12), .B(n13), .Y(n51) );
  NOR2X2M U20 ( .A(n8), .B(n9), .Y(n90) );
  NOR2X2M U21 ( .A(n8), .B(n9), .Y(n87) );
  NOR2X2M U22 ( .A(n8), .B(n9), .Y(n89) );
  NOR2X2M U23 ( .A(n10), .B(n11), .Y(n72) );
  NOR2X2M U24 ( .A(n10), .B(n11), .Y(n69) );
  NOR2X2M U25 ( .A(n10), .B(n11), .Y(n71) );
  NOR2X2M U26 ( .A(n14), .B(n15), .Y(n34) );
  NOR2X2M U27 ( .A(n14), .B(n15), .Y(n31) );
  NOR2X2M U28 ( .A(n14), .B(n15), .Y(n33) );
  INVX2M U29 ( .A(n2), .Y(n13) );
  INVX2M U30 ( .A(n3), .Y(n9) );
  INVX2M U31 ( .A(n4), .Y(n11) );
  INVX2M U32 ( .A(n5), .Y(n15) );
  INVX2M U33 ( .A(n2), .Y(n12) );
  INVX2M U34 ( .A(n3), .Y(n8) );
  INVX2M U35 ( .A(n4), .Y(n10) );
  INVX2M U36 ( .A(n5), .Y(n14) );
  NOR3BX2M U37 ( .AN(n2), .B(N122), .C(n13), .Y(n50) );
  NOR3BX2M U38 ( .AN(n3), .B(N228), .C(n9), .Y(n88) );
  NOR3BX2M U39 ( .AN(n4), .B(N178), .C(n11), .Y(n70) );
  NOR3BX2M U40 ( .AN(n5), .B(N71), .C(n15), .Y(n32) );
  OR2X2M U41 ( .A(N122), .B(n20), .Y(n2) );
  OR2X2M U42 ( .A(N228), .B(n20), .Y(n3) );
  OR2X2M U43 ( .A(N178), .B(n20), .Y(n4) );
  OR2X2M U44 ( .A(N71), .B(n20), .Y(n5) );
  NOR2X2M U45 ( .A(n12), .B(n13), .Y(n56) );
  NOR2X2M U46 ( .A(n12), .B(n13), .Y(n55) );
  NOR2X2M U47 ( .A(n10), .B(n11), .Y(n76) );
  NOR2X2M U48 ( .A(n14), .B(n15), .Y(n38) );
  OR2X2M U49 ( .A(prescale[1]), .B(prescale[0]), .Y(n16) );
  BUFX2M U50 ( .A(\add_120/A[5] ), .Y(n7) );
  NOR2X2M U51 ( .A(n19), .B(prescale[5]), .Y(\add_120/A[5] ) );
  BUFX2M U52 ( .A(dat_samp_en), .Y(enable_counter) );
  AND2X1M U53 ( .A(\add_120/carry[4] ), .B(n1), .Y(\add_120/carry[5] ) );
  CLKXOR2X2M U54 ( .A(n1), .B(\add_120/carry[4] ), .Y(N201) );
  AND2X1M U55 ( .A(\add_120/carry[3] ), .B(\eq_65/B[4] ), .Y(
        \add_120/carry[4] ) );
  CLKXOR2X2M U56 ( .A(\eq_65/B[4] ), .B(\add_120/carry[3] ), .Y(N200) );
  AND2X1M U57 ( .A(\add_120/carry[2] ), .B(\eq_65/B[3] ), .Y(
        \add_120/carry[3] ) );
  CLKXOR2X2M U58 ( .A(\eq_65/B[3] ), .B(\add_120/carry[2] ), .Y(N199) );
  OR2X1M U59 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_120/carry[2] ) );
  XNOR2X1M U60 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N198) );
  AND2X1M U61 ( .A(\add_62/carry[4] ), .B(n1), .Y(\add_62/carry[5] ) );
  CLKXOR2X2M U62 ( .A(n1), .B(\add_62/carry[4] ), .Y(N44) );
  AND2X1M U63 ( .A(\add_62/carry[3] ), .B(\eq_65/B[4] ), .Y(\add_62/carry[4] )
         );
  CLKXOR2X2M U64 ( .A(\eq_65/B[4] ), .B(\add_62/carry[3] ), .Y(N43) );
  AND2X1M U65 ( .A(\add_62/carry[2] ), .B(\eq_65/B[3] ), .Y(\add_62/carry[3] )
         );
  CLKXOR2X2M U66 ( .A(\eq_65/B[3] ), .B(\add_62/carry[2] ), .Y(N42) );
  OR2X1M U67 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_62/carry[2] ) );
  XNOR2X1M U68 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N41) );
  AND2X1M U69 ( .A(\add_108/carry[4] ), .B(n1), .Y(\add_108/carry[5] ) );
  CLKXOR2X2M U70 ( .A(n1), .B(\add_108/carry[4] ), .Y(N151) );
  AND2X1M U71 ( .A(\add_108/carry[3] ), .B(\eq_65/B[4] ), .Y(
        \add_108/carry[4] ) );
  CLKXOR2X2M U72 ( .A(\eq_65/B[4] ), .B(\add_108/carry[3] ), .Y(N150) );
  AND2X1M U73 ( .A(\add_108/carry[2] ), .B(\eq_65/B[3] ), .Y(
        \add_108/carry[3] ) );
  CLKXOR2X2M U74 ( .A(\eq_65/B[3] ), .B(\add_108/carry[2] ), .Y(N149) );
  OR2X1M U75 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_108/carry[2] ) );
  XNOR2X1M U76 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N148) );
  AND2X1M U77 ( .A(\add_79/carry[4] ), .B(n1), .Y(\add_79/carry[5] ) );
  CLKXOR2X2M U78 ( .A(n1), .B(\add_79/carry[4] ), .Y(N95) );
  AND2X1M U79 ( .A(\add_79/carry[3] ), .B(\eq_65/B[4] ), .Y(\add_79/carry[4] )
         );
  CLKXOR2X2M U80 ( .A(\eq_65/B[4] ), .B(\add_79/carry[3] ), .Y(N94) );
  AND2X1M U81 ( .A(\add_79/carry[2] ), .B(\eq_65/B[3] ), .Y(\add_79/carry[3] )
         );
  CLKXOR2X2M U82 ( .A(\eq_65/B[3] ), .B(\add_79/carry[2] ), .Y(N93) );
  OR2X1M U83 ( .A(\eq_65/B[2] ), .B(\eq_65/B[1] ), .Y(\add_79/carry[2] ) );
  XNOR2X1M U84 ( .A(\eq_65/B[1] ), .B(\eq_65/B[2] ), .Y(N92) );
  CLKINVX1M U85 ( .A(prescale[0]), .Y(\eq_65/B[0] ) );
  OR2X1M U86 ( .A(n16), .B(prescale[2]), .Y(n17) );
  OR2X1M U87 ( .A(n17), .B(prescale[3]), .Y(n18) );
  OR2X1M U88 ( .A(n18), .B(prescale[4]), .Y(n19) );
  XNOR2X1M U89 ( .A(\add_62/carry[5] ), .B(n20), .Y(N45) );
  AND2X1M U90 ( .A(\add_62/carry[5] ), .B(n7), .Y(N71) );
  XNOR2X1M U91 ( .A(\add_79/carry[5] ), .B(n20), .Y(N96) );
  AND2X1M U92 ( .A(\add_79/carry[5] ), .B(n7), .Y(N122) );
  XNOR2X1M U93 ( .A(\add_108/carry[5] ), .B(n20), .Y(N152) );
  AND2X1M U94 ( .A(\add_108/carry[5] ), .B(n7), .Y(N178) );
  AND2X1M U95 ( .A(\add_120/carry[5] ), .B(n7), .Y(N228) );
  XNOR2X1M U96 ( .A(\add_120/carry[5] ), .B(n20), .Y(N202) );
  XNOR2X1M U97 ( .A(N45), .B(edge_cnt[5]), .Y(n24) );
  XNOR2X1M U98 ( .A(N44), .B(edge_cnt[4]), .Y(n23) );
  XNOR2X1M U99 ( .A(N43), .B(edge_cnt[3]), .Y(n22) );
  XNOR2X1M U100 ( .A(N42), .B(edge_cnt[2]), .Y(n21) );
  NAND4X1M U101 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NOR2BX1M U102 ( .AN(N91), .B(edge_cnt[0]), .Y(n25) );
  OAI2B2X1M U103 ( .A1N(edge_cnt[1]), .A0(n25), .B0(N41), .B1(n25), .Y(n28) );
  NOR2BX1M U104 ( .AN(edge_cnt[0]), .B(N91), .Y(n26) );
  OAI2B2X1M U105 ( .A1N(N41), .A0(n26), .B0(edge_cnt[1]), .B1(n26), .Y(n27) );
  CLKNAND2X2M U106 ( .A(n28), .B(n27), .Y(n29) );
  NOR4X1M U107 ( .A(n30), .B(n29), .C(n14), .D(n15), .Y(n36) );
  AND4X1M U108 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(n35) );
  AND4X1M U109 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N72) );
  XNOR2X1M U110 ( .A(N96), .B(edge_cnt[5]), .Y(n42) );
  XNOR2X1M U111 ( .A(N95), .B(edge_cnt[4]), .Y(n41) );
  XNOR2X1M U112 ( .A(N94), .B(edge_cnt[3]), .Y(n40) );
  XNOR2X1M U113 ( .A(N93), .B(edge_cnt[2]), .Y(n39) );
  NAND4X1M U114 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n48) );
  NOR2BX1M U115 ( .AN(N91), .B(edge_cnt[0]), .Y(n43) );
  OAI2B2X1M U116 ( .A1N(edge_cnt[1]), .A0(n43), .B0(N92), .B1(n43), .Y(n46) );
  NOR2BX1M U117 ( .AN(edge_cnt[0]), .B(N91), .Y(n44) );
  OAI2B2X1M U118 ( .A1N(N92), .A0(n44), .B0(edge_cnt[1]), .B1(n44), .Y(n45) );
  CLKNAND2X2M U119 ( .A(n46), .B(n45), .Y(n47) );
  NOR4X1M U120 ( .A(n48), .B(n47), .C(n12), .D(n13), .Y(n54) );
  AND4X1M U121 ( .A(n52), .B(n51), .C(n50), .D(n49), .Y(n53) );
  AND4X1M U122 ( .A(n56), .B(n55), .C(n54), .D(n53), .Y(N123) );
  XNOR2X1M U123 ( .A(N152), .B(edge_cnt[5]), .Y(n62) );
  XNOR2X1M U124 ( .A(N151), .B(edge_cnt[4]), .Y(n59) );
  XNOR2X1M U125 ( .A(N150), .B(edge_cnt[3]), .Y(n58) );
  XNOR2X1M U126 ( .A(N149), .B(edge_cnt[2]), .Y(n57) );
  NAND4X1M U127 ( .A(n62), .B(n59), .C(n58), .D(n57), .Y(n68) );
  NOR2BX1M U128 ( .AN(N91), .B(edge_cnt[0]), .Y(n63) );
  OAI2B2X1M U129 ( .A1N(edge_cnt[1]), .A0(n63), .B0(N148), .B1(n63), .Y(n66)
         );
  NOR2BX1M U130 ( .AN(edge_cnt[0]), .B(N91), .Y(n64) );
  OAI2B2X1M U131 ( .A1N(N148), .A0(n64), .B0(edge_cnt[1]), .B1(n64), .Y(n65)
         );
  CLKNAND2X2M U132 ( .A(n66), .B(n65), .Y(n67) );
  NOR4X1M U133 ( .A(n68), .B(n67), .C(n10), .D(n11), .Y(n74) );
  AND4X1M U134 ( .A(n72), .B(n71), .C(n70), .D(n69), .Y(n73) );
  AND4X1M U135 ( .A(n76), .B(n75), .C(n74), .D(n73), .Y(N179) );
  XNOR2X1M U136 ( .A(N202), .B(edge_cnt[5]), .Y(n80) );
  XNOR2X1M U137 ( .A(N201), .B(edge_cnt[4]), .Y(n79) );
  XNOR2X1M U138 ( .A(N200), .B(edge_cnt[3]), .Y(n78) );
  XNOR2X1M U139 ( .A(N199), .B(edge_cnt[2]), .Y(n77) );
  NAND4X1M U140 ( .A(n80), .B(n79), .C(n78), .D(n77), .Y(n86) );
  NOR2BX1M U141 ( .AN(N91), .B(edge_cnt[0]), .Y(n81) );
  OAI2B2X1M U142 ( .A1N(edge_cnt[1]), .A0(n81), .B0(N198), .B1(n81), .Y(n84)
         );
  NOR2BX1M U143 ( .AN(edge_cnt[0]), .B(N91), .Y(n82) );
  OAI2B2X1M U144 ( .A1N(N198), .A0(n82), .B0(edge_cnt[1]), .B1(n82), .Y(n83)
         );
  CLKNAND2X2M U145 ( .A(n84), .B(n83), .Y(n85) );
  NOR4X1M U146 ( .A(n86), .B(n85), .C(n8), .D(n9), .Y(n92) );
  AND4X1M U147 ( .A(n90), .B(n89), .C(n88), .D(n87), .Y(n91) );
  AND4X1M U148 ( .A(n94), .B(n93), .C(n92), .D(n91), .Y(N229) );
  NOR2BX1M U149 ( .AN(N72), .B(n95), .Y(strt_chk_en) );
  AND2X1M U150 ( .A(N229), .B(n96), .Y(stp_chk_en) );
  OAI2B2X1M U151 ( .A1N(N179), .A0(n97), .B0(n98), .B1(n99), .Y(par_chk_en) );
  OAI222X1M U152 ( .A0(n100), .A1(n101), .B0(n102), .B1(n103), .C0(n97), .C1(
        n104), .Y(n124) );
  CLKINVX1M U153 ( .A(n105), .Y(n102) );
  OAI31X1M U154 ( .A0(n106), .A1(n98), .A2(n103), .B0(n107), .Y(n61) );
  MXI2X1M U155 ( .A(n108), .B(n109), .S0(current_state[0]), .Y(n107) );
  NOR3X1M U156 ( .A(current_state[1]), .B(rx_in), .C(current_state[2]), .Y(
        n108) );
  CLKINVX1M U157 ( .A(par_en), .Y(n106) );
  AO21XLM U158 ( .A0(n109), .A1(current_state[1]), .B0(n110), .Y(n60) );
  OAI32X1M U159 ( .A0(n104), .A1(strt_glitch), .A2(n95), .B0(n105), .B1(n103), 
        .Y(n110) );
  CLKNAND2X2M U160 ( .A(n111), .B(n112), .Y(n103) );
  NOR2X1M U161 ( .A(n98), .B(par_en), .Y(n105) );
  NAND3BX1M U162 ( .AN(bit_cnt[0]), .B(bit_cnt[3]), .C(n113), .Y(n98) );
  NOR2X1M U163 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n113) );
  OAI21X1M U164 ( .A0(n111), .A1(n97), .B0(n101), .Y(n109) );
  NAND2BX1M U165 ( .AN(n114), .B(n104), .Y(n101) );
  CLKINVX1M U166 ( .A(n99), .Y(deser_en) );
  CLKNAND2X2M U167 ( .A(N123), .B(n112), .Y(n99) );
  AOI211X1M U168 ( .A0(par_err), .A1(par_en), .B0(n115), .C0(stp_err), .Y(
        data_valid) );
  CLKINVX1M U169 ( .A(n104), .Y(n111) );
  NAND4X1M U170 ( .A(n116), .B(n117), .C(n118), .D(n119), .Y(n104) );
  NOR3X1M U171 ( .A(n120), .B(n121), .C(n122), .Y(n119) );
  CLKXOR2X2M U172 ( .A(\eq_65/B[4] ), .B(edge_cnt[4]), .Y(n122) );
  CLKXOR2X2M U173 ( .A(\eq_65/B[1] ), .B(edge_cnt[1]), .Y(n121) );
  CLKXOR2X2M U174 ( .A(\eq_65/B[0] ), .B(edge_cnt[0]), .Y(n120) );
  XNOR2X1M U175 ( .A(\eq_65/B[2] ), .B(edge_cnt[2]), .Y(n118) );
  XNOR2X1M U176 ( .A(\eq_65/B[3] ), .B(edge_cnt[3]), .Y(n117) );
  XNOR2X1M U177 ( .A(n1), .B(edge_cnt[5]), .Y(n116) );
  CLKNAND2X2M U178 ( .A(n114), .B(n97), .Y(dat_samp_en) );
  NAND3X1M U179 ( .A(current_state[0]), .B(n100), .C(current_state[1]), .Y(n97) );
  NOR3BX1M U180 ( .AN(n95), .B(n112), .C(n96), .Y(n114) );
  NAND3X1M U181 ( .A(n123), .B(n100), .C(current_state[0]), .Y(n95) );
  CLKINVX1M U182 ( .A(current_state[2]), .Y(n100) );
  CLKINVX1M U183 ( .A(current_state[1]), .Y(n123) );
endmodule


module edge_bit_counter ( clk, rst, enable, prescale, bit_cnt, edge_cnt );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input clk, rst, enable;
  wire   N7, N8, N9, N10, N11, N12, N13, N16, N17, N18, N19, N37, N38, N39,
         N40, N41, N42, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         \add_21/carry[5] , \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;

  DFFRQX2M \bit_cnt_reg[3]  ( .D(n16), .CK(clk), .RN(n2), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n17), .CK(clk), .RN(n2), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n19), .CK(clk), .RN(n2), .Q(bit_cnt[0]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n18), .CK(clk), .RN(n2), .Q(bit_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .CK(clk), .RN(n2), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .CK(clk), .RN(n2), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .CK(clk), .RN(n2), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .CK(clk), .RN(n2), .Q(edge_cnt[4]) );
  DFFRQX4M \edge_cnt_reg[1]  ( .D(N38), .CK(clk), .RN(n2), .Q(edge_cnt[1]) );
  DFFRQX4M \edge_cnt_reg[0]  ( .D(N37), .CK(clk), .RN(n2), .Q(edge_cnt[0]) );
  INVX2M U3 ( .A(enable), .Y(n34) );
  INVX2M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(rst), .Y(n3) );
  INVX2M U6 ( .A(n10), .Y(n28) );
  AOI21X2M U7 ( .A0(n29), .A1(enable), .B0(n28), .Y(n15) );
  NAND2X2M U8 ( .A(N13), .B(enable), .Y(n10) );
  NOR2BX2M U9 ( .AN(N16), .B(n10), .Y(N38) );
  NOR2BX2M U10 ( .AN(N17), .B(n10), .Y(N39) );
  NOR2BX2M U11 ( .AN(N18), .B(n10), .Y(N40) );
  NOR2BX2M U12 ( .AN(N19), .B(n10), .Y(N41) );
  OAI32X1M U13 ( .A0(n34), .A1(bit_cnt[0]), .A2(n28), .B0(n29), .B1(n10), .Y(
        n19) );
  OAI32X1M U14 ( .A0(n13), .A1(bit_cnt[2]), .A2(n31), .B0(n14), .B1(n32), .Y(
        n17) );
  INVX2M U15 ( .A(bit_cnt[2]), .Y(n32) );
  OA21X2M U16 ( .A0(n34), .A1(bit_cnt[1]), .B0(n15), .Y(n14) );
  NAND3X2M U17 ( .A(bit_cnt[0]), .B(n10), .C(enable), .Y(n13) );
  OAI22X1M U18 ( .A0(n15), .A1(n31), .B0(bit_cnt[1]), .B1(n13), .Y(n18) );
  OAI2BB2X1M U19 ( .B0(n33), .B1(n10), .A0N(n11), .A1N(enable), .Y(n16) );
  OAI32X1M U20 ( .A0(N13), .A1(bit_cnt[3]), .A2(n12), .B0(n33), .B1(n30), .Y(
        n11) );
  INVX2M U21 ( .A(bit_cnt[3]), .Y(n33) );
  INVX2M U22 ( .A(n12), .Y(n30) );
  NOR2X2M U23 ( .A(edge_cnt[0]), .B(n10), .Y(N37) );
  NOR2X2M U24 ( .A(n1), .B(n10), .Y(N42) );
  XNOR2X2M U25 ( .A(\add_21/carry[5] ), .B(edge_cnt[5]), .Y(n1) );
  ADDHX1M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_21/carry[2] ), .S(
        N16) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), 
        .S(N17) );
  ADDHX1M U28 ( .A(edge_cnt[3]), .B(\add_21/carry[3] ), .CO(\add_21/carry[4] ), 
        .S(N18) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(\add_21/carry[4] ), .CO(\add_21/carry[5] ), 
        .S(N19) );
  NAND3X2M U30 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Y(n12) );
  INVX2M U31 ( .A(bit_cnt[1]), .Y(n31) );
  INVX2M U32 ( .A(bit_cnt[0]), .Y(n29) );
  OR2X2M U33 ( .A(prescale[1]), .B(prescale[0]), .Y(n4) );
  INVX2M U34 ( .A(prescale[3]), .Y(n8) );
  CLKINVX1M U35 ( .A(prescale[0]), .Y(N7) );
  OAI2BB1X1M U36 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n4), .Y(N8) );
  NOR2X1M U37 ( .A(n4), .B(prescale[2]), .Y(n5) );
  AO21XLM U38 ( .A0(n4), .A1(prescale[2]), .B0(n5), .Y(N9) );
  CLKNAND2X2M U39 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U40 ( .A0(n5), .A1(n8), .B0(n6), .Y(N10) );
  XNOR2X1M U41 ( .A(prescale[4]), .B(n6), .Y(N11) );
  NOR2X1M U42 ( .A(prescale[4]), .B(n6), .Y(n7) );
  CLKXOR2X2M U43 ( .A(prescale[5]), .B(n7), .Y(N12) );
  NOR2BX1M U44 ( .AN(N7), .B(edge_cnt[0]), .Y(n9) );
  OAI2B2X1M U45 ( .A1N(edge_cnt[1]), .A0(n9), .B0(N8), .B1(n9), .Y(n27) );
  NOR2BX1M U46 ( .AN(edge_cnt[0]), .B(N7), .Y(n20) );
  OAI2B2X1M U47 ( .A1N(N8), .A0(n20), .B0(edge_cnt[1]), .B1(n20), .Y(n26) );
  XNOR2X1M U48 ( .A(N9), .B(edge_cnt[2]), .Y(n25) );
  CLKXOR2X2M U49 ( .A(N12), .B(edge_cnt[5]), .Y(n23) );
  CLKXOR2X2M U50 ( .A(N10), .B(edge_cnt[3]), .Y(n22) );
  CLKXOR2X2M U51 ( .A(N11), .B(edge_cnt[4]), .Y(n21) );
  NOR3X1M U52 ( .A(n23), .B(n22), .C(n21), .Y(n24) );
  NAND4X1M U53 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(N13) );
endmodule


module data_sampling ( clk, rst, prescale, rx_in, dat_samp_en, edge_cnt, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst, rx_in, dat_samp_en;
  output sampled_bit;
  wire   N6, N7, N8, N9, N10, N11, N15, N16, N17, N18, N19, n21, n22, n23, n24,
         \add_33/carry[4] , \add_33/carry[3] , \add_33/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44;
  wire   [4:0] sample_center;
  wire   [2:0] samples;

  DFFSQX2M \samples_reg[2]  ( .D(n24), .CK(clk), .SN(rst), .Q(samples[2]) );
  DFFSQX2M \samples_reg[0]  ( .D(n22), .CK(clk), .SN(rst), .Q(samples[0]) );
  DFFSQX2M \samples_reg[1]  ( .D(n23), .CK(clk), .SN(rst), .Q(samples[1]) );
  DFFSQX2M sampled_bit_reg ( .D(n21), .CK(clk), .SN(rst), .Q(sampled_bit) );
  AO21X2M U3 ( .A0(n1), .A1(prescale[2]), .B0(n2), .Y(sample_center[1]) );
  XNOR2XLM U4 ( .A(edge_cnt[3]), .B(sample_center[3]), .Y(n33) );
  OAI21XLM U5 ( .A0(sample_center[3]), .A1(n7), .B0(sample_center[4]), .Y(n8)
         );
  XNOR2XLM U6 ( .A(sample_center[3]), .B(n7), .Y(N9) );
  OAI21X2M U7 ( .A0(n2), .A1(n5), .B0(n3), .Y(sample_center[2]) );
  NAND2XLM U8 ( .A(n2), .B(n5), .Y(n3) );
  OAI2BB1XLM U9 ( .A0N(sample_center[0]), .A1N(sample_center[1]), .B0(n6), .Y(
        N7) );
  XNOR2XLM U10 ( .A(edge_cnt[2]), .B(sample_center[2]), .Y(n34) );
  XNOR2XLM U11 ( .A(edge_cnt[1]), .B(sample_center[1]), .Y(n32) );
  XNOR2X2M U12 ( .A(prescale[4]), .B(n3), .Y(sample_center[3]) );
  ADDHX1M U13 ( .A(sample_center[2]), .B(\add_33/carry[2] ), .CO(
        \add_33/carry[3] ), .S(N16) );
  ADDHX1M U14 ( .A(sample_center[3]), .B(\add_33/carry[3] ), .CO(
        \add_33/carry[4] ), .S(N17) );
  ADDHX1M U15 ( .A(sample_center[1]), .B(sample_center[0]), .CO(
        \add_33/carry[2] ), .S(N15) );
  ADDHX1M U16 ( .A(sample_center[4]), .B(\add_33/carry[4] ), .CO(N19), .S(N18)
         );
  INVX2M U17 ( .A(prescale[3]), .Y(n5) );
  OR2X1M U18 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  OAI2BB1X1M U19 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(
        sample_center[0]) );
  NOR2X1M U20 ( .A(n1), .B(prescale[2]), .Y(n2) );
  NOR2X1M U21 ( .A(prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U22 ( .A(prescale[5]), .B(n4), .Y(sample_center[4]) );
  CLKINVX1M U23 ( .A(sample_center[0]), .Y(N6) );
  NAND2BX1M U24 ( .AN(sample_center[1]), .B(N6), .Y(n6) );
  OR2X1M U25 ( .A(n6), .B(sample_center[2]), .Y(n7) );
  OAI2BB1X1M U26 ( .A0N(n6), .A1N(sample_center[2]), .B0(n7), .Y(N8) );
  NOR3X1M U27 ( .A(sample_center[3]), .B(sample_center[4]), .C(n7), .Y(N11) );
  NAND2BX1M U28 ( .AN(N11), .B(n8), .Y(N10) );
  CLKMX2X2M U29 ( .A(samples[2]), .B(rx_in), .S0(n9), .Y(n24) );
  NOR4X1M U30 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n9) );
  OR3X1M U31 ( .A(n14), .B(n15), .C(n16), .Y(n10) );
  CLKMX2X2M U32 ( .A(samples[1]), .B(rx_in), .S0(n17), .Y(n23) );
  NOR2X1M U33 ( .A(n12), .B(n18), .Y(n17) );
  CLKMX2X2M U34 ( .A(samples[0]), .B(rx_in), .S0(n19), .Y(n22) );
  NOR2BX1M U35 ( .AN(dat_samp_en), .B(n20), .Y(n19) );
  CLKMX2X2M U36 ( .A(sampled_bit), .B(n25), .S0(n26), .Y(n21) );
  NOR3X1M U37 ( .A(n12), .B(n15), .C(n27), .Y(n26) );
  NOR4X1M U38 ( .A(n14), .B(n16), .C(n11), .D(n13), .Y(n27) );
  CLKXOR2X2M U39 ( .A(edge_cnt[4]), .B(N18), .Y(n13) );
  NAND3X1M U40 ( .A(n28), .B(n29), .C(n30), .Y(n11) );
  XNOR2X1M U41 ( .A(edge_cnt[1]), .B(N15), .Y(n30) );
  XNOR2X1M U42 ( .A(edge_cnt[5]), .B(N19), .Y(n29) );
  CLKXOR2X2M U43 ( .A(n31), .B(N6), .Y(n28) );
  CLKINVX1M U44 ( .A(edge_cnt[0]), .Y(n31) );
  CLKXOR2X2M U45 ( .A(edge_cnt[3]), .B(N17), .Y(n16) );
  CLKXOR2X2M U46 ( .A(edge_cnt[2]), .B(N16), .Y(n14) );
  CLKINVX1M U47 ( .A(n18), .Y(n15) );
  NAND4X1M U48 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n18) );
  NOR3X1M U49 ( .A(n36), .B(edge_cnt[5]), .C(n37), .Y(n35) );
  CLKXOR2X2M U50 ( .A(sample_center[0]), .B(edge_cnt[0]), .Y(n37) );
  CLKXOR2X2M U51 ( .A(sample_center[4]), .B(edge_cnt[4]), .Y(n36) );
  CLKNAND2X2M U52 ( .A(dat_samp_en), .B(n20), .Y(n12) );
  NAND4X1M U53 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n20) );
  NOR3X1M U54 ( .A(n42), .B(n43), .C(n44), .Y(n41) );
  CLKXOR2X2M U55 ( .A(edge_cnt[4]), .B(N10), .Y(n44) );
  CLKXOR2X2M U56 ( .A(edge_cnt[0]), .B(N6), .Y(n43) );
  CLKXOR2X2M U57 ( .A(edge_cnt[5]), .B(N11), .Y(n42) );
  XNOR2X1M U58 ( .A(edge_cnt[2]), .B(N8), .Y(n40) );
  XNOR2X1M U59 ( .A(edge_cnt[3]), .B(N9), .Y(n39) );
  XNOR2X1M U60 ( .A(edge_cnt[1]), .B(N7), .Y(n38) );
  ADDFX1M U61 ( .A(samples[0]), .B(samples[2]), .CI(samples[1]), .CO(n25) );
endmodule


module deserializer_parallel_data8 ( clk, rst, deser_en, bit_cnt, sampled_bit, 
        p_data );
  input [3:0] bit_cnt;
  output [7:0] p_data;
  input clk, rst, deser_en, sampled_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n8, n20;

  DFFRQX2M \p_data_reg[0]  ( .D(n12), .CK(clk), .RN(rst), .Q(p_data[0]) );
  DFFRX1M \p_data_reg[5]  ( .D(n17), .CK(clk), .RN(rst), .Q(p_data[5]), .QN(n3) );
  DFFRX1M \p_data_reg[1]  ( .D(n13), .CK(clk), .RN(rst), .Q(p_data[1]), .QN(n7) );
  DFFRX1M \p_data_reg[6]  ( .D(n18), .CK(clk), .RN(rst), .Q(p_data[6]), .QN(n2) );
  DFFRX1M \p_data_reg[2]  ( .D(n14), .CK(clk), .RN(rst), .Q(p_data[2]), .QN(n6) );
  DFFRX1M \p_data_reg[4]  ( .D(n16), .CK(clk), .RN(rst), .Q(p_data[4]), .QN(n4) );
  DFFRX1M \p_data_reg[3]  ( .D(n15), .CK(clk), .RN(rst), .Q(p_data[3]), .QN(n5) );
  DFFRX1M \p_data_reg[7]  ( .D(n19), .CK(clk), .RN(rst), .Q(p_data[7]), .QN(n1) );
  BUFX2M U3 ( .A(n9), .Y(n8) );
  INVX2M U4 ( .A(n8), .Y(n20) );
  OAI22X1M U5 ( .A0(n8), .A1(n6), .B0(n20), .B1(n7), .Y(n13) );
  OAI22X1M U6 ( .A0(n8), .A1(n5), .B0(n20), .B1(n6), .Y(n14) );
  OAI22X1M U7 ( .A0(n8), .A1(n4), .B0(n20), .B1(n5), .Y(n15) );
  OAI22X1M U8 ( .A0(n8), .A1(n3), .B0(n20), .B1(n4), .Y(n16) );
  OAI22X1M U9 ( .A0(n8), .A1(n2), .B0(n20), .B1(n3), .Y(n17) );
  OAI22X1M U10 ( .A0(n8), .A1(n1), .B0(n20), .B1(n2), .Y(n18) );
  OAI2BB2X1M U11 ( .B0(n20), .B1(n1), .A0N(sampled_bit), .A1N(n20), .Y(n19) );
  OAI2BB2X1M U12 ( .B0(n8), .B1(n7), .A0N(p_data[0]), .A1N(n8), .Y(n12) );
  OAI2B11X2M U13 ( .A1N(bit_cnt[3]), .A0(n10), .B0(n11), .C0(deser_en), .Y(n9)
         );
  OR4X1M U14 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .D(bit_cnt[3]), 
        .Y(n11) );
  NOR3X2M U15 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n10) );
endmodule


module parity_check_parallel_data8 ( clk, rst, par_typ, sampled_bit, 
        par_chk_en, p_data, bit_cnt, par_err );
  input [7:0] p_data;
  input [3:0] bit_cnt;
  input clk, rst, par_typ, sampled_bit, par_chk_en;
  output par_err;
  wire   par_Chk, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n1;

  DFFRQX2M par_Chk_reg ( .D(n12), .CK(clk), .RN(rst), .Q(par_Chk) );
  DFFRQX2M par_err_reg ( .D(n11), .CK(clk), .RN(rst), .Q(par_err) );
  NAND4BBX1M U3 ( .AN(bit_cnt[2]), .BN(bit_cnt[1]), .C(par_chk_en), .D(
        bit_cnt[3]), .Y(n3) );
  OAI31X1M U4 ( .A0(n1), .A1(n2), .A2(n3), .B0(n4), .Y(n11) );
  XNOR2X2M U5 ( .A(par_Chk), .B(sampled_bit), .Y(n2) );
  NAND2X2M U6 ( .A(par_err), .B(n3), .Y(n4) );
  OAI2BB2X1M U7 ( .B0(n5), .B1(n6), .A0N(n6), .A1N(par_Chk), .Y(n12) );
  XOR3XLM U8 ( .A(n7), .B(par_typ), .C(n8), .Y(n5) );
  NAND2BX2M U9 ( .AN(n3), .B(n1), .Y(n6) );
  XOR3XLM U10 ( .A(p_data[2]), .B(p_data[1]), .C(n9), .Y(n8) );
  XOR3XLM U11 ( .A(p_data[6]), .B(p_data[5]), .C(n10), .Y(n7) );
  CLKXOR2X2M U12 ( .A(sampled_bit), .B(p_data[7]), .Y(n10) );
  XNOR2X2M U13 ( .A(p_data[4]), .B(p_data[3]), .Y(n9) );
  INVX2M U14 ( .A(bit_cnt[0]), .Y(n1) );
endmodule


module strt_check ( clk, rst, sampled_bit, strt_chk_en, strt_glitch );
  input clk, rst, sampled_bit, strt_chk_en;
  output strt_glitch;
  wire   n1;

  DFFRQX2M strt_glitch_reg ( .D(n1), .CK(clk), .RN(rst), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(strt_chk_en), .B1(sampled_bit), .A0(strt_glitch), .A1N(
        strt_chk_en), .Y(n1) );
endmodule


module stop_check ( clk, rst, stp_chk_en, sampled_bit, stp_err );
  input clk, rst, stp_chk_en, sampled_bit;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(clk), .RN(rst), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module uart_rx_parallel_data8 ( clk, rst, rx_in, par_en, par_typ, prescale, 
        p_data, par_err, stp_err, data_valid );
  input [5:0] prescale;
  output [7:0] p_data;
  input clk, rst, rx_in, par_en, par_typ;
  output par_err, stp_err, data_valid;
  wire   strt_glitch, dat_samp_en, enable_counter, deser_en, par_chk_en,
         strt_chk_en, stp_chk_en, data_valid_int, sampled_bit, n1, n2;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;

  fsm_parallel_data8 fsm_inst ( .clk(clk), .rst(n1), .rx_in(rx_in), .bit_cnt(
        bit_cnt), .par_en(par_en), .edge_cnt(edge_cnt), .prescale(prescale), 
        .par_err(par_err), .strt_glitch(strt_glitch), .stp_err(stp_err), 
        .dat_samp_en(dat_samp_en), .enable_counter(enable_counter), .deser_en(
        deser_en), .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), 
        .stp_chk_en(stp_chk_en), .data_valid(data_valid_int) );
  edge_bit_counter counter_inst ( .clk(clk), .rst(n1), .enable(enable_counter), 
        .prescale(prescale), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  data_sampling sampler_inst ( .clk(clk), .rst(n1), .prescale(prescale), 
        .rx_in(rx_in), .dat_samp_en(dat_samp_en), .edge_cnt(edge_cnt), 
        .sampled_bit(sampled_bit) );
  deserializer_parallel_data8 deserializer_inst ( .clk(clk), .rst(n1), 
        .deser_en(deser_en), .bit_cnt(bit_cnt), .sampled_bit(sampled_bit), 
        .p_data(p_data) );
  parity_check_parallel_data8 parity_inst ( .clk(clk), .rst(n1), .par_typ(
        par_typ), .sampled_bit(sampled_bit), .par_chk_en(par_chk_en), .p_data(
        p_data), .bit_cnt(bit_cnt), .par_err(par_err) );
  strt_check start_check_inst ( .clk(clk), .rst(n1), .sampled_bit(sampled_bit), 
        .strt_chk_en(strt_chk_en), .strt_glitch(strt_glitch) );
  stop_check stop_check_inst ( .clk(clk), .rst(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(stp_err) );
  DFFRQX2M data_valid_reg ( .D(data_valid_int), .CK(clk), .RN(n1), .Q(
        data_valid) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n2) );
endmodule


module serializer_parallel_data8 ( p_data, clk, rst, ser_en, ser_done, 
        serial_out );
  input [7:0] p_data;
  input clk, rst, ser_en;
  output ser_done, serial_out;
  wire   N29, N30, N31, N32, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n19, n20, n21, n22, n23, n24, n25, n26, n27, n1, n4,
         n17, n18, n28, n29;
  wire   [2:0] count;
  wire   [6:0] serial_reg;

  DFFSQX2M \serial_reg_reg[0]  ( .D(n21), .CK(clk), .SN(n1), .Q(serial_reg[0])
         );
  DFFRQX2M \serial_reg_reg[5]  ( .D(n26), .CK(clk), .RN(n1), .Q(serial_reg[5])
         );
  DFFRQX2M \serial_reg_reg[4]  ( .D(n25), .CK(clk), .RN(n1), .Q(serial_reg[4])
         );
  DFFRQX2M \serial_reg_reg[3]  ( .D(n24), .CK(clk), .RN(n1), .Q(serial_reg[3])
         );
  DFFRQX2M \serial_reg_reg[2]  ( .D(n23), .CK(clk), .RN(n1), .Q(serial_reg[2])
         );
  DFFRQX2M \serial_reg_reg[1]  ( .D(n22), .CK(clk), .RN(n1), .Q(serial_reg[1])
         );
  DFFRQX2M \serial_reg_reg[6]  ( .D(n27), .CK(clk), .RN(n1), .Q(serial_reg[6])
         );
  DFFRQX2M ser_done_reg ( .D(N29), .CK(clk), .RN(n1), .Q(ser_done) );
  DFFRQX2M \count_reg[2]  ( .D(N32), .CK(clk), .RN(n1), .Q(count[2]) );
  DFFRQX2M \count_reg[0]  ( .D(N30), .CK(clk), .RN(n1), .Q(count[0]) );
  DFFRQX2M \count_reg[1]  ( .D(N31), .CK(clk), .RN(n1), .Q(count[1]) );
  DFFSQX2M serial_out_reg ( .D(n20), .CK(clk), .SN(n1), .Q(serial_out) );
  AOI2BB2XLM U3 ( .B0(count[1]), .B1(count[0]), .A0N(n19), .A1N(n29), .Y(n14)
         );
  INVX4M U4 ( .A(n4), .Y(n1) );
  INVX2M U5 ( .A(rst), .Y(n4) );
  NOR2X4M U6 ( .A(n17), .B(n12), .Y(n3) );
  INVX2M U7 ( .A(n11), .Y(n18) );
  NAND2X2M U8 ( .A(ser_en), .B(n12), .Y(n11) );
  NAND2X2M U9 ( .A(n14), .B(n15), .Y(n12) );
  INVX2M U10 ( .A(ser_en), .Y(n17) );
  XNOR2X2M U11 ( .A(n19), .B(n29), .Y(n15) );
  NOR3X2M U12 ( .A(n17), .B(n14), .C(n15), .Y(N29) );
  NOR2X2M U13 ( .A(n19), .B(n17), .Y(N31) );
  OAI2BB1X2M U14 ( .A0N(serial_out), .A1N(n17), .B0(n2), .Y(n20) );
  AOI22X1M U15 ( .A0(p_data[0]), .A1(n3), .B0(serial_reg[0]), .B1(n18), .Y(n2)
         );
  OAI2B11XLM U16 ( .A1N(serial_reg[6]), .A0(ser_en), .B0(n13), .C0(n11), .Y(
        n27) );
  NAND2XLM U17 ( .A(p_data[7]), .B(ser_en), .Y(n13) );
  OAI2BB1X2M U18 ( .A0N(n17), .A1N(serial_reg[5]), .B0(n10), .Y(n26) );
  AOI22X1M U19 ( .A0(p_data[6]), .A1(n3), .B0(serial_reg[6]), .B1(n18), .Y(n10) );
  OAI2BB1X2M U20 ( .A0N(n17), .A1N(serial_reg[1]), .B0(n6), .Y(n22) );
  AOI22X1M U21 ( .A0(p_data[2]), .A1(n3), .B0(serial_reg[2]), .B1(n18), .Y(n6)
         );
  OAI2BB1X2M U22 ( .A0N(n17), .A1N(serial_reg[2]), .B0(n7), .Y(n23) );
  AOI22X1M U23 ( .A0(p_data[3]), .A1(n3), .B0(serial_reg[3]), .B1(n18), .Y(n7)
         );
  OAI2BB1X2M U24 ( .A0N(n17), .A1N(serial_reg[4]), .B0(n9), .Y(n25) );
  AOI22X1M U25 ( .A0(p_data[5]), .A1(n3), .B0(serial_reg[5]), .B1(n18), .Y(n9)
         );
  OAI2BB1X2M U26 ( .A0N(n17), .A1N(serial_reg[3]), .B0(n8), .Y(n24) );
  AOI22X1M U27 ( .A0(p_data[4]), .A1(n3), .B0(serial_reg[4]), .B1(n18), .Y(n8)
         );
  OAI2BB1X2M U28 ( .A0N(n17), .A1N(serial_reg[0]), .B0(n5), .Y(n21) );
  AOI22X1M U29 ( .A0(p_data[1]), .A1(n3), .B0(serial_reg[1]), .B1(n18), .Y(n5)
         );
  XNOR2X2M U30 ( .A(count[0]), .B(count[1]), .Y(n19) );
  NOR2X2M U31 ( .A(n17), .B(count[0]), .Y(N30) );
  OAI2BB2X1M U32 ( .B0(n16), .B1(n17), .A0N(count[2]), .A1N(N30), .Y(N32) );
  AOI32X1M U33 ( .A0(count[1]), .A1(n29), .A2(count[0]), .B0(count[2]), .B1(
        n28), .Y(n16) );
  INVX2M U34 ( .A(count[1]), .Y(n28) );
  INVX2M U35 ( .A(count[2]), .Y(n29) );
endmodule


module FSM ( data_valid, par_en, ser_done, clk, rst, ser_en, parity_enable, 
        mux_sel, busy );
  output [1:0] mux_sel;
  input data_valid, par_en, ser_done, clk, rst;
  output ser_en, parity_enable, busy;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  OAI32X4M U5 ( .A0(n2), .A1(current_state[2]), .A2(current_state[1]), .B0(
        ser_done), .B1(n5), .Y(ser_en) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(ser_en), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  INVX2M U3 ( .A(n8), .Y(n1) );
  NOR2X2M U4 ( .A(n3), .B(n9), .Y(n8) );
  NAND2X2M U6 ( .A(n1), .B(n5), .Y(mux_sel[1]) );
  NAND2X2M U7 ( .A(n9), .B(n3), .Y(mux_sel[0]) );
  NAND2X2M U8 ( .A(current_state[1]), .B(n3), .Y(n5) );
  INVX2M U9 ( .A(current_state[2]), .Y(n3) );
  INVX2M U10 ( .A(current_state[0]), .Y(n2) );
  NAND2BX2M U11 ( .AN(current_state[1]), .B(n2), .Y(n9) );
  NOR3BX2M U12 ( .AN(data_valid), .B(n4), .C(busy), .Y(parity_enable) );
  OAI31X1M U13 ( .A0(n6), .A1(current_state[2]), .A2(current_state[1]), .B0(n7), .Y(next_state[0]) );
  AOI22X1M U14 ( .A0(data_valid), .A1(n2), .B0(current_state[0]), .B1(n4), .Y(
        n6) );
  AOI31X2M U15 ( .A0(current_state[0]), .A1(n3), .A2(current_state[1]), .B0(n8), .Y(n7) );
  NAND3BX2M U16 ( .AN(current_state[1]), .B(n3), .C(n2), .Y(busy) );
  OAI2B1X2M U17 ( .A1N(ser_done), .A0(n5), .B0(n1), .Y(next_state[2]) );
  INVX2M U18 ( .A(par_en), .Y(n4) );
endmodule


module parity_calc_parallel_data8 ( p_data, data_valid, par_typ, parity_enable, 
        clk, rst, par_bit );
  input [7:0] p_data;
  input data_valid, par_typ, parity_enable, clk, rst;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX2M par_bit_reg ( .D(n7), .CK(clk), .RN(rst), .Q(par_bit) );
  XOR3XLM U2 ( .A(p_data[5]), .B(p_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(p_data[7]), .B(p_data[6]), .Y(n6) );
  XOR3XLM U4 ( .A(p_data[1]), .B(p_data[0]), .C(n5), .Y(n4) );
  XNOR2X2M U5 ( .A(p_data[3]), .B(p_data[2]), .Y(n5) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n7) );
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


module uart_tx_DATA_WIDTH8 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, 
        TX_OUT, BUSY );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, BUSY;
  wire   ser_en_t, ser_done_t, ser_data_t, parity_enable_t, par_bit_t, n1, n2;
  wire   [1:0] mux_sel_t;

  serializer_parallel_data8 U_serializer ( .p_data(P_DATA), .clk(CLK), .rst(n1), .ser_en(ser_en_t), .ser_done(ser_done_t), .serial_out(ser_data_t) );
  FSM U_FSM ( .data_valid(DATA_VALID), .par_en(PAR_EN), .ser_done(ser_done_t), 
        .clk(CLK), .rst(n1), .ser_en(ser_en_t), .parity_enable(parity_enable_t), .mux_sel(mux_sel_t), .busy(BUSY) );
  parity_calc_parallel_data8 U_parity_calc ( .p_data(P_DATA), .data_valid(
        DATA_VALID), .par_typ(PAR_TYP), .parity_enable(parity_enable_t), .clk(
        CLK), .rst(n1), .par_bit(par_bit_t) );
  mux U_mux ( .ser_data(ser_data_t), .par_bit(par_bit_t), .mux_sel(mux_sel_t), 
        .tx_out(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module uart_top_parallel_data8 ( TX_CLK, TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, 
        RX_CLK, RX_IN_S, Prescale, PAR_EN, PAR_TYP, RX_OUT_P, RX_OUT_V, RST, 
        parity_error, framing_error );
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  input TX_CLK, TX_IN_V, RX_CLK, RX_IN_S, PAR_EN, PAR_TYP, RST;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  uart_rx_parallel_data8 uart_rx_U ( .clk(RX_CLK), .rst(n1), .rx_in(RX_IN_S), 
        .par_en(PAR_EN), .par_typ(PAR_TYP), .prescale(Prescale), .p_data(
        RX_OUT_P), .par_err(parity_error), .stp_err(framing_error), 
        .data_valid(RX_OUT_V) );
  uart_tx_DATA_WIDTH8 uart_tx_U ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(
        TX_OUT_S), .BUSY(TX_OUT_V) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module FIFO_WR_DATA_DEPTH8_ADDR_WIDTH3 ( w_en, w_clk, wrst_n, wq2_r_ptr, 
        w_addr, w_ptr, w_full, w_ptr_gray );
  input [3:0] wq2_r_ptr;
  output [2:0] w_addr;
  output [3:0] w_ptr;
  output [3:0] w_ptr_gray;
  input w_en, w_clk, wrst_n;
  output w_full;
  wire   N5, n1, n2, n3, n4, n5, n6, n7, n8, n12, n13;
  wire   [3:0] w_ptr_next;
  wire   [2:0] gray_w_ptr_next;

  DFFRQX2M \w_ptr_reg[3]  ( .D(w_ptr_next[3]), .CK(w_clk), .RN(n12), .Q(
        w_ptr[3]) );
  DFFRQX2M \w_ptr_reg[2]  ( .D(w_ptr_next[2]), .CK(w_clk), .RN(n12), .Q(
        w_addr[2]) );
  DFFRQX2M w_full_reg ( .D(N5), .CK(w_clk), .RN(n12), .Q(w_full) );
  DFFRQX2M \w_ptr_gray_reg[3]  ( .D(w_ptr_next[3]), .CK(w_clk), .RN(n12), .Q(
        w_ptr_gray[3]) );
  DFFRQX2M \w_ptr_reg[0]  ( .D(w_ptr_next[0]), .CK(w_clk), .RN(n12), .Q(
        w_addr[0]) );
  DFFRQX2M \w_ptr_reg[1]  ( .D(w_ptr_next[1]), .CK(w_clk), .RN(n12), .Q(
        w_addr[1]) );
  DFFRQX2M \w_ptr_gray_reg[2]  ( .D(gray_w_ptr_next[2]), .CK(w_clk), .RN(n12), 
        .Q(w_ptr_gray[2]) );
  DFFRQX2M \w_ptr_gray_reg[1]  ( .D(gray_w_ptr_next[1]), .CK(w_clk), .RN(n12), 
        .Q(w_ptr_gray[1]) );
  DFFRQX2M \w_ptr_gray_reg[0]  ( .D(gray_w_ptr_next[0]), .CK(w_clk), .RN(n12), 
        .Q(w_ptr_gray[0]) );
  BUFX2M U3 ( .A(w_addr[1]), .Y(w_ptr[1]) );
  BUFX2M U4 ( .A(w_addr[0]), .Y(w_ptr[0]) );
  BUFX2M U5 ( .A(w_addr[2]), .Y(w_ptr[2]) );
  INVX2M U6 ( .A(n13), .Y(n12) );
  INVX2M U7 ( .A(wrst_n), .Y(n13) );
  CLKXOR2X2M U8 ( .A(w_ptr_next[2]), .B(w_ptr_next[1]), .Y(gray_w_ptr_next[1])
         );
  CLKXOR2X2M U9 ( .A(w_ptr_next[1]), .B(w_ptr_next[0]), .Y(gray_w_ptr_next[0])
         );
  CLKXOR2X2M U10 ( .A(w_ptr_next[3]), .B(w_ptr_next[2]), .Y(gray_w_ptr_next[2]) );
  CLKXOR2X2M U11 ( .A(n6), .B(w_addr[1]), .Y(w_ptr_next[1]) );
  XNOR2X2M U12 ( .A(n8), .B(w_ptr[3]), .Y(w_ptr_next[3]) );
  NAND3X2M U13 ( .A(w_addr[1]), .B(n6), .C(w_addr[2]), .Y(n8) );
  CLKXOR2X2M U14 ( .A(n5), .B(w_addr[0]), .Y(w_ptr_next[0]) );
  CLKXOR2X2M U15 ( .A(wq2_r_ptr[1]), .B(gray_w_ptr_next[1]), .Y(n4) );
  NOR2BX2M U16 ( .AN(w_en), .B(w_full), .Y(n5) );
  XNOR2X2M U17 ( .A(n7), .B(w_addr[2]), .Y(w_ptr_next[2]) );
  NAND2X2M U18 ( .A(w_addr[1]), .B(n6), .Y(n7) );
  NOR4X1M U19 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(N5) );
  XNOR2X2M U20 ( .A(w_ptr_next[3]), .B(wq2_r_ptr[3]), .Y(n1) );
  CLKXOR2X2M U21 ( .A(wq2_r_ptr[0]), .B(gray_w_ptr_next[0]), .Y(n3) );
  XNOR2X2M U22 ( .A(gray_w_ptr_next[2]), .B(wq2_r_ptr[2]), .Y(n2) );
  AND2X2M U23 ( .A(w_addr[0]), .B(n5), .Y(n6) );
endmodule


module FIFO_RD_DATA_DEPTH8_ADDR_WIDTH3 ( r_en, r_clk, rrst_n, rq2_w_ptr, 
        r_addr, r_ptr, r_empty, gray_r_ptr );
  input [3:0] rq2_w_ptr;
  output [2:0] r_addr;
  output [3:0] r_ptr;
  output [3:0] gray_r_ptr;
  input r_en, r_clk, rrst_n;
  output r_empty;
  wire   N2, n1, n2, n3, n4, n5, n6, n7, n8, n12, n13;
  wire   [3:0] r_ptr_next;
  wire   [2:0] gray_r_ptr_next;

  DFFSQX2M r_empty_reg ( .D(N2), .CK(r_clk), .SN(n12), .Q(r_empty) );
  DFFRQX2M \r_ptr_reg[3]  ( .D(r_ptr_next[3]), .CK(r_clk), .RN(n12), .Q(
        r_ptr[3]) );
  DFFRQX2M \r_ptr_reg[0]  ( .D(r_ptr_next[0]), .CK(r_clk), .RN(n12), .Q(
        r_addr[0]) );
  DFFRQX2M \r_ptr_reg[2]  ( .D(r_ptr_next[2]), .CK(r_clk), .RN(n12), .Q(
        r_addr[2]) );
  DFFRQX2M \gray_r_ptr_reg[3]  ( .D(r_ptr_next[3]), .CK(r_clk), .RN(n12), .Q(
        gray_r_ptr[3]) );
  DFFRQX2M \r_ptr_reg[1]  ( .D(r_ptr_next[1]), .CK(r_clk), .RN(n12), .Q(
        r_addr[1]) );
  DFFRQX2M \gray_r_ptr_reg[0]  ( .D(gray_r_ptr_next[0]), .CK(r_clk), .RN(n12), 
        .Q(gray_r_ptr[0]) );
  DFFRQX2M \gray_r_ptr_reg[1]  ( .D(gray_r_ptr_next[1]), .CK(r_clk), .RN(n12), 
        .Q(gray_r_ptr[1]) );
  DFFRQX2M \gray_r_ptr_reg[2]  ( .D(gray_r_ptr_next[2]), .CK(r_clk), .RN(n12), 
        .Q(gray_r_ptr[2]) );
  BUFX2M U3 ( .A(r_addr[1]), .Y(r_ptr[1]) );
  BUFX2M U4 ( .A(r_addr[2]), .Y(r_ptr[2]) );
  BUFX2M U5 ( .A(r_addr[0]), .Y(r_ptr[0]) );
  INVX2M U6 ( .A(n13), .Y(n12) );
  INVX2M U7 ( .A(rrst_n), .Y(n13) );
  CLKXOR2X2M U8 ( .A(r_ptr_next[2]), .B(r_ptr_next[1]), .Y(gray_r_ptr_next[1])
         );
  CLKXOR2X2M U9 ( .A(r_ptr_next[3]), .B(r_ptr_next[2]), .Y(gray_r_ptr_next[2])
         );
  CLKXOR2X2M U10 ( .A(r_ptr_next[1]), .B(r_ptr_next[0]), .Y(gray_r_ptr_next[0]) );
  XNOR2X2M U11 ( .A(n8), .B(r_ptr[3]), .Y(r_ptr_next[3]) );
  NAND3X2M U12 ( .A(r_addr[1]), .B(n6), .C(r_addr[2]), .Y(n8) );
  CLKXOR2X2M U13 ( .A(n6), .B(r_addr[1]), .Y(r_ptr_next[1]) );
  XNOR2X2M U14 ( .A(n7), .B(r_addr[2]), .Y(r_ptr_next[2]) );
  NAND2X2M U15 ( .A(r_addr[1]), .B(n6), .Y(n7) );
  CLKXOR2X2M U16 ( .A(n5), .B(r_addr[0]), .Y(r_ptr_next[0]) );
  CLKXOR2X2M U17 ( .A(rq2_w_ptr[0]), .B(gray_r_ptr_next[0]), .Y(n3) );
  NOR2BX2M U18 ( .AN(r_en), .B(r_empty), .Y(n5) );
  NOR4X1M U19 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(N2) );
  CLKXOR2X2M U20 ( .A(rq2_w_ptr[3]), .B(r_ptr_next[3]), .Y(n2) );
  CLKXOR2X2M U21 ( .A(rq2_w_ptr[2]), .B(gray_r_ptr_next[2]), .Y(n1) );
  CLKXOR2X2M U22 ( .A(rq2_w_ptr[1]), .B(gray_r_ptr_next[1]), .Y(n4) );
  AND2X2M U23 ( .A(r_addr[0]), .B(n5), .Y(n6) );
endmodule


module DF_SYNC_BUS_WIDTH4_0 ( unsync_bus, clk, rst_n, sync_bus );
  input [3:0] unsync_bus;
  output [3:0] sync_bus;
  input clk, rst_n;
  wire   n1, n2;
  wire   [3:0] sync_ff1;

  DFFRQX2M \sync_ff2_reg[1]  ( .D(sync_ff1[1]), .CK(clk), .RN(n1), .Q(
        sync_bus[1]) );
  DFFRQX2M \sync_ff2_reg[0]  ( .D(sync_ff1[0]), .CK(clk), .RN(n1), .Q(
        sync_bus[0]) );
  DFFRQX2M \sync_ff2_reg[3]  ( .D(sync_ff1[3]), .CK(clk), .RN(n1), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_ff2_reg[2]  ( .D(sync_ff1[2]), .CK(clk), .RN(n1), .Q(
        sync_bus[2]) );
  DFFRQX2M \sync_ff1_reg[3]  ( .D(unsync_bus[3]), .CK(clk), .RN(n1), .Q(
        sync_ff1[3]) );
  DFFRQX2M \sync_ff1_reg[2]  ( .D(unsync_bus[2]), .CK(clk), .RN(n1), .Q(
        sync_ff1[2]) );
  DFFRQX2M \sync_ff1_reg[1]  ( .D(unsync_bus[1]), .CK(clk), .RN(n1), .Q(
        sync_ff1[1]) );
  DFFRQX2M \sync_ff1_reg[0]  ( .D(unsync_bus[0]), .CK(clk), .RN(n1), .Q(
        sync_ff1[0]) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst_n), .Y(n2) );
endmodule


module DF_SYNC_BUS_WIDTH4_1 ( unsync_bus, clk, rst_n, sync_bus );
  input [3:0] unsync_bus;
  output [3:0] sync_bus;
  input clk, rst_n;

  wire   [3:0] sync_ff1;

  DFFRQX2M \sync_ff2_reg[3]  ( .D(sync_ff1[3]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_ff2_reg[2]  ( .D(sync_ff1[2]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[2]) );
  DFFRQX2M \sync_ff2_reg[1]  ( .D(sync_ff1[1]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[1]) );
  DFFRQX2M \sync_ff2_reg[0]  ( .D(sync_ff1[0]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[0]) );
  DFFRQX2M \sync_ff1_reg[3]  ( .D(unsync_bus[3]), .CK(clk), .RN(rst_n), .Q(
        sync_ff1[3]) );
  DFFRQX2M \sync_ff1_reg[2]  ( .D(unsync_bus[2]), .CK(clk), .RN(rst_n), .Q(
        sync_ff1[2]) );
  DFFRQX2M \sync_ff1_reg[1]  ( .D(unsync_bus[1]), .CK(clk), .RN(rst_n), .Q(
        sync_ff1[1]) );
  DFFRQX2M \sync_ff1_reg[0]  ( .D(unsync_bus[0]), .CK(clk), .RN(rst_n), .Q(
        sync_ff1[0]) );
endmodule


module fifo_memory_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3 ( w_data, w_addr, 
        r_addr, w_clk_en, w_clk, rst, r_data );
  input [7:0] w_data;
  input [2:0] w_addr;
  input [2:0] r_addr;
  output [7:0] r_data;
  input w_clk_en, w_clk, rst;
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
         \memory[0][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \memory_reg[1][7]  ( .D(n36), .CK(w_clk), .RN(n126), .Q(
        \memory[1][7] ) );
  DFFRQX2M \memory_reg[1][6]  ( .D(n35), .CK(w_clk), .RN(n130), .Q(
        \memory[1][6] ) );
  DFFRQX2M \memory_reg[1][5]  ( .D(n34), .CK(w_clk), .RN(n126), .Q(
        \memory[1][5] ) );
  DFFRQX2M \memory_reg[1][4]  ( .D(n33), .CK(w_clk), .RN(n130), .Q(
        \memory[1][4] ) );
  DFFRQX2M \memory_reg[1][3]  ( .D(n32), .CK(w_clk), .RN(n130), .Q(
        \memory[1][3] ) );
  DFFRQX2M \memory_reg[1][2]  ( .D(n31), .CK(w_clk), .RN(n126), .Q(
        \memory[1][2] ) );
  DFFRQX2M \memory_reg[1][1]  ( .D(n30), .CK(w_clk), .RN(n130), .Q(
        \memory[1][1] ) );
  DFFRQX2M \memory_reg[1][0]  ( .D(n29), .CK(w_clk), .RN(n130), .Q(
        \memory[1][0] ) );
  DFFRQX2M \memory_reg[0][7]  ( .D(n28), .CK(w_clk), .RN(n126), .Q(
        \memory[0][7] ) );
  DFFRQX2M \memory_reg[0][6]  ( .D(n27), .CK(w_clk), .RN(n130), .Q(
        \memory[0][6] ) );
  DFFRQX2M \memory_reg[0][5]  ( .D(n26), .CK(w_clk), .RN(n130), .Q(
        \memory[0][5] ) );
  DFFRQX2M \memory_reg[0][4]  ( .D(n25), .CK(w_clk), .RN(n126), .Q(
        \memory[0][4] ) );
  DFFRQX2M \memory_reg[0][3]  ( .D(n24), .CK(w_clk), .RN(n126), .Q(
        \memory[0][3] ) );
  DFFRQX2M \memory_reg[0][2]  ( .D(n23), .CK(w_clk), .RN(n130), .Q(
        \memory[0][2] ) );
  DFFRQX2M \memory_reg[0][1]  ( .D(n22), .CK(w_clk), .RN(n126), .Q(
        \memory[0][1] ) );
  DFFRQX2M \memory_reg[0][0]  ( .D(n21), .CK(w_clk), .RN(n126), .Q(
        \memory[0][0] ) );
  DFFRQX2M \memory_reg[5][7]  ( .D(n68), .CK(w_clk), .RN(n129), .Q(
        \memory[5][7] ) );
  DFFRQX2M \memory_reg[5][6]  ( .D(n67), .CK(w_clk), .RN(n129), .Q(
        \memory[5][6] ) );
  DFFRQX2M \memory_reg[5][5]  ( .D(n66), .CK(w_clk), .RN(n129), .Q(
        \memory[5][5] ) );
  DFFRQX2M \memory_reg[5][4]  ( .D(n65), .CK(w_clk), .RN(n129), .Q(
        \memory[5][4] ) );
  DFFRQX2M \memory_reg[5][3]  ( .D(n64), .CK(w_clk), .RN(n129), .Q(
        \memory[5][3] ) );
  DFFRQX2M \memory_reg[5][2]  ( .D(n63), .CK(w_clk), .RN(n129), .Q(
        \memory[5][2] ) );
  DFFRQX2M \memory_reg[5][1]  ( .D(n62), .CK(w_clk), .RN(n129), .Q(
        \memory[5][1] ) );
  DFFRQX2M \memory_reg[5][0]  ( .D(n61), .CK(w_clk), .RN(n129), .Q(
        \memory[5][0] ) );
  DFFRQX2M \memory_reg[4][7]  ( .D(n60), .CK(w_clk), .RN(n130), .Q(
        \memory[4][7] ) );
  DFFRQX2M \memory_reg[4][6]  ( .D(n59), .CK(w_clk), .RN(n130), .Q(
        \memory[4][6] ) );
  DFFRQX2M \memory_reg[4][5]  ( .D(n58), .CK(w_clk), .RN(n130), .Q(
        \memory[4][5] ) );
  DFFRQX2M \memory_reg[4][4]  ( .D(n57), .CK(w_clk), .RN(n130), .Q(
        \memory[4][4] ) );
  DFFRQX2M \memory_reg[4][3]  ( .D(n56), .CK(w_clk), .RN(n130), .Q(
        \memory[4][3] ) );
  DFFRQX2M \memory_reg[4][2]  ( .D(n55), .CK(w_clk), .RN(n130), .Q(
        \memory[4][2] ) );
  DFFRQX2M \memory_reg[4][1]  ( .D(n54), .CK(w_clk), .RN(n130), .Q(
        \memory[4][1] ) );
  DFFRQX2M \memory_reg[4][0]  ( .D(n53), .CK(w_clk), .RN(n130), .Q(
        \memory[4][0] ) );
  DFFRQX2M \memory_reg[7][7]  ( .D(n84), .CK(w_clk), .RN(n128), .Q(
        \memory[7][7] ) );
  DFFRQX2M \memory_reg[7][6]  ( .D(n83), .CK(w_clk), .RN(n128), .Q(
        \memory[7][6] ) );
  DFFRQX2M \memory_reg[7][5]  ( .D(n82), .CK(w_clk), .RN(n128), .Q(
        \memory[7][5] ) );
  DFFRQX2M \memory_reg[7][4]  ( .D(n81), .CK(w_clk), .RN(n128), .Q(
        \memory[7][4] ) );
  DFFRQX2M \memory_reg[7][3]  ( .D(n80), .CK(w_clk), .RN(n128), .Q(
        \memory[7][3] ) );
  DFFRQX2M \memory_reg[7][2]  ( .D(n79), .CK(w_clk), .RN(n128), .Q(
        \memory[7][2] ) );
  DFFRQX2M \memory_reg[7][1]  ( .D(n78), .CK(w_clk), .RN(n128), .Q(
        \memory[7][1] ) );
  DFFRQX2M \memory_reg[7][0]  ( .D(n77), .CK(w_clk), .RN(n128), .Q(
        \memory[7][0] ) );
  DFFRQX2M \memory_reg[6][7]  ( .D(n76), .CK(w_clk), .RN(n128), .Q(
        \memory[6][7] ) );
  DFFRQX2M \memory_reg[6][6]  ( .D(n75), .CK(w_clk), .RN(n128), .Q(
        \memory[6][6] ) );
  DFFRQX2M \memory_reg[6][5]  ( .D(n74), .CK(w_clk), .RN(n128), .Q(
        \memory[6][5] ) );
  DFFRQX2M \memory_reg[6][4]  ( .D(n73), .CK(w_clk), .RN(n128), .Q(
        \memory[6][4] ) );
  DFFRQX2M \memory_reg[6][3]  ( .D(n72), .CK(w_clk), .RN(n129), .Q(
        \memory[6][3] ) );
  DFFRQX2M \memory_reg[6][2]  ( .D(n71), .CK(w_clk), .RN(n129), .Q(
        \memory[6][2] ) );
  DFFRQX2M \memory_reg[6][1]  ( .D(n70), .CK(w_clk), .RN(n129), .Q(
        \memory[6][1] ) );
  DFFRQX2M \memory_reg[6][0]  ( .D(n69), .CK(w_clk), .RN(n129), .Q(
        \memory[6][0] ) );
  DFFRQX2M \memory_reg[3][7]  ( .D(n52), .CK(w_clk), .RN(n130), .Q(
        \memory[3][7] ) );
  DFFRQX2M \memory_reg[3][6]  ( .D(n51), .CK(w_clk), .RN(n130), .Q(
        \memory[3][6] ) );
  DFFRQX2M \memory_reg[3][5]  ( .D(n50), .CK(w_clk), .RN(n130), .Q(
        \memory[3][5] ) );
  DFFRQX2M \memory_reg[3][4]  ( .D(n49), .CK(w_clk), .RN(n130), .Q(
        \memory[3][4] ) );
  DFFRQX2M \memory_reg[3][3]  ( .D(n48), .CK(w_clk), .RN(n131), .Q(
        \memory[3][3] ) );
  DFFRQX2M \memory_reg[3][2]  ( .D(n47), .CK(w_clk), .RN(n131), .Q(
        \memory[3][2] ) );
  DFFRQX2M \memory_reg[3][1]  ( .D(n46), .CK(w_clk), .RN(n131), .Q(
        \memory[3][1] ) );
  DFFRQX2M \memory_reg[3][0]  ( .D(n45), .CK(w_clk), .RN(n131), .Q(
        \memory[3][0] ) );
  DFFRQX2M \memory_reg[2][7]  ( .D(n44), .CK(w_clk), .RN(n131), .Q(
        \memory[2][7] ) );
  DFFRQX2M \memory_reg[2][6]  ( .D(n43), .CK(w_clk), .RN(n131), .Q(
        \memory[2][6] ) );
  DFFRQX2M \memory_reg[2][5]  ( .D(n42), .CK(w_clk), .RN(n131), .Q(
        \memory[2][5] ) );
  DFFRQX2M \memory_reg[2][4]  ( .D(n41), .CK(w_clk), .RN(n131), .Q(
        \memory[2][4] ) );
  DFFRQX2M \memory_reg[2][3]  ( .D(n40), .CK(w_clk), .RN(n131), .Q(
        \memory[2][3] ) );
  DFFRQX2M \memory_reg[2][2]  ( .D(n39), .CK(w_clk), .RN(n131), .Q(
        \memory[2][2] ) );
  DFFRQX2M \memory_reg[2][1]  ( .D(n38), .CK(w_clk), .RN(n131), .Q(
        \memory[2][1] ) );
  DFFRQX2M \memory_reg[2][0]  ( .D(n37), .CK(w_clk), .RN(n131), .Q(
        \memory[2][0] ) );
  BUFX4M U2 ( .A(n14), .Y(n124) );
  BUFX4M U3 ( .A(n15), .Y(n123) );
  BUFX4M U4 ( .A(n19), .Y(n120) );
  BUFX4M U5 ( .A(n20), .Y(n119) );
  BUFX4M U6 ( .A(n18), .Y(n121) );
  INVX2M U7 ( .A(w_data[4]), .Y(n138) );
  INVX2M U8 ( .A(w_data[5]), .Y(n139) );
  INVX2M U9 ( .A(w_data[6]), .Y(n140) );
  INVX2M U10 ( .A(w_data[7]), .Y(n141) );
  INVX2M U11 ( .A(w_data[0]), .Y(n134) );
  INVX2M U12 ( .A(w_data[1]), .Y(n135) );
  INVX2M U13 ( .A(w_data[2]), .Y(n136) );
  INVX2M U14 ( .A(w_data[3]), .Y(n137) );
  BUFX4M U15 ( .A(n126), .Y(n131) );
  BUFX4M U16 ( .A(rst), .Y(n130) );
  BUFX4M U17 ( .A(n126), .Y(n129) );
  BUFX4M U18 ( .A(n126), .Y(n128) );
  BUFX2M U19 ( .A(n16), .Y(n122) );
  INVX2M U20 ( .A(n127), .Y(n126) );
  INVX2M U21 ( .A(rst), .Y(n127) );
  BUFX4M U22 ( .A(n11), .Y(n118) );
  NAND3X2M U23 ( .A(n132), .B(n133), .C(n13), .Y(n11) );
  NAND3X2M U24 ( .A(n132), .B(n133), .C(n17), .Y(n16) );
  BUFX4M U25 ( .A(n107), .Y(n115) );
  NOR2X2M U26 ( .A(n111), .B(n112), .Y(n107) );
  INVX2M U27 ( .A(N10), .Y(n113) );
  NOR2BX2M U28 ( .AN(w_clk_en), .B(w_addr[2]), .Y(n13) );
  OAI2BB2X1M U29 ( .B0(n134), .B1(n124), .A0N(\memory[2][0] ), .A1N(n124), .Y(
        n37) );
  OAI2BB2X1M U30 ( .B0(n135), .B1(n124), .A0N(\memory[2][1] ), .A1N(n124), .Y(
        n38) );
  OAI2BB2X1M U31 ( .B0(n136), .B1(n124), .A0N(\memory[2][2] ), .A1N(n124), .Y(
        n39) );
  OAI2BB2X1M U32 ( .B0(n137), .B1(n124), .A0N(\memory[2][3] ), .A1N(n124), .Y(
        n40) );
  OAI2BB2X1M U33 ( .B0(n134), .B1(n123), .A0N(\memory[3][0] ), .A1N(n123), .Y(
        n45) );
  OAI2BB2X1M U34 ( .B0(n135), .B1(n123), .A0N(\memory[3][1] ), .A1N(n123), .Y(
        n46) );
  OAI2BB2X1M U35 ( .B0(n136), .B1(n123), .A0N(\memory[3][2] ), .A1N(n123), .Y(
        n47) );
  OAI2BB2X1M U36 ( .B0(n137), .B1(n123), .A0N(\memory[3][3] ), .A1N(n123), .Y(
        n48) );
  OAI2BB2X1M U37 ( .B0(n134), .B1(n122), .A0N(\memory[4][0] ), .A1N(n122), .Y(
        n53) );
  OAI2BB2X1M U38 ( .B0(n135), .B1(n16), .A0N(\memory[4][1] ), .A1N(n122), .Y(
        n54) );
  OAI2BB2X1M U39 ( .B0(n136), .B1(n16), .A0N(\memory[4][2] ), .A1N(n122), .Y(
        n55) );
  OAI2BB2X1M U40 ( .B0(n137), .B1(n16), .A0N(\memory[4][3] ), .A1N(n122), .Y(
        n56) );
  OAI2BB2X1M U41 ( .B0(n134), .B1(n121), .A0N(\memory[5][0] ), .A1N(n121), .Y(
        n61) );
  OAI2BB2X1M U42 ( .B0(n135), .B1(n121), .A0N(\memory[5][1] ), .A1N(n121), .Y(
        n62) );
  OAI2BB2X1M U43 ( .B0(n136), .B1(n121), .A0N(\memory[5][2] ), .A1N(n121), .Y(
        n63) );
  OAI2BB2X1M U44 ( .B0(n137), .B1(n121), .A0N(\memory[5][3] ), .A1N(n121), .Y(
        n64) );
  OAI2BB2X1M U45 ( .B0(n134), .B1(n120), .A0N(\memory[6][0] ), .A1N(n120), .Y(
        n69) );
  OAI2BB2X1M U46 ( .B0(n135), .B1(n120), .A0N(\memory[6][1] ), .A1N(n120), .Y(
        n70) );
  OAI2BB2X1M U47 ( .B0(n136), .B1(n120), .A0N(\memory[6][2] ), .A1N(n120), .Y(
        n71) );
  OAI2BB2X1M U48 ( .B0(n137), .B1(n120), .A0N(\memory[6][3] ), .A1N(n120), .Y(
        n72) );
  OAI2BB2X1M U49 ( .B0(n134), .B1(n119), .A0N(\memory[7][0] ), .A1N(n119), .Y(
        n77) );
  OAI2BB2X1M U50 ( .B0(n135), .B1(n119), .A0N(\memory[7][1] ), .A1N(n119), .Y(
        n78) );
  OAI2BB2X1M U51 ( .B0(n136), .B1(n119), .A0N(\memory[7][2] ), .A1N(n119), .Y(
        n79) );
  OAI2BB2X1M U52 ( .B0(n137), .B1(n119), .A0N(\memory[7][3] ), .A1N(n119), .Y(
        n80) );
  OAI2BB2X1M U53 ( .B0(n138), .B1(n125), .A0N(\memory[1][4] ), .A1N(n125), .Y(
        n33) );
  OAI2BB2X1M U54 ( .B0(n139), .B1(n125), .A0N(\memory[1][5] ), .A1N(n125), .Y(
        n34) );
  OAI2BB2X1M U55 ( .B0(n140), .B1(n125), .A0N(\memory[1][6] ), .A1N(n125), .Y(
        n35) );
  OAI2BB2X1M U56 ( .B0(n141), .B1(n125), .A0N(\memory[1][7] ), .A1N(n125), .Y(
        n36) );
  OAI2BB2X1M U57 ( .B0(n138), .B1(n124), .A0N(\memory[2][4] ), .A1N(n124), .Y(
        n41) );
  OAI2BB2X1M U58 ( .B0(n139), .B1(n124), .A0N(\memory[2][5] ), .A1N(n124), .Y(
        n42) );
  OAI2BB2X1M U59 ( .B0(n140), .B1(n124), .A0N(\memory[2][6] ), .A1N(n124), .Y(
        n43) );
  OAI2BB2X1M U60 ( .B0(n141), .B1(n124), .A0N(\memory[2][7] ), .A1N(n124), .Y(
        n44) );
  OAI2BB2X1M U61 ( .B0(n138), .B1(n123), .A0N(\memory[3][4] ), .A1N(n123), .Y(
        n49) );
  OAI2BB2X1M U62 ( .B0(n139), .B1(n123), .A0N(\memory[3][5] ), .A1N(n123), .Y(
        n50) );
  OAI2BB2X1M U63 ( .B0(n140), .B1(n123), .A0N(\memory[3][6] ), .A1N(n123), .Y(
        n51) );
  OAI2BB2X1M U64 ( .B0(n141), .B1(n123), .A0N(\memory[3][7] ), .A1N(n123), .Y(
        n52) );
  OAI2BB2X1M U65 ( .B0(n138), .B1(n122), .A0N(\memory[4][4] ), .A1N(n122), .Y(
        n57) );
  OAI2BB2X1M U66 ( .B0(n139), .B1(n122), .A0N(\memory[4][5] ), .A1N(n122), .Y(
        n58) );
  OAI2BB2X1M U67 ( .B0(n140), .B1(n16), .A0N(\memory[4][6] ), .A1N(n122), .Y(
        n59) );
  OAI2BB2X1M U68 ( .B0(n141), .B1(n16), .A0N(\memory[4][7] ), .A1N(n122), .Y(
        n60) );
  OAI2BB2X1M U69 ( .B0(n138), .B1(n121), .A0N(\memory[5][4] ), .A1N(n121), .Y(
        n65) );
  OAI2BB2X1M U70 ( .B0(n139), .B1(n121), .A0N(\memory[5][5] ), .A1N(n121), .Y(
        n66) );
  OAI2BB2X1M U71 ( .B0(n140), .B1(n121), .A0N(\memory[5][6] ), .A1N(n121), .Y(
        n67) );
  OAI2BB2X1M U72 ( .B0(n141), .B1(n121), .A0N(\memory[5][7] ), .A1N(n121), .Y(
        n68) );
  OAI2BB2X1M U73 ( .B0(n138), .B1(n120), .A0N(\memory[6][4] ), .A1N(n120), .Y(
        n73) );
  OAI2BB2X1M U74 ( .B0(n139), .B1(n120), .A0N(\memory[6][5] ), .A1N(n120), .Y(
        n74) );
  OAI2BB2X1M U75 ( .B0(n140), .B1(n120), .A0N(\memory[6][6] ), .A1N(n120), .Y(
        n75) );
  OAI2BB2X1M U76 ( .B0(n141), .B1(n120), .A0N(\memory[6][7] ), .A1N(n120), .Y(
        n76) );
  OAI2BB2X1M U77 ( .B0(n138), .B1(n119), .A0N(\memory[7][4] ), .A1N(n119), .Y(
        n81) );
  OAI2BB2X1M U78 ( .B0(n139), .B1(n119), .A0N(\memory[7][5] ), .A1N(n119), .Y(
        n82) );
  OAI2BB2X1M U79 ( .B0(n140), .B1(n119), .A0N(\memory[7][6] ), .A1N(n119), .Y(
        n83) );
  OAI2BB2X1M U80 ( .B0(n141), .B1(n119), .A0N(\memory[7][7] ), .A1N(n119), .Y(
        n84) );
  NAND3X2M U81 ( .A(n13), .B(n132), .C(w_addr[1]), .Y(n14) );
  NAND3X2M U82 ( .A(w_addr[0]), .B(n13), .C(w_addr[1]), .Y(n15) );
  NAND3X2M U83 ( .A(w_addr[1]), .B(w_addr[0]), .C(n17), .Y(n20) );
  NAND3X2M U84 ( .A(w_addr[1]), .B(n132), .C(n17), .Y(n19) );
  NAND3X2M U85 ( .A(w_addr[0]), .B(n133), .C(n17), .Y(n18) );
  BUFX4M U86 ( .A(n12), .Y(n125) );
  NAND3X2M U87 ( .A(n13), .B(n133), .C(w_addr[0]), .Y(n12) );
  OAI2BB2X1M U88 ( .B0(n118), .B1(n134), .A0N(\memory[0][0] ), .A1N(n118), .Y(
        n21) );
  OAI2BB2X1M U89 ( .B0(n118), .B1(n135), .A0N(\memory[0][1] ), .A1N(n118), .Y(
        n22) );
  OAI2BB2X1M U90 ( .B0(n118), .B1(n136), .A0N(\memory[0][2] ), .A1N(n118), .Y(
        n23) );
  OAI2BB2X1M U91 ( .B0(n118), .B1(n137), .A0N(\memory[0][3] ), .A1N(n118), .Y(
        n24) );
  OAI2BB2X1M U92 ( .B0(n125), .B1(n134), .A0N(\memory[1][0] ), .A1N(n125), .Y(
        n29) );
  OAI2BB2X1M U93 ( .B0(n125), .B1(n135), .A0N(\memory[1][1] ), .A1N(n125), .Y(
        n30) );
  OAI2BB2X1M U94 ( .B0(n125), .B1(n136), .A0N(\memory[1][2] ), .A1N(n125), .Y(
        n31) );
  OAI2BB2X1M U95 ( .B0(n125), .B1(n137), .A0N(\memory[1][3] ), .A1N(n125), .Y(
        n32) );
  OAI2BB2X1M U96 ( .B0(n118), .B1(n138), .A0N(\memory[0][4] ), .A1N(n118), .Y(
        n25) );
  OAI2BB2X1M U97 ( .B0(n118), .B1(n139), .A0N(\memory[0][5] ), .A1N(n118), .Y(
        n26) );
  OAI2BB2X1M U98 ( .B0(n118), .B1(n140), .A0N(\memory[0][6] ), .A1N(n118), .Y(
        n27) );
  OAI2BB2X1M U99 ( .B0(n118), .B1(n141), .A0N(\memory[0][7] ), .A1N(n118), .Y(
        n28) );
  AND2X2M U100 ( .A(w_addr[2]), .B(w_clk_en), .Y(n17) );
  INVX2M U101 ( .A(w_addr[1]), .Y(n133) );
  INVX2M U102 ( .A(w_addr[0]), .Y(n132) );
  BUFX4M U103 ( .A(n104), .Y(n117) );
  NOR2X2M U104 ( .A(N11), .B(N12), .Y(n104) );
  INVX2M U105 ( .A(N11), .Y(n112) );
  INVX2M U106 ( .A(N12), .Y(n111) );
  BUFX4M U107 ( .A(n105), .Y(n116) );
  NOR2X2M U108 ( .A(n112), .B(N12), .Y(n105) );
  BUFX4M U109 ( .A(n108), .Y(n114) );
  NOR2X2M U110 ( .A(n111), .B(N11), .Y(n108) );
  AO22X1M U111 ( .A0(\memory[3][0] ), .A1(n116), .B0(\memory[1][0] ), .B1(n117), .Y(n1) );
  AOI221XLM U112 ( .A0(\memory[5][0] ), .A1(n114), .B0(\memory[7][0] ), .B1(
        n115), .C0(n1), .Y(n4) );
  AO22X1M U113 ( .A0(\memory[2][0] ), .A1(n116), .B0(\memory[0][0] ), .B1(n117), .Y(n2) );
  AOI221XLM U114 ( .A0(\memory[4][0] ), .A1(n114), .B0(\memory[6][0] ), .B1(
        n115), .C0(n2), .Y(n3) );
  OAI22X1M U115 ( .A0(n113), .A1(n4), .B0(N10), .B1(n3), .Y(r_data[0]) );
  AO22X1M U116 ( .A0(\memory[3][1] ), .A1(n116), .B0(\memory[1][1] ), .B1(n117), .Y(n5) );
  AOI221XLM U117 ( .A0(\memory[5][1] ), .A1(n114), .B0(\memory[7][1] ), .B1(
        n115), .C0(n5), .Y(n8) );
  AO22X1M U118 ( .A0(\memory[2][1] ), .A1(n116), .B0(\memory[0][1] ), .B1(n117), .Y(n6) );
  AOI221XLM U119 ( .A0(\memory[4][1] ), .A1(n114), .B0(\memory[6][1] ), .B1(
        n115), .C0(n6), .Y(n7) );
  OAI22X1M U120 ( .A0(n113), .A1(n8), .B0(N10), .B1(n7), .Y(r_data[1]) );
  AO22X1M U121 ( .A0(\memory[3][2] ), .A1(n116), .B0(\memory[1][2] ), .B1(n117), .Y(n9) );
  AOI221XLM U122 ( .A0(\memory[5][2] ), .A1(n114), .B0(\memory[7][2] ), .B1(
        n115), .C0(n9), .Y(n86) );
  AO22X1M U123 ( .A0(\memory[2][2] ), .A1(n116), .B0(\memory[0][2] ), .B1(n117), .Y(n10) );
  AOI221XLM U124 ( .A0(\memory[4][2] ), .A1(n114), .B0(\memory[6][2] ), .B1(
        n115), .C0(n10), .Y(n85) );
  OAI22X1M U125 ( .A0(n113), .A1(n86), .B0(N10), .B1(n85), .Y(r_data[2]) );
  AO22X1M U126 ( .A0(\memory[3][3] ), .A1(n116), .B0(\memory[1][3] ), .B1(n117), .Y(n87) );
  AOI221XLM U127 ( .A0(\memory[5][3] ), .A1(n114), .B0(\memory[7][3] ), .B1(
        n115), .C0(n87), .Y(n90) );
  AO22X1M U128 ( .A0(\memory[2][3] ), .A1(n116), .B0(\memory[0][3] ), .B1(n117), .Y(n88) );
  AOI221XLM U129 ( .A0(\memory[4][3] ), .A1(n114), .B0(\memory[6][3] ), .B1(
        n115), .C0(n88), .Y(n89) );
  OAI22X1M U130 ( .A0(n113), .A1(n90), .B0(N10), .B1(n89), .Y(r_data[3]) );
  AO22X1M U131 ( .A0(\memory[3][4] ), .A1(n116), .B0(\memory[1][4] ), .B1(n117), .Y(n91) );
  AOI221XLM U132 ( .A0(\memory[5][4] ), .A1(n114), .B0(\memory[7][4] ), .B1(
        n115), .C0(n91), .Y(n94) );
  AO22X1M U133 ( .A0(\memory[2][4] ), .A1(n116), .B0(\memory[0][4] ), .B1(n117), .Y(n92) );
  AOI221XLM U134 ( .A0(\memory[4][4] ), .A1(n114), .B0(\memory[6][4] ), .B1(
        n115), .C0(n92), .Y(n93) );
  OAI22X1M U135 ( .A0(n113), .A1(n94), .B0(N10), .B1(n93), .Y(r_data[4]) );
  AO22X1M U136 ( .A0(\memory[3][5] ), .A1(n116), .B0(\memory[1][5] ), .B1(n117), .Y(n95) );
  AOI221XLM U137 ( .A0(\memory[5][5] ), .A1(n114), .B0(\memory[7][5] ), .B1(
        n115), .C0(n95), .Y(n98) );
  AO22X1M U138 ( .A0(\memory[2][5] ), .A1(n116), .B0(\memory[0][5] ), .B1(n117), .Y(n96) );
  AOI221XLM U139 ( .A0(\memory[4][5] ), .A1(n114), .B0(\memory[6][5] ), .B1(
        n115), .C0(n96), .Y(n97) );
  OAI22X1M U140 ( .A0(n113), .A1(n98), .B0(N10), .B1(n97), .Y(r_data[5]) );
  AO22X1M U141 ( .A0(\memory[3][6] ), .A1(n116), .B0(\memory[1][6] ), .B1(n117), .Y(n99) );
  AOI221XLM U142 ( .A0(\memory[5][6] ), .A1(n114), .B0(\memory[7][6] ), .B1(
        n115), .C0(n99), .Y(n102) );
  AO22X1M U143 ( .A0(\memory[2][6] ), .A1(n116), .B0(\memory[0][6] ), .B1(n117), .Y(n100) );
  AOI221XLM U144 ( .A0(\memory[4][6] ), .A1(n114), .B0(\memory[6][6] ), .B1(
        n115), .C0(n100), .Y(n101) );
  OAI22X1M U145 ( .A0(n113), .A1(n102), .B0(N10), .B1(n101), .Y(r_data[6]) );
  AO22X1M U146 ( .A0(\memory[3][7] ), .A1(n116), .B0(\memory[1][7] ), .B1(n117), .Y(n103) );
  AOI221XLM U147 ( .A0(\memory[5][7] ), .A1(n114), .B0(\memory[7][7] ), .B1(
        n115), .C0(n103), .Y(n110) );
  AO22X1M U148 ( .A0(\memory[2][7] ), .A1(n116), .B0(\memory[0][7] ), .B1(n117), .Y(n106) );
  AOI221XLM U149 ( .A0(\memory[4][7] ), .A1(n114), .B0(\memory[6][7] ), .B1(
        n115), .C0(n106), .Y(n109) );
  OAI22X1M U150 ( .A0(n110), .A1(n113), .B0(N10), .B1(n109), .Y(r_data[7]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3 ( W_CLK, W_RST, W_INC, 
        R_CLK, R_RST, R_INC, WR_DATA, RD_DATA, FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   w_clk_en, n1, n2, n3, n4;
  wire   [3:0] wq2_r_ptr;
  wire   [2:0] w_addr;
  wire   [3:0] w_ptr_gray;
  wire   [3:0] rq2_w_ptr;
  wire   [2:0] r_addr;
  wire   [3:0] r_ptr_gray;

  FIFO_WR_DATA_DEPTH8_ADDR_WIDTH3 u_fifo_wr ( .w_en(W_INC), .w_clk(W_CLK), 
        .wrst_n(n3), .wq2_r_ptr(wq2_r_ptr), .w_addr(w_addr), .w_full(FULL), 
        .w_ptr_gray(w_ptr_gray) );
  FIFO_RD_DATA_DEPTH8_ADDR_WIDTH3 u_fifo_rd ( .r_en(R_INC), .r_clk(R_CLK), 
        .rrst_n(n1), .rq2_w_ptr(rq2_w_ptr), .r_addr(r_addr), .r_empty(EMPTY), 
        .gray_r_ptr(r_ptr_gray) );
  DF_SYNC_BUS_WIDTH4_0 u_sync_r2w ( .unsync_bus(r_ptr_gray), .clk(W_CLK), 
        .rst_n(n3), .sync_bus(wq2_r_ptr) );
  DF_SYNC_BUS_WIDTH4_1 u_sync_w2r ( .unsync_bus(w_ptr_gray), .clk(R_CLK), 
        .rst_n(n1), .sync_bus(rq2_w_ptr) );
  fifo_memory_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3 u_fifo_memory ( .w_data(
        WR_DATA), .w_addr(w_addr), .r_addr(r_addr), .w_clk_en(w_clk_en), 
        .w_clk(W_CLK), .rst(n3), .r_data(RD_DATA) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
  NOR2BX2M U5 ( .AN(W_INC), .B(FULL), .Y(w_clk_en) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   \res_sync_reg[1] ;

  DFFRQX2M \res_sync_reg_reg[0]  ( .D(\res_sync_reg[1] ), .CK(clk), .RN(rst), 
        .Q(sync_rst) );
  DFFRQX2M \res_sync_reg_reg[1]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(
        \res_sync_reg[1] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( rst, clk, sync_rst );
  input rst, clk;
  output sync_rst;
  wire   \res_sync_reg[1] ;

  DFFRQX2M \res_sync_reg_reg[0]  ( .D(\res_sync_reg[1] ), .CK(clk), .RN(rst), 
        .Q(sync_rst) );
  DFFRQX2M \res_sync_reg_reg[1]  ( .D(1'b1), .CK(clk), .RN(rst), .Q(
        \res_sync_reg[1] ) );
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


module clk_div_RATIO_WIDTH8_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   pos_clk, neg_clk, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N26, N27, N28, N29, N30, N31, N32, N33, N46, N47, N48, N49, N50, N51,
         N52, N53, N60, n9, n12, n13, n14, n15, n16, n17, n18, n19, n20, n1,
         n2, n3, n4, n5, n6, n8, n10, n11, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45;
  wire   [7:0] counter;

  DFFNSRHX2M neg_clk_reg ( .D(N60), .CKN(i_ref_clk), .SN(1'b1), .RN(n2), .Q(
        neg_clk) );
  OAI22X8M U4 ( .A0(n9), .A1(n45), .B0(n12), .B1(n13), .Y(o_div_clk) );
  clk_div_RATIO_WIDTH8_0_DW01_inc_0 add_31 ( .A(counter), .SUM({N33, N32, N31, 
        N30, N29, N28, N27, N26}) );
  DFFRQX2M \counter_reg[7]  ( .D(N53), .CK(i_ref_clk), .RN(n2), .Q(counter[7])
         );
  DFFRQX2M \counter_reg[6]  ( .D(N52), .CK(i_ref_clk), .RN(n2), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[2]  ( .D(N48), .CK(i_ref_clk), .RN(n2), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N49), .CK(i_ref_clk), .RN(n2), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[4]  ( .D(N50), .CK(i_ref_clk), .RN(n2), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[5]  ( .D(N51), .CK(i_ref_clk), .RN(n2), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[0]  ( .D(N46), .CK(i_ref_clk), .RN(n2), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[1]  ( .D(N47), .CK(i_ref_clk), .RN(n2), .Q(counter[1])
         );
  DFFRQX2M pos_clk_reg ( .D(n20), .CK(i_ref_clk), .RN(n2), .Q(pos_clk) );
  OR2X2M U5 ( .A(N24), .B(n15), .Y(n18) );
  NOR2BX2M U6 ( .AN(N27), .B(n18), .Y(N47) );
  NOR2BX2M U7 ( .AN(N28), .B(n18), .Y(N48) );
  NOR2BX2M U8 ( .AN(N29), .B(n18), .Y(N49) );
  NOR2BX2M U9 ( .AN(N30), .B(n18), .Y(N50) );
  NOR2BX2M U10 ( .AN(N31), .B(n18), .Y(N51) );
  NOR2BX2M U11 ( .AN(N32), .B(n18), .Y(N52) );
  INVX2M U12 ( .A(n12), .Y(n45) );
  INVX2M U13 ( .A(n3), .Y(n2) );
  INVX2M U14 ( .A(i_rst_n), .Y(n3) );
  AND3X2M U15 ( .A(n44), .B(i_div_ratio[0]), .C(pos_clk), .Y(N60) );
  INVX2M U16 ( .A(n15), .Y(n44) );
  OR2X2M U17 ( .A(n43), .B(n42), .Y(n1) );
  NOR2X2M U18 ( .A(n14), .B(n15), .Y(n20) );
  AOI22X1M U19 ( .A0(n16), .A1(n17), .B0(n1), .B1(pos_clk), .Y(n14) );
  NOR4X1M U20 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n17) );
  NOR4X1M U21 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n16) );
  NOR2BX2M U22 ( .AN(N33), .B(n18), .Y(N53) );
  NOR2BX2M U23 ( .AN(N26), .B(n18), .Y(N46) );
  OR2X2M U24 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n4) );
  NOR4X2M U25 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), 
        .D(n19), .Y(n12) );
  OR4X1M U26 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n19) );
  NAND2X2M U27 ( .A(i_clk_en), .B(n45), .Y(n15) );
  AOI21X2M U28 ( .A0(neg_clk), .A1(i_div_ratio[0]), .B0(pos_clk), .Y(n13) );
  INVX2M U29 ( .A(i_ref_clk), .Y(n9) );
  CLKINVX1M U30 ( .A(i_div_ratio[0]), .Y(N15) );
  OAI2BB1X1M U31 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n4), .Y(N16) );
  OR2X1M U32 ( .A(n4), .B(i_div_ratio[2]), .Y(n5) );
  OAI2BB1X1M U33 ( .A0N(n4), .A1N(i_div_ratio[2]), .B0(n5), .Y(N17) );
  OR2X1M U34 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OAI2BB1X1M U35 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N18) );
  OR2X1M U36 ( .A(n6), .B(i_div_ratio[4]), .Y(n8) );
  OAI2BB1X1M U37 ( .A0N(n6), .A1N(i_div_ratio[4]), .B0(n8), .Y(N19) );
  OR2X1M U38 ( .A(n8), .B(i_div_ratio[5]), .Y(n10) );
  OAI2BB1X1M U39 ( .A0N(n8), .A1N(i_div_ratio[5]), .B0(n10), .Y(N20) );
  OR2X1M U40 ( .A(n10), .B(i_div_ratio[6]), .Y(n11) );
  OAI2BB1X1M U41 ( .A0N(n10), .A1N(i_div_ratio[6]), .B0(n11), .Y(N21) );
  NOR2X1M U42 ( .A(n11), .B(i_div_ratio[7]), .Y(N23) );
  AO21XLM U43 ( .A0(n11), .A1(i_div_ratio[7]), .B0(N23), .Y(N22) );
  XNOR2X1M U44 ( .A(N21), .B(counter[6]), .Y(n24) );
  XNOR2X1M U45 ( .A(N20), .B(counter[5]), .Y(n23) );
  XNOR2X1M U46 ( .A(N19), .B(counter[4]), .Y(n22) );
  XNOR2X1M U47 ( .A(N18), .B(counter[3]), .Y(n21) );
  NAND4X1M U48 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n32) );
  NOR2BX1M U49 ( .AN(N15), .B(counter[0]), .Y(n25) );
  OAI2B2X1M U50 ( .A1N(counter[1]), .A0(n25), .B0(N16), .B1(n25), .Y(n28) );
  NOR2BX1M U51 ( .AN(counter[0]), .B(N15), .Y(n26) );
  OAI2B2X1M U52 ( .A1N(N16), .A0(n26), .B0(counter[1]), .B1(n26), .Y(n27) );
  NAND3BX1M U53 ( .AN(N23), .B(n28), .C(n27), .Y(n31) );
  CLKXOR2X2M U54 ( .A(N22), .B(counter[7]), .Y(n30) );
  CLKXOR2X2M U55 ( .A(N17), .B(counter[2]), .Y(n29) );
  NOR4X1M U56 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N24) );
  NOR2BX1M U57 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n33) );
  OAI2B2X1M U58 ( .A1N(i_div_ratio[2]), .A0(n33), .B0(counter[1]), .B1(n33), 
        .Y(n37) );
  XNOR2X1M U59 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n36) );
  NOR2BX1M U60 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n34) );
  OAI2B2X1M U61 ( .A1N(counter[1]), .A0(n34), .B0(i_div_ratio[2]), .B1(n34), 
        .Y(n35) );
  NAND4BX1M U62 ( .AN(counter[7]), .B(n37), .C(n36), .D(n35), .Y(n43) );
  XNOR2X1M U63 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n41) );
  XNOR2X1M U64 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n40) );
  XNOR2X1M U65 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n39) );
  XNOR2X1M U66 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n38) );
  NAND4X1M U67 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n42) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[4]) );
  OAI211X2M U11 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR3X4M U12 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X4M U13 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND2X2M U14 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U15 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NOR4X2M U16 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U17 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NAND4BX1M U18 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NAND4BX1M U19 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  INVX2M U20 ( .A(IN[0]), .Y(n17) );
  INVX2M U21 ( .A(IN[2]), .Y(n15) );
  INVX2M U22 ( .A(IN[1]), .Y(n16) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
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


module clk_div_RATIO_WIDTH8_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   pos_clk, neg_clk, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N26, N27, N28, N29, N30, N31, N32, N33, N46, N47, N48, N49, N50, N51,
         N52, N53, N60, n1, n2, n3, n4, n5, n6, n8, n10, n11, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55;
  wire   [7:0] counter;

  DFFNSRHX2M neg_clk_reg ( .D(N60), .CKN(i_ref_clk), .SN(1'b1), .RN(n2), .Q(
        neg_clk) );
  clk_div_RATIO_WIDTH8_1_DW01_inc_0 add_31 ( .A(counter), .SUM({N33, N32, N31, 
        N30, N29, N28, N27, N26}) );
  DFFRQX2M \counter_reg[7]  ( .D(N53), .CK(i_ref_clk), .RN(n2), .Q(counter[7])
         );
  DFFRQX2M \counter_reg[6]  ( .D(N52), .CK(i_ref_clk), .RN(n2), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[2]  ( .D(N48), .CK(i_ref_clk), .RN(n2), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[3]  ( .D(N49), .CK(i_ref_clk), .RN(n2), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[4]  ( .D(N50), .CK(i_ref_clk), .RN(n2), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[5]  ( .D(N51), .CK(i_ref_clk), .RN(n2), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[0]  ( .D(N46), .CK(i_ref_clk), .RN(n2), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[1]  ( .D(N47), .CK(i_ref_clk), .RN(n2), .Q(counter[1])
         );
  DFFRQX2M pos_clk_reg ( .D(n46), .CK(i_ref_clk), .RN(n2), .Q(pos_clk) );
  OR2X2M U4 ( .A(N24), .B(n51), .Y(n48) );
  NOR4X1M U5 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n47), .Y(n54) );
  NOR2BX2M U6 ( .AN(N27), .B(n48), .Y(N47) );
  NOR2BX2M U7 ( .AN(N28), .B(n48), .Y(N48) );
  NOR2BX2M U8 ( .AN(N29), .B(n48), .Y(N49) );
  NOR2BX2M U9 ( .AN(N30), .B(n48), .Y(N50) );
  NOR2BX2M U10 ( .AN(N31), .B(n48), .Y(N51) );
  NOR2BX2M U11 ( .AN(N32), .B(n48), .Y(N52) );
  OR2X2M U12 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n4) );
  INVX2M U13 ( .A(n54), .Y(n45) );
  INVX2M U14 ( .A(n3), .Y(n2) );
  INVX2M U15 ( .A(i_rst_n), .Y(n3) );
  OAI22X4M U16 ( .A0(n55), .A1(n45), .B0(n54), .B1(n53), .Y(o_div_clk) );
  AND3X2M U17 ( .A(n44), .B(i_div_ratio[0]), .C(pos_clk), .Y(N60) );
  INVX2M U18 ( .A(n51), .Y(n44) );
  OR2X2M U19 ( .A(n43), .B(n42), .Y(n1) );
  NOR2X2M U20 ( .A(n52), .B(n51), .Y(n46) );
  AOI22X1M U21 ( .A0(n50), .A1(n49), .B0(n1), .B1(pos_clk), .Y(n52) );
  NOR4X1M U22 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n49) );
  NOR4X1M U23 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n50) );
  NOR2BX2M U24 ( .AN(N33), .B(n48), .Y(N53) );
  NOR2BX2M U25 ( .AN(N26), .B(n48), .Y(N46) );
  OR4X1M U26 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n47) );
  NAND2X2M U27 ( .A(i_clk_en), .B(n45), .Y(n51) );
  AOI21X2M U28 ( .A0(neg_clk), .A1(i_div_ratio[0]), .B0(pos_clk), .Y(n53) );
  INVX2M U29 ( .A(i_ref_clk), .Y(n55) );
  CLKINVX1M U30 ( .A(i_div_ratio[0]), .Y(N15) );
  OAI2BB1X1M U31 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n4), .Y(N16) );
  OR2X1M U32 ( .A(n4), .B(i_div_ratio[2]), .Y(n5) );
  OAI2BB1X1M U33 ( .A0N(n4), .A1N(i_div_ratio[2]), .B0(n5), .Y(N17) );
  OR2X1M U34 ( .A(n5), .B(i_div_ratio[3]), .Y(n6) );
  OAI2BB1X1M U35 ( .A0N(n5), .A1N(i_div_ratio[3]), .B0(n6), .Y(N18) );
  OR2X1M U36 ( .A(n6), .B(i_div_ratio[4]), .Y(n8) );
  OAI2BB1X1M U37 ( .A0N(n6), .A1N(i_div_ratio[4]), .B0(n8), .Y(N19) );
  OR2X1M U38 ( .A(n8), .B(i_div_ratio[5]), .Y(n10) );
  OAI2BB1X1M U39 ( .A0N(n8), .A1N(i_div_ratio[5]), .B0(n10), .Y(N20) );
  OR2X1M U40 ( .A(n10), .B(i_div_ratio[6]), .Y(n11) );
  OAI2BB1X1M U41 ( .A0N(n10), .A1N(i_div_ratio[6]), .B0(n11), .Y(N21) );
  NOR2X1M U42 ( .A(n11), .B(i_div_ratio[7]), .Y(N23) );
  AO21XLM U43 ( .A0(n11), .A1(i_div_ratio[7]), .B0(N23), .Y(N22) );
  XNOR2X1M U44 ( .A(N21), .B(counter[6]), .Y(n24) );
  XNOR2X1M U45 ( .A(N20), .B(counter[5]), .Y(n23) );
  XNOR2X1M U46 ( .A(N19), .B(counter[4]), .Y(n22) );
  XNOR2X1M U47 ( .A(N18), .B(counter[3]), .Y(n21) );
  NAND4X1M U48 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n32) );
  NOR2BX1M U49 ( .AN(N15), .B(counter[0]), .Y(n25) );
  OAI2B2X1M U50 ( .A1N(counter[1]), .A0(n25), .B0(N16), .B1(n25), .Y(n28) );
  NOR2BX1M U51 ( .AN(counter[0]), .B(N15), .Y(n26) );
  OAI2B2X1M U52 ( .A1N(N16), .A0(n26), .B0(counter[1]), .B1(n26), .Y(n27) );
  NAND3BX1M U53 ( .AN(N23), .B(n28), .C(n27), .Y(n31) );
  CLKXOR2X2M U54 ( .A(N22), .B(counter[7]), .Y(n30) );
  CLKXOR2X2M U55 ( .A(N17), .B(counter[2]), .Y(n29) );
  NOR4X1M U56 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N24) );
  NOR2BX1M U57 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n33) );
  OAI2B2X1M U58 ( .A1N(i_div_ratio[2]), .A0(n33), .B0(counter[1]), .B1(n33), 
        .Y(n37) );
  XNOR2X1M U59 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n36) );
  NOR2BX1M U60 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n34) );
  OAI2B2X1M U61 ( .A1N(counter[1]), .A0(n34), .B0(i_div_ratio[2]), .B1(n34), 
        .Y(n35) );
  NAND4BX1M U62 ( .AN(counter[7]), .B(n37), .C(n36), .D(n35), .Y(n43) );
  XNOR2X1M U63 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n41) );
  XNOR2X1M U64 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n40) );
  XNOR2X1M U65 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n39) );
  XNOR2X1M U66 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n38) );
  NAND4X1M U67 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n42) );
endmodule


module PULSE_GEN ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   rcv_flop, pls_flop;

  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX2M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module system_top ( REF_CLK, RST, UART_CLK, RX_IN, TX_OUT, parity_error, 
        framing_error );
  input REF_CLK, RST, UART_CLK, RX_IN;
  output TX_OUT, parity_error, framing_error;
  wire   we_en, rd_en, sync_rst_domain1, rd_data_valid, alu_clk, alu_en,
         alu_out_valid, rx_data_valid, fifo_full, gate_en, wr_inc,
         rx_out_valid, tx_clk, tx_busy, rx_clk, sync_rst_domain2, fifo_empty,
         rd_inc, n1, n2, n3, n4, n5;
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

  Reg_file_ADDR_WIDHT4_DATA_WIDTH8_DATA_DEPTH16 Reg_file_U0 ( .Wrdata(wr_data), 
        .Address(address), .WrEn(we_en), .RdEn(rd_en), .CLK(REF_CLK), .RST(n4), 
        .RdData(rd_data), .RdData_Valid(rd_data_valid), .REG0(op_A), .REG1(
        op_B), .REG2(UART_Config), .REG3(div_ratio) );
  Alu_DATA_WIDTH8_FUN_WIDTH4 Alu_U0 ( .A(op_A), .B(op_B), .ALU_FUN(alu_fun), 
        .CLK(alu_clk), .RST(n4), .Enalbe(alu_en), .ALU_OUT(alu_out), 
        .ALU_VALID(alu_out_valid) );
  SYS_CTRL_DATA_WIDTH8_ADDR_BUS4_FUN_WIDTH4 SYS_CTRL_U0 ( .CLK(REF_CLK), .RST(
        n4), .ALU_OUT(alu_out), .OUT_VALID(alu_out_valid), .RX_P_Data(
        rx_data_sync), .RX_D_VLD(rx_data_valid), .Rd_Data(rd_data), 
        .RdData_Valid(rd_data_valid), .FIFO_FULL(fifo_full), .ALU_EN(alu_en), 
        .ALU_FUN(alu_fun), .CLK_EN(gate_en), .Address(address), .WrEN(we_en), 
        .RdEN(rd_en), .WrData(wr_data), .TX_P_Data(wr_data_fifo), .TX_D_VLD(
        wr_inc) );
  data_sync_NUM_STAGES2_BUS_WIDTH8 data_sync_U0 ( .unsync_bus(rx_data_unsync), 
        .bus_enable(rx_out_valid), .dest_clk(REF_CLK), .dest_rst(n4), 
        .sync_bus(rx_data_sync), .enable_pulse(rx_data_valid) );
  uart_top_parallel_data8 uart_top_U0 ( .TX_CLK(tx_clk), .TX_IN_P(rd_data_fifo), .TX_IN_V(n1), .TX_OUT_S(TX_OUT), .TX_OUT_V(tx_busy), .RX_CLK(rx_clk), 
        .RX_IN_S(RX_IN), .Prescale(UART_Config[7:2]), .PAR_EN(UART_Config[0]), 
        .PAR_TYP(UART_Config[1]), .RX_OUT_P(rx_data_unsync), .RX_OUT_V(
        rx_out_valid), .RST(n2), .parity_error(parity_error), .framing_error(
        framing_error) );
  ASYNC_FIFO_DATA_WIDTH8_DATA_DEPTH8_ADDR_WIDTH3 ASYNC_FIFO_U0 ( .W_CLK(
        REF_CLK), .W_RST(n4), .W_INC(wr_inc), .R_CLK(tx_clk), .R_RST(n2), 
        .R_INC(rd_inc), .WR_DATA(wr_data_fifo), .RD_DATA(rd_data_fifo), .FULL(
        fifo_full), .EMPTY(fifo_empty) );
  RST_SYNC_NUM_STAGES2_0 RST_SYNC_U0 ( .rst(RST), .clk(REF_CLK), .sync_rst(
        sync_rst_domain1) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_U1 ( .rst(RST), .clk(UART_CLK), .sync_rst(
        sync_rst_domain2) );
  CLK_GATE CLK_GATE_U0 ( .CLK_EN(gate_en), .CLK(REF_CLK), .GATED_CLK(alu_clk)
         );
  clk_div_RATIO_WIDTH8_0 clk_div_U0 ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(div_ratio), .o_div_clk(tx_clk) );
  CLKDIV_MUX CLKDIV_MUX_U0 ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  clk_div_RATIO_WIDTH8_1 clk_div_U1 ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(rx_clk) );
  PULSE_GEN PULSE_GEN_U0 ( .clk(tx_clk), .rst(n2), .lvl_sig(tx_busy), 
        .pulse_sig(rd_inc) );
  INVX2M U2 ( .A(n3), .Y(n2) );
  INVX2M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(fifo_empty), .Y(n1) );
  INVX2M U5 ( .A(sync_rst_domain1), .Y(n5) );
  INVX2M U6 ( .A(sync_rst_domain2), .Y(n3) );
endmodule

