
/*	
 *	Variable names:
 *	u0 - Scalar inputs
 * 	u1 - Env
 *	u2 - KE_des
 *	u3 - KE_max
 *	u4 - KE_min
 *	y0 - E_out
 *	y1 - KE_out
 */
#if defined(MATLAB_MEX_FILE)
#include "tmwtypes.h"
#include "simstruc_types.h"
#else
#include "rtwtypes.h"
#endif



/* %%%-SFUNWIZ_wrapper_includes_Changes_BEGIN --- EDIT HERE TO _END */
#include <math.h>
#include "solver51_v1.h"
#include "all51_v1.c"
/* %%%-SFUNWIZ_wrapper_includes_Changes_END --- EDIT HERE TO _BEGIN */
#define u_width 8
#define y_width 1

Vars vars;
Params params;
Workspace work;
Settings settings;

/*
 * Create external references here.  
 *
 */
/* %%%-SFUNWIZ_wrapper_externs_Changes_BEGIN --- EDIT HERE TO _END */
/* extern double func(double a); */
/* %%%-SFUNWIZ_wrapper_externs_Changes_END --- EDIT HERE TO _BEGIN */

/*
 * Output function
 *
 */
void solver_51_v1_Outputs_wrapper(const real_T *u0,
			const real_T *u1,
			const real_T *u2,
			const real_T *u3,
			const real_T *u4,
			real_T *y0,
			real_T *y1)
{
	set_defaults();
	setup_indexing();
	
	/* Define param structure from inputs*/
	params.A[0] = u0[0];
	params.KE_0[0] = u0[1];
	params.E_mech_max[0] = u0[2];
	params.E_mech_min[0] = u0[3];
	params.E_brk_max[0] = u0[4];
	params.E_brk_min[0] = u0[5];
	params.lam_e[0] = u0[6];
	params.lam_b[0] = u0[7];
	
	params.KE_des_1[0] = u2[0];
	params.KE_des_2[0] = u2[1];
	params.KE_des_3[0] = u2[2];
	params.KE_des_4[0] = u2[3];
	params.KE_des_5[0] = u2[4];
	params.KE_des_6[0] = u2[5];
	params.KE_des_7[0] = u2[6];
	params.KE_des_8[0] = u2[7];
	params.KE_des_9[0] = u2[8];
	params.KE_des_10[0] = u2[9];
	params.KE_des_11[0] = u2[10];
	params.KE_des_12[0] = u2[11];
	params.KE_des_13[0] = u2[12];
	params.KE_des_14[0] = u2[13];
	params.KE_des_15[0] = u2[14];
	params.KE_des_16[0] = u2[15];
	params.KE_des_17[0] = u2[16];
	params.KE_des_18[0] = u2[17];
	params.KE_des_19[0] = u2[18];
	params.KE_des_20[0] = u2[19];
	params.KE_des_21[0] = u2[20];
	params.KE_des_22[0] = u2[21];
	params.KE_des_23[0] = u2[22];
	params.KE_des_24[0] = u2[23];
	params.KE_des_25[0] = u2[24];
	params.KE_des_26[0] = u2[25];
	params.KE_des_27[0] = u2[26];
	params.KE_des_28[0] = u2[27];
	params.KE_des_29[0] = u2[28];
	params.KE_des_30[0] = u2[29];
	params.KE_des_31[0] = u2[30];
	params.KE_des_32[0] = u2[31];
	params.KE_des_33[0] = u2[32];
	params.KE_des_34[0] = u2[33];
	params.KE_des_35[0] = u2[34];
	params.KE_des_36[0] = u2[35];
	params.KE_des_37[0] = u2[36];
	params.KE_des_38[0] = u2[37];
	params.KE_des_39[0] = u2[38];
	params.KE_des_40[0] = u2[39];
	params.KE_des_41[0] = u2[40];
	params.KE_des_42[0] = u2[41];
	params.KE_des_43[0] = u2[42];
	params.KE_des_44[0] = u2[43];
	params.KE_des_45[0] = u2[44];
	params.KE_des_46[0] = u2[45];
	params.KE_des_47[0] = u2[46];
	params.KE_des_48[0] = u2[47];
	params.KE_des_49[0] = u2[48];
	params.KE_des_50[0] = u2[49];
	params.KE_des_51[0] = u2[50];
	
	params.Env_0[0] = u1[0];
	params.Env_1[0] = u1[1];
	params.Env_2[0] = u1[2];
	params.Env_3[0] = u1[3];
	params.Env_4[0] = u1[4];
	params.Env_5[0] = u1[5];
	params.Env_6[0] = u1[6];
	params.Env_7[0] = u1[7];
	params.Env_8[0] = u1[8];
	params.Env_9[0] = u1[9];
	params.Env_10[0] = u1[10];
	params.Env_11[0] = u1[11];
	params.Env_12[0] = u1[12];
	params.Env_13[0] = u1[13];
	params.Env_14[0] = u1[14];
	params.Env_15[0] = u1[15];
	params.Env_16[0] = u1[16];
	params.Env_17[0] = u1[17];
	params.Env_18[0] = u1[18];
	params.Env_19[0] = u1[19];
	params.Env_20[0] = u1[20];
	params.Env_21[0] = u1[21];
	params.Env_22[0] = u1[22];
	params.Env_23[0] = u1[23];
	params.Env_24[0] = u1[24];
	params.Env_25[0] = u1[25];
	params.Env_26[0] = u1[26];
	params.Env_27[0] = u1[27];
	params.Env_28[0] = u1[28];
	params.Env_29[0] = u1[29];
	params.Env_30[0] = u1[30];
	params.Env_31[0] = u1[31];
	params.Env_32[0] = u1[32];
	params.Env_33[0] = u1[33];
	params.Env_34[0] = u1[34];
	params.Env_35[0] = u1[35];
	params.Env_36[0] = u1[36];
	params.Env_37[0] = u1[37];
	params.Env_38[0] = u1[38];
	params.Env_39[0] = u1[39];
	params.Env_40[0] = u1[40];
	params.Env_41[0] = u1[41];
	params.Env_42[0] = u1[42];
	params.Env_43[0] = u1[43];
	params.Env_44[0] = u1[44];
	params.Env_45[0] = u1[45];
	params.Env_46[0] = u1[46];
	params.Env_47[0] = u1[47];
	params.Env_48[0] = u1[48];
	params.Env_49[0] = u1[49];
	params.Env_50[0] = u1[50];
	
	params.KE_max_1[0] = u3[0];
	params.KE_max_2[0] = u3[1];
	params.KE_max_3[0] = u3[2];
	params.KE_max_4[0] = u3[4];
	params.KE_max_5[0] = u3[4];
	params.KE_max_6[0] = u3[5];
	params.KE_max_7[0] = u3[6];
	params.KE_max_8[0] = u3[7];
	params.KE_max_9[0] = u3[8];
	params.KE_max_10[0] = u3[9];
	params.KE_max_11[0] = u3[10];
	params.KE_max_12[0] = u3[11];
	params.KE_max_13[0] = u3[12];
	params.KE_max_14[0] = u3[13];
	params.KE_max_15[0] = u3[14];
	params.KE_max_16[0] = u3[15];
	params.KE_max_17[0] = u3[16];
	params.KE_max_18[0] = u3[17];
	params.KE_max_19[0] = u3[18];
	params.KE_max_20[0] = u3[19];
	params.KE_max_21[0] = u3[20];
	params.KE_max_22[0] = u3[21];
	params.KE_max_23[0] = u3[22];
	params.KE_max_24[0] = u3[23];
	params.KE_max_25[0] = u3[24];
	params.KE_max_26[0] = u3[25];
	params.KE_max_27[0] = u3[26];
	params.KE_max_28[0] = u3[27];
	params.KE_max_29[0] = u3[28];
	params.KE_max_30[0] = u3[29];
	params.KE_max_31[0] = u3[30];
	params.KE_max_32[0] = u3[31];
	params.KE_max_33[0] = u3[32];
	params.KE_max_34[0] = u3[33];
	params.KE_max_35[0] = u3[34];
	params.KE_max_36[0] = u3[35];
	params.KE_max_37[0] = u3[36];
	params.KE_max_38[0] = u3[37];
	params.KE_max_39[0] = u3[38];
	params.KE_max_40[0] = u3[39];
	params.KE_max_41[0] = u3[40];
	params.KE_max_42[0] = u3[41];
	params.KE_max_43[0] = u3[42];
	params.KE_max_44[0] = u3[43];
	params.KE_max_45[0] = u3[44];
	params.KE_max_46[0] = u3[45];
	params.KE_max_47[0] = u3[46];
	params.KE_max_48[0] = u3[47];
	params.KE_max_49[0] = u3[48];
	params.KE_max_50[0] = u3[49];
	params.KE_max_51[0] = u3[50];
	
	params.KE_min_1[0] = u4[0];
	params.KE_min_2[0] = u4[1];
	params.KE_min_3[0] = u4[2];
	params.KE_min_4[0] = u4[3];
	params.KE_min_5[0] = u4[4];
	params.KE_min_6[0] = u4[5];
	params.KE_min_7[0] = u4[6];
	params.KE_min_8[0] = u4[7];
	params.KE_min_9[0] = u4[8];
	params.KE_min_10[0] = u4[9];
	params.KE_min_11[0] = u4[10];
	params.KE_min_12[0] = u4[11];
	params.KE_min_13[0] = u4[12];
	params.KE_min_14[0] = u4[13];
	params.KE_min_15[0] = u4[14];
	params.KE_min_16[0] = u4[15];
	params.KE_min_17[0] = u4[16];
	params.KE_min_18[0] = u4[17];
	params.KE_min_19[0] = u4[18];
	params.KE_min_20[0] = u4[19];
	params.KE_min_21[0] = u4[20];
	params.KE_min_22[0] = u4[21];
	params.KE_min_23[0] = u4[22];
	params.KE_min_24[0] = u4[23];
	params.KE_min_25[0] = u4[24];
	params.KE_min_26[0] = u4[25];
	params.KE_min_27[0] = u4[26];
	params.KE_min_28[0] = u4[27];
	params.KE_min_29[0] = u4[28];
	params.KE_min_30[0] = u4[29];
	params.KE_min_31[0] = u4[30];
	params.KE_min_32[0] = u4[31];
	params.KE_min_33[0] = u4[32];
	params.KE_min_34[0] = u4[33];
	params.KE_min_35[0] = u4[34];
	params.KE_min_36[0] = u4[35];
	params.KE_min_37[0] = u4[36];
	params.KE_min_38[0] = u4[37];
	params.KE_min_39[0] = u4[38];
	params.KE_min_40[0] = u4[39];
	params.KE_min_41[0] = u4[40];
	params.KE_min_42[0] = u4[41];
	params.KE_min_43[0] = u4[42];
	params.KE_min_44[0] = u4[43];
	params.KE_min_45[0] = u4[44];
	params.KE_min_46[0] = u4[45];
	params.KE_min_47[0] = u4[46];
	params.KE_min_48[0] = u4[47];
	params.KE_min_49[0] = u4[48];
	params.KE_min_50[0] = u4[49];
	params.KE_min_51[0] = u4[50];
		
	/* Solve optimization problem*/
	solve();
	
	/* Get solution output*/
    int i;
	for(i = 0; i < 50; i++) {
		y0[i] = *vars.E_mech[i]-*vars.E_brk[i];
	}
	for(i = 0; i < 51; i++) {
		y1[i] = *vars.KE[i+1];
	}
}


