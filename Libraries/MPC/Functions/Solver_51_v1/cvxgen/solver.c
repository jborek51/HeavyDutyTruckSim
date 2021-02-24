/* Produced by CVXGEN, 2019-07-30 10:35:44 -0400.  */
/* CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com. */
/* The code in this file is Copyright (C) 2006-2017 Jacob Mattingley. */
/* CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial */
/* applications without prior written permission from Jacob Mattingley. */

/* Filename: solver.c. */
/* Description: Main solver file. */
#include "solver.h"
double eval_gap(void) {
  int i;
  double gap;
  gap = 0;
  for (i = 0; i < 306; i++)
    gap += work.z[i]*work.s[i];
  return gap;
}
void set_defaults(void) {
  settings.resid_tol = 1e-6;
  settings.eps = 1e-4;
  settings.max_iters = 25;
  settings.refine_steps = 1;
  settings.s_init = 1;
  settings.z_init = 1;
  settings.debug = 0;
  settings.verbose = 1;
  settings.verbose_refinement = 0;
  settings.better_start = 1;
  settings.kkt_reg = 1e-7;
}
void setup_pointers(void) {
  work.y = work.x + 153;
  work.s = work.x + 204;
  work.z = work.x + 510;
  vars.E_brk_0 = work.x + 0;
  vars.E_brk_1 = work.x + 1;
  vars.E_brk_2 = work.x + 2;
  vars.E_brk_3 = work.x + 3;
  vars.E_brk_4 = work.x + 4;
  vars.E_brk_5 = work.x + 5;
  vars.E_brk_6 = work.x + 6;
  vars.E_brk_7 = work.x + 7;
  vars.E_brk_8 = work.x + 8;
  vars.E_brk_9 = work.x + 9;
  vars.E_brk_10 = work.x + 10;
  vars.E_brk_11 = work.x + 11;
  vars.E_brk_12 = work.x + 12;
  vars.E_brk_13 = work.x + 13;
  vars.E_brk_14 = work.x + 14;
  vars.E_brk_15 = work.x + 15;
  vars.E_brk_16 = work.x + 16;
  vars.E_brk_17 = work.x + 17;
  vars.E_brk_18 = work.x + 18;
  vars.E_brk_19 = work.x + 19;
  vars.E_brk_20 = work.x + 20;
  vars.E_brk_21 = work.x + 21;
  vars.E_brk_22 = work.x + 22;
  vars.E_brk_23 = work.x + 23;
  vars.E_brk_24 = work.x + 24;
  vars.E_brk_25 = work.x + 25;
  vars.E_brk_26 = work.x + 26;
  vars.E_brk_27 = work.x + 27;
  vars.E_brk_28 = work.x + 28;
  vars.E_brk_29 = work.x + 29;
  vars.E_brk_30 = work.x + 30;
  vars.E_brk_31 = work.x + 31;
  vars.E_brk_32 = work.x + 32;
  vars.E_brk_33 = work.x + 33;
  vars.E_brk_34 = work.x + 34;
  vars.E_brk_35 = work.x + 35;
  vars.E_brk_36 = work.x + 36;
  vars.E_brk_37 = work.x + 37;
  vars.E_brk_38 = work.x + 38;
  vars.E_brk_39 = work.x + 39;
  vars.E_brk_40 = work.x + 40;
  vars.E_brk_41 = work.x + 41;
  vars.E_brk_42 = work.x + 42;
  vars.E_brk_43 = work.x + 43;
  vars.E_brk_44 = work.x + 44;
  vars.E_brk_45 = work.x + 45;
  vars.E_brk_46 = work.x + 46;
  vars.E_brk_47 = work.x + 47;
  vars.E_brk_48 = work.x + 48;
  vars.E_brk_49 = work.x + 49;
  vars.E_brk_50 = work.x + 50;
  vars.E_mech_0 = work.x + 51;
  vars.E_mech_1 = work.x + 52;
  vars.E_mech_2 = work.x + 53;
  vars.E_mech_3 = work.x + 54;
  vars.E_mech_4 = work.x + 55;
  vars.E_mech_5 = work.x + 56;
  vars.E_mech_6 = work.x + 57;
  vars.E_mech_7 = work.x + 58;
  vars.E_mech_8 = work.x + 59;
  vars.E_mech_9 = work.x + 60;
  vars.E_mech_10 = work.x + 61;
  vars.E_mech_11 = work.x + 62;
  vars.E_mech_12 = work.x + 63;
  vars.E_mech_13 = work.x + 64;
  vars.E_mech_14 = work.x + 65;
  vars.E_mech_15 = work.x + 66;
  vars.E_mech_16 = work.x + 67;
  vars.E_mech_17 = work.x + 68;
  vars.E_mech_18 = work.x + 69;
  vars.E_mech_19 = work.x + 70;
  vars.E_mech_20 = work.x + 71;
  vars.E_mech_21 = work.x + 72;
  vars.E_mech_22 = work.x + 73;
  vars.E_mech_23 = work.x + 74;
  vars.E_mech_24 = work.x + 75;
  vars.E_mech_25 = work.x + 76;
  vars.E_mech_26 = work.x + 77;
  vars.E_mech_27 = work.x + 78;
  vars.E_mech_28 = work.x + 79;
  vars.E_mech_29 = work.x + 80;
  vars.E_mech_30 = work.x + 81;
  vars.E_mech_31 = work.x + 82;
  vars.E_mech_32 = work.x + 83;
  vars.E_mech_33 = work.x + 84;
  vars.E_mech_34 = work.x + 85;
  vars.E_mech_35 = work.x + 86;
  vars.E_mech_36 = work.x + 87;
  vars.E_mech_37 = work.x + 88;
  vars.E_mech_38 = work.x + 89;
  vars.E_mech_39 = work.x + 90;
  vars.E_mech_40 = work.x + 91;
  vars.E_mech_41 = work.x + 92;
  vars.E_mech_42 = work.x + 93;
  vars.E_mech_43 = work.x + 94;
  vars.E_mech_44 = work.x + 95;
  vars.E_mech_45 = work.x + 96;
  vars.E_mech_46 = work.x + 97;
  vars.E_mech_47 = work.x + 98;
  vars.E_mech_48 = work.x + 99;
  vars.E_mech_49 = work.x + 100;
  vars.E_mech_50 = work.x + 101;
  vars.KE_1 = work.x + 102;
  vars.KE_2 = work.x + 103;
  vars.KE_3 = work.x + 104;
  vars.KE_4 = work.x + 105;
  vars.KE_5 = work.x + 106;
  vars.KE_6 = work.x + 107;
  vars.KE_7 = work.x + 108;
  vars.KE_8 = work.x + 109;
  vars.KE_9 = work.x + 110;
  vars.KE_10 = work.x + 111;
  vars.KE_11 = work.x + 112;
  vars.KE_12 = work.x + 113;
  vars.KE_13 = work.x + 114;
  vars.KE_14 = work.x + 115;
  vars.KE_15 = work.x + 116;
  vars.KE_16 = work.x + 117;
  vars.KE_17 = work.x + 118;
  vars.KE_18 = work.x + 119;
  vars.KE_19 = work.x + 120;
  vars.KE_20 = work.x + 121;
  vars.KE_21 = work.x + 122;
  vars.KE_22 = work.x + 123;
  vars.KE_23 = work.x + 124;
  vars.KE_24 = work.x + 125;
  vars.KE_25 = work.x + 126;
  vars.KE_26 = work.x + 127;
  vars.KE_27 = work.x + 128;
  vars.KE_28 = work.x + 129;
  vars.KE_29 = work.x + 130;
  vars.KE_30 = work.x + 131;
  vars.KE_31 = work.x + 132;
  vars.KE_32 = work.x + 133;
  vars.KE_33 = work.x + 134;
  vars.KE_34 = work.x + 135;
  vars.KE_35 = work.x + 136;
  vars.KE_36 = work.x + 137;
  vars.KE_37 = work.x + 138;
  vars.KE_38 = work.x + 139;
  vars.KE_39 = work.x + 140;
  vars.KE_40 = work.x + 141;
  vars.KE_41 = work.x + 142;
  vars.KE_42 = work.x + 143;
  vars.KE_43 = work.x + 144;
  vars.KE_44 = work.x + 145;
  vars.KE_45 = work.x + 146;
  vars.KE_46 = work.x + 147;
  vars.KE_47 = work.x + 148;
  vars.KE_48 = work.x + 149;
  vars.KE_49 = work.x + 150;
  vars.KE_50 = work.x + 151;
  vars.KE_51 = work.x + 152;
}
void setup_indexed_params(void) {
  /* In CVXGEN, you can say */
  /*   parameters */
  /*     A[i] (5,3), i=1..4 */
  /*   end */
  /* This function sets up A[2] to be a pointer to A_2, which is a length-15 */
  /* vector of doubles. */
  /* If you access parameters that you haven't defined in CVXGEN, the result */
  /* is undefined. */
  params.KE_des[1] = params.KE_des_1;
  params.KE_des[2] = params.KE_des_2;
  params.KE_des[3] = params.KE_des_3;
  params.KE_des[4] = params.KE_des_4;
  params.KE_des[5] = params.KE_des_5;
  params.KE_des[6] = params.KE_des_6;
  params.KE_des[7] = params.KE_des_7;
  params.KE_des[8] = params.KE_des_8;
  params.KE_des[9] = params.KE_des_9;
  params.KE_des[10] = params.KE_des_10;
  params.KE_des[11] = params.KE_des_11;
  params.KE_des[12] = params.KE_des_12;
  params.KE_des[13] = params.KE_des_13;
  params.KE_des[14] = params.KE_des_14;
  params.KE_des[15] = params.KE_des_15;
  params.KE_des[16] = params.KE_des_16;
  params.KE_des[17] = params.KE_des_17;
  params.KE_des[18] = params.KE_des_18;
  params.KE_des[19] = params.KE_des_19;
  params.KE_des[20] = params.KE_des_20;
  params.KE_des[21] = params.KE_des_21;
  params.KE_des[22] = params.KE_des_22;
  params.KE_des[23] = params.KE_des_23;
  params.KE_des[24] = params.KE_des_24;
  params.KE_des[25] = params.KE_des_25;
  params.KE_des[26] = params.KE_des_26;
  params.KE_des[27] = params.KE_des_27;
  params.KE_des[28] = params.KE_des_28;
  params.KE_des[29] = params.KE_des_29;
  params.KE_des[30] = params.KE_des_30;
  params.KE_des[31] = params.KE_des_31;
  params.KE_des[32] = params.KE_des_32;
  params.KE_des[33] = params.KE_des_33;
  params.KE_des[34] = params.KE_des_34;
  params.KE_des[35] = params.KE_des_35;
  params.KE_des[36] = params.KE_des_36;
  params.KE_des[37] = params.KE_des_37;
  params.KE_des[38] = params.KE_des_38;
  params.KE_des[39] = params.KE_des_39;
  params.KE_des[40] = params.KE_des_40;
  params.KE_des[41] = params.KE_des_41;
  params.KE_des[42] = params.KE_des_42;
  params.KE_des[43] = params.KE_des_43;
  params.KE_des[44] = params.KE_des_44;
  params.KE_des[45] = params.KE_des_45;
  params.KE_des[46] = params.KE_des_46;
  params.KE_des[47] = params.KE_des_47;
  params.KE_des[48] = params.KE_des_48;
  params.KE_des[49] = params.KE_des_49;
  params.KE_des[50] = params.KE_des_50;
  params.KE_des[51] = params.KE_des_51;
  params.KE[0] = params.KE_0;
  params.Env[0] = params.Env_0;
  params.Env[1] = params.Env_1;
  params.Env[2] = params.Env_2;
  params.Env[3] = params.Env_3;
  params.Env[4] = params.Env_4;
  params.Env[5] = params.Env_5;
  params.Env[6] = params.Env_6;
  params.Env[7] = params.Env_7;
  params.Env[8] = params.Env_8;
  params.Env[9] = params.Env_9;
  params.Env[10] = params.Env_10;
  params.Env[11] = params.Env_11;
  params.Env[12] = params.Env_12;
  params.Env[13] = params.Env_13;
  params.Env[14] = params.Env_14;
  params.Env[15] = params.Env_15;
  params.Env[16] = params.Env_16;
  params.Env[17] = params.Env_17;
  params.Env[18] = params.Env_18;
  params.Env[19] = params.Env_19;
  params.Env[20] = params.Env_20;
  params.Env[21] = params.Env_21;
  params.Env[22] = params.Env_22;
  params.Env[23] = params.Env_23;
  params.Env[24] = params.Env_24;
  params.Env[25] = params.Env_25;
  params.Env[26] = params.Env_26;
  params.Env[27] = params.Env_27;
  params.Env[28] = params.Env_28;
  params.Env[29] = params.Env_29;
  params.Env[30] = params.Env_30;
  params.Env[31] = params.Env_31;
  params.Env[32] = params.Env_32;
  params.Env[33] = params.Env_33;
  params.Env[34] = params.Env_34;
  params.Env[35] = params.Env_35;
  params.Env[36] = params.Env_36;
  params.Env[37] = params.Env_37;
  params.Env[38] = params.Env_38;
  params.Env[39] = params.Env_39;
  params.Env[40] = params.Env_40;
  params.Env[41] = params.Env_41;
  params.Env[42] = params.Env_42;
  params.Env[43] = params.Env_43;
  params.Env[44] = params.Env_44;
  params.Env[45] = params.Env_45;
  params.Env[46] = params.Env_46;
  params.Env[47] = params.Env_47;
  params.Env[48] = params.Env_48;
  params.Env[49] = params.Env_49;
  params.Env[50] = params.Env_50;
  params.KE_max[1] = params.KE_max_1;
  params.KE_max[2] = params.KE_max_2;
  params.KE_max[3] = params.KE_max_3;
  params.KE_max[4] = params.KE_max_4;
  params.KE_max[5] = params.KE_max_5;
  params.KE_max[6] = params.KE_max_6;
  params.KE_max[7] = params.KE_max_7;
  params.KE_max[8] = params.KE_max_8;
  params.KE_max[9] = params.KE_max_9;
  params.KE_max[10] = params.KE_max_10;
  params.KE_max[11] = params.KE_max_11;
  params.KE_max[12] = params.KE_max_12;
  params.KE_max[13] = params.KE_max_13;
  params.KE_max[14] = params.KE_max_14;
  params.KE_max[15] = params.KE_max_15;
  params.KE_max[16] = params.KE_max_16;
  params.KE_max[17] = params.KE_max_17;
  params.KE_max[18] = params.KE_max_18;
  params.KE_max[19] = params.KE_max_19;
  params.KE_max[20] = params.KE_max_20;
  params.KE_max[21] = params.KE_max_21;
  params.KE_max[22] = params.KE_max_22;
  params.KE_max[23] = params.KE_max_23;
  params.KE_max[24] = params.KE_max_24;
  params.KE_max[25] = params.KE_max_25;
  params.KE_max[26] = params.KE_max_26;
  params.KE_max[27] = params.KE_max_27;
  params.KE_max[28] = params.KE_max_28;
  params.KE_max[29] = params.KE_max_29;
  params.KE_max[30] = params.KE_max_30;
  params.KE_max[31] = params.KE_max_31;
  params.KE_max[32] = params.KE_max_32;
  params.KE_max[33] = params.KE_max_33;
  params.KE_max[34] = params.KE_max_34;
  params.KE_max[35] = params.KE_max_35;
  params.KE_max[36] = params.KE_max_36;
  params.KE_max[37] = params.KE_max_37;
  params.KE_max[38] = params.KE_max_38;
  params.KE_max[39] = params.KE_max_39;
  params.KE_max[40] = params.KE_max_40;
  params.KE_max[41] = params.KE_max_41;
  params.KE_max[42] = params.KE_max_42;
  params.KE_max[43] = params.KE_max_43;
  params.KE_max[44] = params.KE_max_44;
  params.KE_max[45] = params.KE_max_45;
  params.KE_max[46] = params.KE_max_46;
  params.KE_max[47] = params.KE_max_47;
  params.KE_max[48] = params.KE_max_48;
  params.KE_max[49] = params.KE_max_49;
  params.KE_max[50] = params.KE_max_50;
  params.KE_max[51] = params.KE_max_51;
  params.KE_min[1] = params.KE_min_1;
  params.KE_min[2] = params.KE_min_2;
  params.KE_min[3] = params.KE_min_3;
  params.KE_min[4] = params.KE_min_4;
  params.KE_min[5] = params.KE_min_5;
  params.KE_min[6] = params.KE_min_6;
  params.KE_min[7] = params.KE_min_7;
  params.KE_min[8] = params.KE_min_8;
  params.KE_min[9] = params.KE_min_9;
  params.KE_min[10] = params.KE_min_10;
  params.KE_min[11] = params.KE_min_11;
  params.KE_min[12] = params.KE_min_12;
  params.KE_min[13] = params.KE_min_13;
  params.KE_min[14] = params.KE_min_14;
  params.KE_min[15] = params.KE_min_15;
  params.KE_min[16] = params.KE_min_16;
  params.KE_min[17] = params.KE_min_17;
  params.KE_min[18] = params.KE_min_18;
  params.KE_min[19] = params.KE_min_19;
  params.KE_min[20] = params.KE_min_20;
  params.KE_min[21] = params.KE_min_21;
  params.KE_min[22] = params.KE_min_22;
  params.KE_min[23] = params.KE_min_23;
  params.KE_min[24] = params.KE_min_24;
  params.KE_min[25] = params.KE_min_25;
  params.KE_min[26] = params.KE_min_26;
  params.KE_min[27] = params.KE_min_27;
  params.KE_min[28] = params.KE_min_28;
  params.KE_min[29] = params.KE_min_29;
  params.KE_min[30] = params.KE_min_30;
  params.KE_min[31] = params.KE_min_31;
  params.KE_min[32] = params.KE_min_32;
  params.KE_min[33] = params.KE_min_33;
  params.KE_min[34] = params.KE_min_34;
  params.KE_min[35] = params.KE_min_35;
  params.KE_min[36] = params.KE_min_36;
  params.KE_min[37] = params.KE_min_37;
  params.KE_min[38] = params.KE_min_38;
  params.KE_min[39] = params.KE_min_39;
  params.KE_min[40] = params.KE_min_40;
  params.KE_min[41] = params.KE_min_41;
  params.KE_min[42] = params.KE_min_42;
  params.KE_min[43] = params.KE_min_43;
  params.KE_min[44] = params.KE_min_44;
  params.KE_min[45] = params.KE_min_45;
  params.KE_min[46] = params.KE_min_46;
  params.KE_min[47] = params.KE_min_47;
  params.KE_min[48] = params.KE_min_48;
  params.KE_min[49] = params.KE_min_49;
  params.KE_min[50] = params.KE_min_50;
  params.KE_min[51] = params.KE_min_51;
}
void setup_indexed_optvars(void) {
  /* In CVXGEN, you can say */
  /*   variables */
  /*     x[i] (5), i=2..4 */
  /*   end */
  /* This function sets up x[3] to be a pointer to x_3, which is a length-5 */
  /* vector of doubles. */
  /* If you access variables that you haven't defined in CVXGEN, the result */
  /* is undefined. */
  vars.E_mech[0] = vars.E_mech_0;
  vars.E_mech[1] = vars.E_mech_1;
  vars.E_mech[2] = vars.E_mech_2;
  vars.E_mech[3] = vars.E_mech_3;
  vars.E_mech[4] = vars.E_mech_4;
  vars.E_mech[5] = vars.E_mech_5;
  vars.E_mech[6] = vars.E_mech_6;
  vars.E_mech[7] = vars.E_mech_7;
  vars.E_mech[8] = vars.E_mech_8;
  vars.E_mech[9] = vars.E_mech_9;
  vars.E_mech[10] = vars.E_mech_10;
  vars.E_mech[11] = vars.E_mech_11;
  vars.E_mech[12] = vars.E_mech_12;
  vars.E_mech[13] = vars.E_mech_13;
  vars.E_mech[14] = vars.E_mech_14;
  vars.E_mech[15] = vars.E_mech_15;
  vars.E_mech[16] = vars.E_mech_16;
  vars.E_mech[17] = vars.E_mech_17;
  vars.E_mech[18] = vars.E_mech_18;
  vars.E_mech[19] = vars.E_mech_19;
  vars.E_mech[20] = vars.E_mech_20;
  vars.E_mech[21] = vars.E_mech_21;
  vars.E_mech[22] = vars.E_mech_22;
  vars.E_mech[23] = vars.E_mech_23;
  vars.E_mech[24] = vars.E_mech_24;
  vars.E_mech[25] = vars.E_mech_25;
  vars.E_mech[26] = vars.E_mech_26;
  vars.E_mech[27] = vars.E_mech_27;
  vars.E_mech[28] = vars.E_mech_28;
  vars.E_mech[29] = vars.E_mech_29;
  vars.E_mech[30] = vars.E_mech_30;
  vars.E_mech[31] = vars.E_mech_31;
  vars.E_mech[32] = vars.E_mech_32;
  vars.E_mech[33] = vars.E_mech_33;
  vars.E_mech[34] = vars.E_mech_34;
  vars.E_mech[35] = vars.E_mech_35;
  vars.E_mech[36] = vars.E_mech_36;
  vars.E_mech[37] = vars.E_mech_37;
  vars.E_mech[38] = vars.E_mech_38;
  vars.E_mech[39] = vars.E_mech_39;
  vars.E_mech[40] = vars.E_mech_40;
  vars.E_mech[41] = vars.E_mech_41;
  vars.E_mech[42] = vars.E_mech_42;
  vars.E_mech[43] = vars.E_mech_43;
  vars.E_mech[44] = vars.E_mech_44;
  vars.E_mech[45] = vars.E_mech_45;
  vars.E_mech[46] = vars.E_mech_46;
  vars.E_mech[47] = vars.E_mech_47;
  vars.E_mech[48] = vars.E_mech_48;
  vars.E_mech[49] = vars.E_mech_49;
  vars.E_mech[50] = vars.E_mech_50;
  vars.E_brk[0] = vars.E_brk_0;
  vars.E_brk[1] = vars.E_brk_1;
  vars.E_brk[2] = vars.E_brk_2;
  vars.E_brk[3] = vars.E_brk_3;
  vars.E_brk[4] = vars.E_brk_4;
  vars.E_brk[5] = vars.E_brk_5;
  vars.E_brk[6] = vars.E_brk_6;
  vars.E_brk[7] = vars.E_brk_7;
  vars.E_brk[8] = vars.E_brk_8;
  vars.E_brk[9] = vars.E_brk_9;
  vars.E_brk[10] = vars.E_brk_10;
  vars.E_brk[11] = vars.E_brk_11;
  vars.E_brk[12] = vars.E_brk_12;
  vars.E_brk[13] = vars.E_brk_13;
  vars.E_brk[14] = vars.E_brk_14;
  vars.E_brk[15] = vars.E_brk_15;
  vars.E_brk[16] = vars.E_brk_16;
  vars.E_brk[17] = vars.E_brk_17;
  vars.E_brk[18] = vars.E_brk_18;
  vars.E_brk[19] = vars.E_brk_19;
  vars.E_brk[20] = vars.E_brk_20;
  vars.E_brk[21] = vars.E_brk_21;
  vars.E_brk[22] = vars.E_brk_22;
  vars.E_brk[23] = vars.E_brk_23;
  vars.E_brk[24] = vars.E_brk_24;
  vars.E_brk[25] = vars.E_brk_25;
  vars.E_brk[26] = vars.E_brk_26;
  vars.E_brk[27] = vars.E_brk_27;
  vars.E_brk[28] = vars.E_brk_28;
  vars.E_brk[29] = vars.E_brk_29;
  vars.E_brk[30] = vars.E_brk_30;
  vars.E_brk[31] = vars.E_brk_31;
  vars.E_brk[32] = vars.E_brk_32;
  vars.E_brk[33] = vars.E_brk_33;
  vars.E_brk[34] = vars.E_brk_34;
  vars.E_brk[35] = vars.E_brk_35;
  vars.E_brk[36] = vars.E_brk_36;
  vars.E_brk[37] = vars.E_brk_37;
  vars.E_brk[38] = vars.E_brk_38;
  vars.E_brk[39] = vars.E_brk_39;
  vars.E_brk[40] = vars.E_brk_40;
  vars.E_brk[41] = vars.E_brk_41;
  vars.E_brk[42] = vars.E_brk_42;
  vars.E_brk[43] = vars.E_brk_43;
  vars.E_brk[44] = vars.E_brk_44;
  vars.E_brk[45] = vars.E_brk_45;
  vars.E_brk[46] = vars.E_brk_46;
  vars.E_brk[47] = vars.E_brk_47;
  vars.E_brk[48] = vars.E_brk_48;
  vars.E_brk[49] = vars.E_brk_49;
  vars.E_brk[50] = vars.E_brk_50;
  vars.KE[1] = vars.KE_1;
  vars.KE[2] = vars.KE_2;
  vars.KE[3] = vars.KE_3;
  vars.KE[4] = vars.KE_4;
  vars.KE[5] = vars.KE_5;
  vars.KE[6] = vars.KE_6;
  vars.KE[7] = vars.KE_7;
  vars.KE[8] = vars.KE_8;
  vars.KE[9] = vars.KE_9;
  vars.KE[10] = vars.KE_10;
  vars.KE[11] = vars.KE_11;
  vars.KE[12] = vars.KE_12;
  vars.KE[13] = vars.KE_13;
  vars.KE[14] = vars.KE_14;
  vars.KE[15] = vars.KE_15;
  vars.KE[16] = vars.KE_16;
  vars.KE[17] = vars.KE_17;
  vars.KE[18] = vars.KE_18;
  vars.KE[19] = vars.KE_19;
  vars.KE[20] = vars.KE_20;
  vars.KE[21] = vars.KE_21;
  vars.KE[22] = vars.KE_22;
  vars.KE[23] = vars.KE_23;
  vars.KE[24] = vars.KE_24;
  vars.KE[25] = vars.KE_25;
  vars.KE[26] = vars.KE_26;
  vars.KE[27] = vars.KE_27;
  vars.KE[28] = vars.KE_28;
  vars.KE[29] = vars.KE_29;
  vars.KE[30] = vars.KE_30;
  vars.KE[31] = vars.KE_31;
  vars.KE[32] = vars.KE_32;
  vars.KE[33] = vars.KE_33;
  vars.KE[34] = vars.KE_34;
  vars.KE[35] = vars.KE_35;
  vars.KE[36] = vars.KE_36;
  vars.KE[37] = vars.KE_37;
  vars.KE[38] = vars.KE_38;
  vars.KE[39] = vars.KE_39;
  vars.KE[40] = vars.KE_40;
  vars.KE[41] = vars.KE_41;
  vars.KE[42] = vars.KE_42;
  vars.KE[43] = vars.KE_43;
  vars.KE[44] = vars.KE_44;
  vars.KE[45] = vars.KE_45;
  vars.KE[46] = vars.KE_46;
  vars.KE[47] = vars.KE_47;
  vars.KE[48] = vars.KE_48;
  vars.KE[49] = vars.KE_49;
  vars.KE[50] = vars.KE_50;
  vars.KE[51] = vars.KE_51;
}
void setup_indexing(void) {
  setup_pointers();
  setup_indexed_params();
  setup_indexed_optvars();
}
void set_start(void) {
  int i;
  for (i = 0; i < 153; i++)
    work.x[i] = 0;
  for (i = 0; i < 51; i++)
    work.y[i] = 0;
  for (i = 0; i < 306; i++)
    work.s[i] = (work.h[i] > 0) ? work.h[i] : settings.s_init;
  for (i = 0; i < 306; i++)
    work.z[i] = settings.z_init;
}
double eval_objv(void) {
  int i;
  double objv;
  /* Borrow space in work.rhs. */
  multbyP(work.rhs, work.x);
  objv = 0;
  for (i = 0; i < 153; i++)
    objv += work.x[i]*work.rhs[i];
  objv *= 0.5;
  for (i = 0; i < 153; i++)
    objv += work.q[i]*work.x[i];
  objv += work.quad_768072527872[0]+work.quad_661432246272[0]+work.quad_55378427904[0]+work.quad_446409740288[0]+work.quad_976314679296[0]+work.quad_149993947136[0]+work.quad_271355883520[0]+work.quad_208976261120[0]+work.quad_423494877184[0]+work.quad_697489670144[0]+work.quad_692687998976[0]+work.quad_327833575424[0]+work.quad_267152363520[0]+work.quad_94665977856[0]+work.quad_791980539904[0]+work.quad_662707019776[0]+work.quad_161760264192[0]+work.quad_434016559104[0]+work.quad_410399719424[0]+work.quad_947095162880[0]+work.quad_31273840640[0]+work.quad_372091113472[0]+work.quad_820269903872[0]+work.quad_483024146432[0]+work.quad_332118106112[0]+work.quad_324111216640[0]+work.quad_2292813824[0]+work.quad_11455180800[0]+work.quad_984700080128[0]+work.quad_922069303296[0]+work.quad_172879028224[0]+work.quad_805454770176[0]+work.quad_708530388992[0]+work.quad_697954308096[0]+work.quad_121121202176[0]+work.quad_183239651328[0]+work.quad_689675665408[0]+work.quad_846612766720[0]+work.quad_414307086336[0]+work.quad_942105661440[0]+work.quad_571194347520[0]+work.quad_280912945152[0]+work.quad_236355207168[0]+work.quad_377771118592[0]+work.quad_197158682624[0]+work.quad_99267248128[0]+work.quad_483248558080[0]+work.quad_201634062336[0]+work.quad_850211549184[0]+work.quad_865473191936[0]+work.quad_975994032128[0];
  return objv;
}
void fillrhs_aff(void) {
  int i;
  double *r1, *r2, *r3, *r4;
  r1 = work.rhs;
  r2 = work.rhs + 153;
  r3 = work.rhs + 459;
  r4 = work.rhs + 765;
  /* r1 = -A^Ty - G^Tz - Px - q. */
  multbymAT(r1, work.y);
  multbymGT(work.buffer, work.z);
  for (i = 0; i < 153; i++)
    r1[i] += work.buffer[i];
  multbyP(work.buffer, work.x);
  for (i = 0; i < 153; i++)
    r1[i] -= work.buffer[i] + work.q[i];
  /* r2 = -z. */
  for (i = 0; i < 306; i++)
    r2[i] = -work.z[i];
  /* r3 = -Gx - s + h. */
  multbymG(r3, work.x);
  for (i = 0; i < 306; i++)
    r3[i] += -work.s[i] + work.h[i];
  /* r4 = -Ax + b. */
  multbymA(r4, work.x);
  for (i = 0; i < 51; i++)
    r4[i] += work.b[i];
}
void fillrhs_cc(void) {
  int i;
  double *r2;
  double *ds_aff, *dz_aff;
  double mu;
  double alpha;
  double sigma;
  double smu;
  double minval;
  r2 = work.rhs + 153;
  ds_aff = work.lhs_aff + 153;
  dz_aff = work.lhs_aff + 459;
  mu = 0;
  for (i = 0; i < 306; i++)
    mu += work.s[i]*work.z[i];
  /* Don't finish calculating mu quite yet. */
  /* Find min(min(ds./s), min(dz./z)). */
  minval = 0;
  for (i = 0; i < 306; i++)
    if (ds_aff[i] < minval*work.s[i])
      minval = ds_aff[i]/work.s[i];
  for (i = 0; i < 306; i++)
    if (dz_aff[i] < minval*work.z[i])
      minval = dz_aff[i]/work.z[i];
  /* Find alpha. */
  if (-1 < minval)
      alpha = 1;
  else
      alpha = -1/minval;
  sigma = 0;
  for (i = 0; i < 306; i++)
    sigma += (work.s[i] + alpha*ds_aff[i])*
      (work.z[i] + alpha*dz_aff[i]);
  sigma /= mu;
  sigma = sigma*sigma*sigma;
  /* Finish calculating mu now. */
  mu *= 0.0032679738562091504;
  smu = sigma*mu;
  /* Fill-in the rhs. */
  for (i = 0; i < 153; i++)
    work.rhs[i] = 0;
  for (i = 459; i < 816; i++)
    work.rhs[i] = 0;
  for (i = 0; i < 306; i++)
    r2[i] = work.s_inv[i]*(smu - ds_aff[i]*dz_aff[i]);
}
void refine(double *target, double *var) {
  int i, j;
  double *residual = work.buffer;
  double norm2;
  double *new_var = work.buffer2;
  for (j = 0; j < settings.refine_steps; j++) {
    norm2 = 0;
    matrix_multiply(residual, var);
    for (i = 0; i < 816; i++) {
      residual[i] = residual[i] - target[i];
      norm2 += residual[i]*residual[i];
    }
#ifndef ZERO_LIBRARY_MODE
    if (settings.verbose_refinement) {
      if (j == 0)
        printf("Initial residual before refinement has norm squared %.6g.\n", norm2);
      else
        printf("After refinement we get squared norm %.6g.\n", norm2);
    }
#endif
    /* Solve to find new_var = KKT \ (target - A*var). */
    ldl_solve(residual, new_var);
    /* Update var += new_var, or var += KKT \ (target - A*var). */
    for (i = 0; i < 816; i++) {
      var[i] -= new_var[i];
    }
  }
#ifndef ZERO_LIBRARY_MODE
  if (settings.verbose_refinement) {
    /* Check the residual once more, but only if we're reporting it, since */
    /* it's expensive. */
    norm2 = 0;
    matrix_multiply(residual, var);
    for (i = 0; i < 816; i++) {
      residual[i] = residual[i] - target[i];
      norm2 += residual[i]*residual[i];
    }
    if (j == 0)
      printf("Initial residual before refinement has norm squared %.6g.\n", norm2);
    else
      printf("After refinement we get squared norm %.6g.\n", norm2);
  }
#endif
}
double calc_ineq_resid_squared(void) {
  /* Calculates the norm ||-Gx - s + h||. */
  double norm2_squared;
  int i;
  /* Find -Gx. */
  multbymG(work.buffer, work.x);
  /* Add -s + h. */
  for (i = 0; i < 306; i++)
    work.buffer[i] += -work.s[i] + work.h[i];
  /* Now find the squared norm. */
  norm2_squared = 0;
  for (i = 0; i < 306; i++)
    norm2_squared += work.buffer[i]*work.buffer[i];
  return norm2_squared;
}
double calc_eq_resid_squared(void) {
  /* Calculates the norm ||-Ax + b||. */
  double norm2_squared;
  int i;
  /* Find -Ax. */
  multbymA(work.buffer, work.x);
  /* Add +b. */
  for (i = 0; i < 51; i++)
    work.buffer[i] += work.b[i];
  /* Now find the squared norm. */
  norm2_squared = 0;
  for (i = 0; i < 51; i++)
    norm2_squared += work.buffer[i]*work.buffer[i];
  return norm2_squared;
}
void better_start(void) {
  /* Calculates a better starting point, using a similar approach to CVXOPT. */
  /* Not yet speed optimized. */
  int i;
  double *x, *s, *z, *y;
  double alpha;
  work.block_33[0] = -1;
  /* Make sure sinvz is 1 to make hijacked KKT system ok. */
  for (i = 0; i < 306; i++)
    work.s_inv_z[i] = 1;
  fill_KKT();
  ldl_factor();
  fillrhs_start();
  /* Borrow work.lhs_aff for the solution. */
  ldl_solve(work.rhs, work.lhs_aff);
  /* Don't do any refinement for now. Precision doesn't matter too much. */
  x = work.lhs_aff;
  s = work.lhs_aff + 153;
  z = work.lhs_aff + 459;
  y = work.lhs_aff + 765;
  /* Just set x and y as is. */
  for (i = 0; i < 153; i++)
    work.x[i] = x[i];
  for (i = 0; i < 51; i++)
    work.y[i] = y[i];
  /* Now complete the initialization. Start with s. */
  /* Must have alpha > max(z). */
  alpha = -1e99;
  for (i = 0; i < 306; i++)
    if (alpha < z[i])
      alpha = z[i];
  if (alpha < 0) {
    for (i = 0; i < 306; i++)
      work.s[i] = -z[i];
  } else {
    alpha += 1;
    for (i = 0; i < 306; i++)
      work.s[i] = -z[i] + alpha;
  }
  /* Now initialize z. */
  /* Now must have alpha > max(-z). */
  alpha = -1e99;
  for (i = 0; i < 306; i++)
    if (alpha < -z[i])
      alpha = -z[i];
  if (alpha < 0) {
    for (i = 0; i < 306; i++)
      work.z[i] = z[i];
  } else {
    alpha += 1;
    for (i = 0; i < 306; i++)
      work.z[i] = z[i] + alpha;
  }
}
void fillrhs_start(void) {
  /* Fill rhs with (-q, 0, h, b). */
  int i;
  double *r1, *r2, *r3, *r4;
  r1 = work.rhs;
  r2 = work.rhs + 153;
  r3 = work.rhs + 459;
  r4 = work.rhs + 765;
  for (i = 0; i < 153; i++)
    r1[i] = -work.q[i];
  for (i = 0; i < 306; i++)
    r2[i] = 0;
  for (i = 0; i < 306; i++)
    r3[i] = work.h[i];
  for (i = 0; i < 51; i++)
    r4[i] = work.b[i];
}
long solve(void) {
  int i;
  int iter;
  double *dx, *ds, *dy, *dz;
  double minval;
  double alpha;
  work.converged = 0;
  setup_pointers();
  pre_ops();
#ifndef ZERO_LIBRARY_MODE
  if (settings.verbose)
    printf("iter     objv        gap       |Ax-b|    |Gx+s-h|    step\n");
#endif
  fillq();
  fillh();
  fillb();
  if (settings.better_start)
    better_start();
  else
    set_start();
  for (iter = 0; iter < settings.max_iters; iter++) {
    for (i = 0; i < 306; i++) {
      work.s_inv[i] = 1.0 / work.s[i];
      work.s_inv_z[i] = work.s_inv[i]*work.z[i];
    }
    work.block_33[0] = 0;
    fill_KKT();
    ldl_factor();
    /* Affine scaling directions. */
    fillrhs_aff();
    ldl_solve(work.rhs, work.lhs_aff);
    refine(work.rhs, work.lhs_aff);
    /* Centering plus corrector directions. */
    fillrhs_cc();
    ldl_solve(work.rhs, work.lhs_cc);
    refine(work.rhs, work.lhs_cc);
    /* Add the two together and store in aff. */
    for (i = 0; i < 816; i++)
      work.lhs_aff[i] += work.lhs_cc[i];
    /* Rename aff to reflect its new meaning. */
    dx = work.lhs_aff;
    ds = work.lhs_aff + 153;
    dz = work.lhs_aff + 459;
    dy = work.lhs_aff + 765;
    /* Find min(min(ds./s), min(dz./z)). */
    minval = 0;
    for (i = 0; i < 306; i++)
      if (ds[i] < minval*work.s[i])
        minval = ds[i]/work.s[i];
    for (i = 0; i < 306; i++)
      if (dz[i] < minval*work.z[i])
        minval = dz[i]/work.z[i];
    /* Find alpha. */
    if (-0.99 < minval)
      alpha = 1;
    else
      alpha = -0.99/minval;
    /* Update the primal and dual variables. */
    for (i = 0; i < 153; i++)
      work.x[i] += alpha*dx[i];
    for (i = 0; i < 306; i++)
      work.s[i] += alpha*ds[i];
    for (i = 0; i < 306; i++)
      work.z[i] += alpha*dz[i];
    for (i = 0; i < 51; i++)
      work.y[i] += alpha*dy[i];
    work.gap = eval_gap();
    work.eq_resid_squared = calc_eq_resid_squared();
    work.ineq_resid_squared = calc_ineq_resid_squared();
#ifndef ZERO_LIBRARY_MODE
    if (settings.verbose) {
      work.optval = eval_objv();
      printf("%3d   %10.3e  %9.2e  %9.2e  %9.2e  % 6.4f\n",
          iter+1, work.optval, work.gap, sqrt(work.eq_resid_squared),
          sqrt(work.ineq_resid_squared), alpha);
    }
#endif
    /* Test termination conditions. Requires optimality, and satisfied */
    /* constraints. */
    if (   (work.gap < settings.eps)
        && (work.eq_resid_squared <= settings.resid_tol*settings.resid_tol)
        && (work.ineq_resid_squared <= settings.resid_tol*settings.resid_tol)
       ) {
      work.converged = 1;
      work.optval = eval_objv();
      return iter+1;
    }
  }
  return iter;
}
