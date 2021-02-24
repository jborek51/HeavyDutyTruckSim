/* Produced by CVXGEN, 2019-07-11 08:32:17 -0400.  */
/* CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com. */
/* The code in this file is Copyright (C) 2006-2017 Jacob Mattingley. */
/* CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial */
/* applications without prior written permission from Jacob Mattingley. */

/* Filename: solver.h. */
/* Description: Header file with relevant definitions. */
#ifndef SOLVER_H
#define SOLVER_H
/* Uncomment the next line to remove all library dependencies. */
/*#define ZERO_LIBRARY_MODE */
#ifdef MATLAB_MEX_FILE
/* Matlab functions. MATLAB_MEX_FILE will be defined by the mex compiler. */
/* If you are not using the mex compiler, this functionality will not intrude, */
/* as it will be completely disabled at compile-time. */
#include "mex.h"
#else
#ifndef ZERO_LIBRARY_MODE
#include <stdio.h>
#endif
#endif
/* Space must be allocated somewhere (testsolver.c, csolve.c or your own */
/* program) for the global variables vars, params, work and settings. */
/* At the bottom of this file, they are externed. */
#ifndef ZERO_LIBRARY_MODE
#include <math.h>
#define pm(A, m, n) printmatrix(#A, A, m, n, 1)
#endif
typedef struct Params_t {
  double lam_b_1[1];
  double lam_b_2[1];
  double lam_b_3[1];
  double lam_b_4[1];
  double lam_b_5[1];
  double lam_b_6[1];
  double lam_b_7[1];
  double lam_b_8[1];
  double lam_b_9[1];
  double lam_b_10[1];
  double lam_b_11[1];
  double lam_b_12[1];
  double lam_b_13[1];
  double lam_b_14[1];
  double lam_b_15[1];
  double lam_b_16[1];
  double lam_b_17[1];
  double lam_b_18[1];
  double lam_b_19[1];
  double lam_b_20[1];
  double lam_b_21[1];
  double lam_b_22[1];
  double lam_b_23[1];
  double lam_b_24[1];
  double lam_b_25[1];
  double lam_b_26[1];
  double lam_b_27[1];
  double lam_b_28[1];
  double lam_b_29[1];
  double lam_b_30[1];
  double lam_b_31[1];
  double lam_b_32[1];
  double lam_b_33[1];
  double lam_b_34[1];
  double lam_b_35[1];
  double lam_b_36[1];
  double lam_b_37[1];
  double lam_b_38[1];
  double lam_b_39[1];
  double lam_b_40[1];
  double lam_b_41[1];
  double lam_b_42[1];
  double lam_b_43[1];
  double lam_b_44[1];
  double lam_b_45[1];
  double lam_b_46[1];
  double lam_b_47[1];
  double lam_b_48[1];
  double lam_b_49[1];
  double lam_b_50[1];
  double lam_b_51[1];
  double lam_e_1[1];
  double KE_des_1[1];
  double lam_e_2[1];
  double KE_des_2[1];
  double lam_e_3[1];
  double KE_des_3[1];
  double lam_e_4[1];
  double KE_des_4[1];
  double lam_e_5[1];
  double KE_des_5[1];
  double lam_e_6[1];
  double KE_des_6[1];
  double lam_e_7[1];
  double KE_des_7[1];
  double lam_e_8[1];
  double KE_des_8[1];
  double lam_e_9[1];
  double KE_des_9[1];
  double lam_e_10[1];
  double KE_des_10[1];
  double lam_e_11[1];
  double KE_des_11[1];
  double lam_e_12[1];
  double KE_des_12[1];
  double lam_e_13[1];
  double KE_des_13[1];
  double lam_e_14[1];
  double KE_des_14[1];
  double lam_e_15[1];
  double KE_des_15[1];
  double lam_e_16[1];
  double KE_des_16[1];
  double lam_e_17[1];
  double KE_des_17[1];
  double lam_e_18[1];
  double KE_des_18[1];
  double lam_e_19[1];
  double KE_des_19[1];
  double lam_e_20[1];
  double KE_des_20[1];
  double lam_e_21[1];
  double KE_des_21[1];
  double lam_e_22[1];
  double KE_des_22[1];
  double lam_e_23[1];
  double KE_des_23[1];
  double lam_e_24[1];
  double KE_des_24[1];
  double lam_e_25[1];
  double KE_des_25[1];
  double lam_e_26[1];
  double KE_des_26[1];
  double lam_e_27[1];
  double KE_des_27[1];
  double lam_e_28[1];
  double KE_des_28[1];
  double lam_e_29[1];
  double KE_des_29[1];
  double lam_e_30[1];
  double KE_des_30[1];
  double lam_e_31[1];
  double KE_des_31[1];
  double lam_e_32[1];
  double KE_des_32[1];
  double lam_e_33[1];
  double KE_des_33[1];
  double lam_e_34[1];
  double KE_des_34[1];
  double lam_e_35[1];
  double KE_des_35[1];
  double lam_e_36[1];
  double KE_des_36[1];
  double lam_e_37[1];
  double KE_des_37[1];
  double lam_e_38[1];
  double KE_des_38[1];
  double lam_e_39[1];
  double KE_des_39[1];
  double lam_e_40[1];
  double KE_des_40[1];
  double lam_e_41[1];
  double KE_des_41[1];
  double lam_e_42[1];
  double KE_des_42[1];
  double lam_e_43[1];
  double KE_des_43[1];
  double lam_e_44[1];
  double KE_des_44[1];
  double lam_e_45[1];
  double KE_des_45[1];
  double lam_e_46[1];
  double KE_des_46[1];
  double lam_e_47[1];
  double KE_des_47[1];
  double lam_e_48[1];
  double KE_des_48[1];
  double lam_e_49[1];
  double KE_des_49[1];
  double lam_e_50[1];
  double KE_des_50[1];
  double lam_e_51[1];
  double KE_des_51[1];
  double A[1];
  double KE_0[1];
  double Env_0[1];
  double Env_1[1];
  double Env_2[1];
  double Env_3[1];
  double Env_4[1];
  double Env_5[1];
  double Env_6[1];
  double Env_7[1];
  double Env_8[1];
  double Env_9[1];
  double Env_10[1];
  double Env_11[1];
  double Env_12[1];
  double Env_13[1];
  double Env_14[1];
  double Env_15[1];
  double Env_16[1];
  double Env_17[1];
  double Env_18[1];
  double Env_19[1];
  double Env_20[1];
  double Env_21[1];
  double Env_22[1];
  double Env_23[1];
  double Env_24[1];
  double Env_25[1];
  double Env_26[1];
  double Env_27[1];
  double Env_28[1];
  double Env_29[1];
  double Env_30[1];
  double Env_31[1];
  double Env_32[1];
  double Env_33[1];
  double Env_34[1];
  double Env_35[1];
  double Env_36[1];
  double Env_37[1];
  double Env_38[1];
  double Env_39[1];
  double Env_40[1];
  double Env_41[1];
  double Env_42[1];
  double Env_43[1];
  double Env_44[1];
  double Env_45[1];
  double Env_46[1];
  double Env_47[1];
  double Env_48[1];
  double Env_49[1];
  double Env_50[1];
  double KE_max_1[1];
  double KE_max_2[1];
  double KE_max_3[1];
  double KE_max_4[1];
  double KE_max_5[1];
  double KE_max_6[1];
  double KE_max_7[1];
  double KE_max_8[1];
  double KE_max_9[1];
  double KE_max_10[1];
  double KE_max_11[1];
  double KE_max_12[1];
  double KE_max_13[1];
  double KE_max_14[1];
  double KE_max_15[1];
  double KE_max_16[1];
  double KE_max_17[1];
  double KE_max_18[1];
  double KE_max_19[1];
  double KE_max_20[1];
  double KE_max_21[1];
  double KE_max_22[1];
  double KE_max_23[1];
  double KE_max_24[1];
  double KE_max_25[1];
  double KE_max_26[1];
  double KE_max_27[1];
  double KE_max_28[1];
  double KE_max_29[1];
  double KE_max_30[1];
  double KE_max_31[1];
  double KE_max_32[1];
  double KE_max_33[1];
  double KE_max_34[1];
  double KE_max_35[1];
  double KE_max_36[1];
  double KE_max_37[1];
  double KE_max_38[1];
  double KE_max_39[1];
  double KE_max_40[1];
  double KE_max_41[1];
  double KE_max_42[1];
  double KE_max_43[1];
  double KE_max_44[1];
  double KE_max_45[1];
  double KE_max_46[1];
  double KE_max_47[1];
  double KE_max_48[1];
  double KE_max_49[1];
  double KE_max_50[1];
  double KE_max_51[1];
  double KE_min_1[1];
  double KE_min_2[1];
  double KE_min_3[1];
  double KE_min_4[1];
  double KE_min_5[1];
  double KE_min_6[1];
  double KE_min_7[1];
  double KE_min_8[1];
  double KE_min_9[1];
  double KE_min_10[1];
  double KE_min_11[1];
  double KE_min_12[1];
  double KE_min_13[1];
  double KE_min_14[1];
  double KE_min_15[1];
  double KE_min_16[1];
  double KE_min_17[1];
  double KE_min_18[1];
  double KE_min_19[1];
  double KE_min_20[1];
  double KE_min_21[1];
  double KE_min_22[1];
  double KE_min_23[1];
  double KE_min_24[1];
  double KE_min_25[1];
  double KE_min_26[1];
  double KE_min_27[1];
  double KE_min_28[1];
  double KE_min_29[1];
  double KE_min_30[1];
  double KE_min_31[1];
  double KE_min_32[1];
  double KE_min_33[1];
  double KE_min_34[1];
  double KE_min_35[1];
  double KE_min_36[1];
  double KE_min_37[1];
  double KE_min_38[1];
  double KE_min_39[1];
  double KE_min_40[1];
  double KE_min_41[1];
  double KE_min_42[1];
  double KE_min_43[1];
  double KE_min_44[1];
  double KE_min_45[1];
  double KE_min_46[1];
  double KE_min_47[1];
  double KE_min_48[1];
  double KE_min_49[1];
  double KE_min_50[1];
  double KE_min_51[1];
  double E_mech_max[1];
  double E_mech_min[1];
  double E_brk_max[1];
  double E_brk_min[1];
  double U_p[1];
  double dU[1];
  double *lam_b[52];
  double *lam_e[52];
  double *KE_des[52];
  double *KE[1];
  double *Env[51];
  double *KE_max[52];
  double *KE_min[52];
} Params;
typedef struct Vars_t {
  double *E_mech_0; /* 1 rows. */
  double *E_mech_1; /* 1 rows. */
  double *E_mech_2; /* 1 rows. */
  double *E_mech_3; /* 1 rows. */
  double *E_mech_4; /* 1 rows. */
  double *E_mech_5; /* 1 rows. */
  double *E_mech_6; /* 1 rows. */
  double *E_mech_7; /* 1 rows. */
  double *E_mech_8; /* 1 rows. */
  double *E_mech_9; /* 1 rows. */
  double *E_mech_10; /* 1 rows. */
  double *E_mech_11; /* 1 rows. */
  double *E_mech_12; /* 1 rows. */
  double *E_mech_13; /* 1 rows. */
  double *E_mech_14; /* 1 rows. */
  double *E_mech_15; /* 1 rows. */
  double *E_mech_16; /* 1 rows. */
  double *E_mech_17; /* 1 rows. */
  double *E_mech_18; /* 1 rows. */
  double *E_mech_19; /* 1 rows. */
  double *E_mech_20; /* 1 rows. */
  double *E_mech_21; /* 1 rows. */
  double *E_mech_22; /* 1 rows. */
  double *E_mech_23; /* 1 rows. */
  double *E_mech_24; /* 1 rows. */
  double *E_mech_25; /* 1 rows. */
  double *E_mech_26; /* 1 rows. */
  double *E_mech_27; /* 1 rows. */
  double *E_mech_28; /* 1 rows. */
  double *E_mech_29; /* 1 rows. */
  double *E_mech_30; /* 1 rows. */
  double *E_mech_31; /* 1 rows. */
  double *E_mech_32; /* 1 rows. */
  double *E_mech_33; /* 1 rows. */
  double *E_mech_34; /* 1 rows. */
  double *E_mech_35; /* 1 rows. */
  double *E_mech_36; /* 1 rows. */
  double *E_mech_37; /* 1 rows. */
  double *E_mech_38; /* 1 rows. */
  double *E_mech_39; /* 1 rows. */
  double *E_mech_40; /* 1 rows. */
  double *E_mech_41; /* 1 rows. */
  double *E_mech_42; /* 1 rows. */
  double *E_mech_43; /* 1 rows. */
  double *E_mech_44; /* 1 rows. */
  double *E_mech_45; /* 1 rows. */
  double *E_mech_46; /* 1 rows. */
  double *E_mech_47; /* 1 rows. */
  double *E_mech_48; /* 1 rows. */
  double *E_mech_49; /* 1 rows. */
  double *E_mech_50; /* 1 rows. */
  double *E_brk_0; /* 1 rows. */
  double *E_brk_1; /* 1 rows. */
  double *E_brk_2; /* 1 rows. */
  double *E_brk_3; /* 1 rows. */
  double *E_brk_4; /* 1 rows. */
  double *E_brk_5; /* 1 rows. */
  double *E_brk_6; /* 1 rows. */
  double *E_brk_7; /* 1 rows. */
  double *E_brk_8; /* 1 rows. */
  double *E_brk_9; /* 1 rows. */
  double *E_brk_10; /* 1 rows. */
  double *E_brk_11; /* 1 rows. */
  double *E_brk_12; /* 1 rows. */
  double *E_brk_13; /* 1 rows. */
  double *E_brk_14; /* 1 rows. */
  double *E_brk_15; /* 1 rows. */
  double *E_brk_16; /* 1 rows. */
  double *E_brk_17; /* 1 rows. */
  double *E_brk_18; /* 1 rows. */
  double *E_brk_19; /* 1 rows. */
  double *E_brk_20; /* 1 rows. */
  double *E_brk_21; /* 1 rows. */
  double *E_brk_22; /* 1 rows. */
  double *E_brk_23; /* 1 rows. */
  double *E_brk_24; /* 1 rows. */
  double *E_brk_25; /* 1 rows. */
  double *E_brk_26; /* 1 rows. */
  double *E_brk_27; /* 1 rows. */
  double *E_brk_28; /* 1 rows. */
  double *E_brk_29; /* 1 rows. */
  double *E_brk_30; /* 1 rows. */
  double *E_brk_31; /* 1 rows. */
  double *E_brk_32; /* 1 rows. */
  double *E_brk_33; /* 1 rows. */
  double *E_brk_34; /* 1 rows. */
  double *E_brk_35; /* 1 rows. */
  double *E_brk_36; /* 1 rows. */
  double *E_brk_37; /* 1 rows. */
  double *E_brk_38; /* 1 rows. */
  double *E_brk_39; /* 1 rows. */
  double *E_brk_40; /* 1 rows. */
  double *E_brk_41; /* 1 rows. */
  double *E_brk_42; /* 1 rows. */
  double *E_brk_43; /* 1 rows. */
  double *E_brk_44; /* 1 rows. */
  double *E_brk_45; /* 1 rows. */
  double *E_brk_46; /* 1 rows. */
  double *E_brk_47; /* 1 rows. */
  double *E_brk_48; /* 1 rows. */
  double *E_brk_49; /* 1 rows. */
  double *E_brk_50; /* 1 rows. */
  double *KE_1; /* 1 rows. */
  double *KE_2; /* 1 rows. */
  double *KE_3; /* 1 rows. */
  double *KE_4; /* 1 rows. */
  double *KE_5; /* 1 rows. */
  double *KE_6; /* 1 rows. */
  double *KE_7; /* 1 rows. */
  double *KE_8; /* 1 rows. */
  double *KE_9; /* 1 rows. */
  double *KE_10; /* 1 rows. */
  double *KE_11; /* 1 rows. */
  double *KE_12; /* 1 rows. */
  double *KE_13; /* 1 rows. */
  double *KE_14; /* 1 rows. */
  double *KE_15; /* 1 rows. */
  double *KE_16; /* 1 rows. */
  double *KE_17; /* 1 rows. */
  double *KE_18; /* 1 rows. */
  double *KE_19; /* 1 rows. */
  double *KE_20; /* 1 rows. */
  double *KE_21; /* 1 rows. */
  double *KE_22; /* 1 rows. */
  double *KE_23; /* 1 rows. */
  double *KE_24; /* 1 rows. */
  double *KE_25; /* 1 rows. */
  double *KE_26; /* 1 rows. */
  double *KE_27; /* 1 rows. */
  double *KE_28; /* 1 rows. */
  double *KE_29; /* 1 rows. */
  double *KE_30; /* 1 rows. */
  double *KE_31; /* 1 rows. */
  double *KE_32; /* 1 rows. */
  double *KE_33; /* 1 rows. */
  double *KE_34; /* 1 rows. */
  double *KE_35; /* 1 rows. */
  double *KE_36; /* 1 rows. */
  double *KE_37; /* 1 rows. */
  double *KE_38; /* 1 rows. */
  double *KE_39; /* 1 rows. */
  double *KE_40; /* 1 rows. */
  double *KE_41; /* 1 rows. */
  double *KE_42; /* 1 rows. */
  double *KE_43; /* 1 rows. */
  double *KE_44; /* 1 rows. */
  double *KE_45; /* 1 rows. */
  double *KE_46; /* 1 rows. */
  double *KE_47; /* 1 rows. */
  double *KE_48; /* 1 rows. */
  double *KE_49; /* 1 rows. */
  double *KE_50; /* 1 rows. */
  double *KE_51; /* 1 rows. */
  double *t_01; /* 1 rows. */
  double *t_02; /* 1 rows. */
  double *t_03; /* 1 rows. */
  double *t_04; /* 1 rows. */
  double *t_05; /* 1 rows. */
  double *t_06; /* 1 rows. */
  double *t_07; /* 1 rows. */
  double *t_08; /* 1 rows. */
  double *t_09; /* 1 rows. */
  double *t_10; /* 1 rows. */
  double *t_11; /* 1 rows. */
  double *t_12; /* 1 rows. */
  double *t_13; /* 1 rows. */
  double *t_14; /* 1 rows. */
  double *t_15; /* 1 rows. */
  double *t_16; /* 1 rows. */
  double *t_17; /* 1 rows. */
  double *t_18; /* 1 rows. */
  double *t_19; /* 1 rows. */
  double *t_20; /* 1 rows. */
  double *t_21; /* 1 rows. */
  double *t_22; /* 1 rows. */
  double *t_23; /* 1 rows. */
  double *t_24; /* 1 rows. */
  double *t_25; /* 1 rows. */
  double *t_26; /* 1 rows. */
  double *t_27; /* 1 rows. */
  double *t_28; /* 1 rows. */
  double *t_29; /* 1 rows. */
  double *t_30; /* 1 rows. */
  double *t_31; /* 1 rows. */
  double *t_32; /* 1 rows. */
  double *t_33; /* 1 rows. */
  double *t_34; /* 1 rows. */
  double *t_35; /* 1 rows. */
  double *t_36; /* 1 rows. */
  double *t_37; /* 1 rows. */
  double *t_38; /* 1 rows. */
  double *t_39; /* 1 rows. */
  double *t_40; /* 1 rows. */
  double *t_41; /* 1 rows. */
  double *t_42; /* 1 rows. */
  double *t_43; /* 1 rows. */
  double *t_44; /* 1 rows. */
  double *t_45; /* 1 rows. */
  double *t_46; /* 1 rows. */
  double *t_47; /* 1 rows. */
  double *t_48; /* 1 rows. */
  double *t_49; /* 1 rows. */
  double *t_50; /* 1 rows. */
  double *t_51; /* 1 rows. */
  double *E_mech[51];
  double *E_brk[51];
  double *KE[52];
} Vars;
typedef struct Workspace_t {
  double h[459];
  double s_inv[459];
  double s_inv_z[459];
  double b[51];
  double q[204];
  double rhs[1173];
  double x[1173];
  double *s;
  double *z;
  double *y;
  double lhs_aff[1173];
  double lhs_cc[1173];
  double buffer[1173];
  double buffer2[1173];
  double KKT[2596];
  double L[1876];
  double d[1173];
  double v[1173];
  double d_inv[1173];
  double gap;
  double optval;
  double ineq_resid_squared;
  double eq_resid_squared;
  double block_33[1];
  /* Pre-op symbols. */
  double quad_497440178176[1];
  double quad_941255467008[1];
  double quad_544713953280[1];
  double quad_966000529408[1];
  double quad_279376060416[1];
  double quad_103701442560[1];
  double quad_451539890176[1];
  double quad_65783975936[1];
  double quad_278098780160[1];
  double quad_346734088192[1];
  double quad_865734729728[1];
  double quad_59608383488[1];
  double quad_57328373760[1];
  double quad_606206464000[1];
  double quad_160694083584[1];
  double quad_442033065984[1];
  double quad_73596555264[1];
  double quad_219651489792[1];
  double quad_464214024192[1];
  double quad_706704936960[1];
  double quad_373780619264[1];
  double quad_64254177280[1];
  double quad_155014316032[1];
  double quad_815860338688[1];
  double quad_860975583232[1];
  double quad_638357086208[1];
  double quad_322708262912[1];
  double quad_165777752064[1];
  double quad_91006648320[1];
  double quad_199278641152[1];
  double quad_972558278656[1];
  double quad_892504023040[1];
  double quad_694244651008[1];
  double quad_162259591168[1];
  double quad_897290911744[1];
  double quad_898907316224[1];
  double quad_793025404928[1];
  double quad_845965541376[1];
  double quad_865132068864[1];
  double quad_704703877120[1];
  double quad_917802688512[1];
  double quad_460894580736[1];
  double quad_544938782720[1];
  double quad_322148941824[1];
  double quad_746572328960[1];
  double quad_738716213248[1];
  double quad_802259378176[1];
  double quad_319251775488[1];
  double quad_323309359104[1];
  double quad_890213785600[1];
  double quad_859686141952[1];
  double quad_949474058240[1];
  double quad_10177187840[1];
  double quad_925969592320[1];
  double quad_131984052224[1];
  double quad_7646978048[1];
  double quad_480417484800[1];
  double quad_605294047232[1];
  double quad_624975724544[1];
  double quad_456657661952[1];
  double quad_260615725056[1];
  double quad_79691087872[1];
  double quad_18415435776[1];
  double quad_724195045376[1];
  double quad_427776335872[1];
  double quad_738830872576[1];
  double quad_674160123904[1];
  double quad_887432667136[1];
  double quad_635020148736[1];
  double quad_541049323520[1];
  double quad_453176598528[1];
  double quad_848381956096[1];
  double quad_769754947584[1];
  double quad_162172416000[1];
  double quad_351180664832[1];
  double quad_433152974848[1];
  double quad_294285848576[1];
  double quad_26811977728[1];
  double quad_907800358912[1];
  double quad_273185411072[1];
  double quad_443803488256[1];
  double quad_510468026368[1];
  double quad_663048445952[1];
  double quad_550309347328[1];
  double quad_836121358336[1];
  double quad_523665215488[1];
  double quad_417945812992[1];
  double quad_501035122688[1];
  double quad_451987386368[1];
  double quad_86712827904[1];
  double quad_146403049472[1];
  double quad_388493901824[1];
  double quad_389745393664[1];
  double quad_759515168768[1];
  double quad_333274140672[1];
  double quad_450278100992[1];
  double quad_448393707520[1];
  double quad_896338309120[1];
  double quad_649490386944[1];
  double quad_613453844480[1];
  double quad_898660130816[1];
  double quad_414665752576[1];
  double quad_226401624064[1];
  double quad_462507278336[1];
  double quad_259068092416[1];
  double quad_668622508032[1];
  double quad_105355575296[1];
  double quad_281467015168[1];
  double quad_756213379072[1];
  double quad_17661059072[1];
  double quad_554530824192[1];
  double quad_828449910784[1];
  double quad_38409555968[1];
  double quad_136758996992[1];
  double quad_987113906176[1];
  double quad_892036550656[1];
  double quad_507159662592[1];
  double quad_861286477824[1];
  double quad_131187154944[1];
  double quad_26748923904[1];
  double quad_581111574528[1];
  double quad_566303748096[1];
  double quad_984127086592[1];
  double quad_144826572800[1];
  double quad_990115905536[1];
  double quad_231474102272[1];
  double quad_874468802560[1];
  double quad_911124606976[1];
  double quad_317464064000[1];
  double quad_571423891456[1];
  double quad_845124456448[1];
  double quad_414667886592[1];
  double quad_562415247360[1];
  double quad_403004809216[1];
  double quad_914939170816[1];
  double quad_105021247488[1];
  double quad_850444926976[1];
  double quad_460649287680[1];
  double quad_755892858880[1];
  double quad_648937607168[1];
  double quad_54190485504[1];
  double quad_825974534144[1];
  double quad_634809778176[1];
  double quad_764285628416[1];
  double quad_145657675776[1];
  double quad_102144540672[1];
  double quad_179851964416[1];
  double quad_981034192896[1];
  double quad_340776472576[1];
  double quad_822305083392[1];
  double quad_120128712704[1];
  double quad_780096086016[1];
  double quad_483630018560[1];
  int converged;
} Workspace;
typedef struct Settings_t {
  double resid_tol;
  double eps;
  int max_iters;
  int refine_steps;
  int better_start;
  /* Better start obviates the need for s_init and z_init. */
  double s_init;
  double z_init;
  int verbose;
  /* Show extra details of the iterative refinement steps. */
  int verbose_refinement;
  int debug;
  /* For regularization. Minimum value of abs(D_ii) in the kkt D factor. */
  double kkt_reg;
} Settings;
extern Vars vars;
extern Params params;
extern Workspace work;
extern Settings settings;
/* Function definitions in ldl.c: */
void ldl_solve(double *target, double *var);
void ldl_factor(void);
double check_factorization(void);
void matrix_multiply(double *result, double *source);
double check_residual(double *target, double *multiplicand);
void fill_KKT(void);

/* Function definitions in matrix_support.c: */
void multbymA(double *lhs, double *rhs);
void multbymAT(double *lhs, double *rhs);
void multbymG(double *lhs, double *rhs);
void multbymGT(double *lhs, double *rhs);
void multbyP(double *lhs, double *rhs);
void fillq(void);
void fillh(void);
void fillb(void);
void pre_ops(void);

/* Function definitions in solver.c: */
double eval_gap(void);
void set_defaults(void);
void setup_pointers(void);
void setup_indexed_params(void);
void setup_indexed_optvars(void);
void setup_indexing(void);
void set_start(void);
double eval_objv(void);
void fillrhs_aff(void);
void fillrhs_cc(void);
void refine(double *target, double *var);
double calc_ineq_resid_squared(void);
double calc_eq_resid_squared(void);
void better_start(void);
void fillrhs_start(void);
long solve(void);

/* Function definitions in testsolver.c: */
int main(int argc, char **argv);
void load_default_data(void);

/* Function definitions in util.c: */
void tic(void);
float toc(void);
float tocq(void);
void printmatrix(char *name, double *A, int m, int n, int sparse);
double unif(double lower, double upper);
float ran1(long*idum, int reset);
float randn_internal(long *idum, int reset);
double randn(void);
void reset_rand(void);

#endif
