/* Produced by CVXGEN, 2019-07-30 10:36:08 -0400.  */
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
  double lam_b[1];
  double lam_e[1];
  double KE_des_1[1];
  double KE_des_2[1];
  double KE_des_3[1];
  double KE_des_4[1];
  double KE_des_5[1];
  double KE_des_6[1];
  double KE_des_7[1];
  double KE_des_8[1];
  double KE_des_9[1];
  double KE_des_10[1];
  double KE_des_11[1];
  double KE_des_12[1];
  double KE_des_13[1];
  double KE_des_14[1];
  double KE_des_15[1];
  double KE_des_16[1];
  double KE_des_17[1];
  double KE_des_18[1];
  double KE_des_19[1];
  double KE_des_20[1];
  double KE_des_21[1];
  double KE_des_22[1];
  double KE_des_23[1];
  double KE_des_24[1];
  double KE_des_25[1];
  double KE_des_26[1];
  double KE_des_27[1];
  double KE_des_28[1];
  double KE_des_29[1];
  double KE_des_30[1];
  double KE_des_31[1];
  double KE_des_32[1];
  double KE_des_33[1];
  double KE_des_34[1];
  double KE_des_35[1];
  double KE_des_36[1];
  double KE_des_37[1];
  double KE_des_38[1];
  double KE_des_39[1];
  double KE_des_40[1];
  double KE_des_41[1];
  double KE_des_42[1];
  double KE_des_43[1];
  double KE_des_44[1];
  double KE_des_45[1];
  double KE_des_46[1];
  double KE_des_47[1];
  double KE_des_48[1];
  double KE_des_49[1];
  double KE_des_50[1];
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
  double *E_mech[51];
  double *E_brk[51];
  double *KE[52];
} Vars;
typedef struct Workspace_t {
  double h[306];
  double s_inv[306];
  double s_inv_z[306];
  double b[51];
  double q[153];
  double rhs[816];
  double x[816];
  double *s;
  double *z;
  double *y;
  double lhs_aff[816];
  double lhs_cc[816];
  double buffer[816];
  double buffer2[816];
  double KKT[1580];
  double L[815];
  double d[816];
  double v[816];
  double d_inv[816];
  double gap;
  double optval;
  double ineq_resid_squared;
  double eq_resid_squared;
  double block_33[1];
  /* Pre-op symbols. */
  double quad_348188090368[1];
  double quad_414032261120[1];
  double quad_768072527872[1];
  double quad_661432246272[1];
  double quad_55378427904[1];
  double quad_446409740288[1];
  double quad_976314679296[1];
  double quad_149993947136[1];
  double quad_271355883520[1];
  double quad_208976261120[1];
  double quad_423494877184[1];
  double quad_697489670144[1];
  double quad_692687998976[1];
  double quad_327833575424[1];
  double quad_267152363520[1];
  double quad_94665977856[1];
  double quad_791980539904[1];
  double quad_662707019776[1];
  double quad_161760264192[1];
  double quad_434016559104[1];
  double quad_410399719424[1];
  double quad_947095162880[1];
  double quad_31273840640[1];
  double quad_372091113472[1];
  double quad_820269903872[1];
  double quad_483024146432[1];
  double quad_332118106112[1];
  double quad_324111216640[1];
  double quad_2292813824[1];
  double quad_11455180800[1];
  double quad_984700080128[1];
  double quad_922069303296[1];
  double quad_172879028224[1];
  double quad_805454770176[1];
  double quad_708530388992[1];
  double quad_697954308096[1];
  double quad_121121202176[1];
  double quad_183239651328[1];
  double quad_689675665408[1];
  double quad_846612766720[1];
  double quad_414307086336[1];
  double quad_942105661440[1];
  double quad_571194347520[1];
  double quad_280912945152[1];
  double quad_236355207168[1];
  double quad_377771118592[1];
  double quad_197158682624[1];
  double quad_99267248128[1];
  double quad_483248558080[1];
  double quad_201634062336[1];
  double quad_850211549184[1];
  double quad_865473191936[1];
  double quad_975994032128[1];
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
