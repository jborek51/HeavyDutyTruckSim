/* Produced by CVXGEN, 2019-07-30 10:36:08 -0400.  */
/* CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com. */
/* The code in this file is Copyright (C) 2006-2017 Jacob Mattingley. */
/* CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial */
/* applications without prior written permission from Jacob Mattingley. */

/* Filename: testsolver.c. */
/* Description: Basic test harness for solver.c. */
#include "solver.h"
Vars vars;
Params params;
Workspace work;
Settings settings;
#define NUMTESTS 0
int main(int argc, char **argv) {
  int num_iters;
#if (NUMTESTS > 0)
  int i;
  double time;
  double time_per;
#endif
  set_defaults();
  setup_indexing();
  load_default_data();
  /* Solve problem instance for the record. */
  settings.verbose = 1;
  num_iters = solve();
#ifndef ZERO_LIBRARY_MODE
#if (NUMTESTS > 0)
  /* Now solve multiple problem instances for timing purposes. */
  settings.verbose = 0;
  tic();
  for (i = 0; i < NUMTESTS; i++) {
    solve();
  }
  time = tocq();
  printf("Timed %d solves over %.3f seconds.\n", NUMTESTS, time);
  time_per = time / NUMTESTS;
  if (time_per > 1) {
    printf("Actual time taken per solve: %.3g s.\n", time_per);
  } else if (time_per > 1e-3) {
    printf("Actual time taken per solve: %.3g ms.\n", 1e3*time_per);
  } else {
    printf("Actual time taken per solve: %.3g us.\n", 1e6*time_per);
  }
#endif
#endif
  return 0;
}
void load_default_data(void) {
  params.lam_b[0] = 0.20319161029830202;
  params.lam_e[0] = 0.8325912904724193;
  params.KE_des_1[0] = -0.8363810443482227;
  params.KE_des_2[0] = 0.04331042079065206;
  params.KE_des_3[0] = 1.5717878173906188;
  params.KE_des_4[0] = 1.5851723557337523;
  params.KE_des_5[0] = -1.497658758144655;
  params.KE_des_6[0] = -1.171028487447253;
  params.KE_des_7[0] = -1.7941311867966805;
  params.KE_des_8[0] = -0.23676062539745413;
  params.KE_des_9[0] = -1.8804951564857322;
  params.KE_des_10[0] = -0.17266710242115568;
  params.KE_des_11[0] = 0.596576190459043;
  params.KE_des_12[0] = -0.8860508694080989;
  params.KE_des_13[0] = 0.7050196079205251;
  params.KE_des_14[0] = 0.3634512696654033;
  params.KE_des_15[0] = -1.9040724704913385;
  params.KE_des_16[0] = 0.23541635196352795;
  params.KE_des_17[0] = -0.9629902123701384;
  params.KE_des_18[0] = -0.3395952119597214;
  params.KE_des_19[0] = -0.865899672914725;
  params.KE_des_20[0] = 0.7725516732519853;
  params.KE_des_21[0] = -0.23818512931704205;
  params.KE_des_22[0] = -1.372529046100147;
  params.KE_des_23[0] = 0.17859607212737894;
  params.KE_des_24[0] = 1.1212590580454682;
  params.KE_des_25[0] = -0.774545870495281;
  params.KE_des_26[0] = -1.1121684642712744;
  params.KE_des_27[0] = -0.44811496977740495;
  params.KE_des_28[0] = 1.7455345994417217;
  params.KE_des_29[0] = 1.9039816898917352;
  params.KE_des_30[0] = 0.6895347036512547;
  params.KE_des_31[0] = 1.6113364341535923;
  params.KE_des_32[0] = 1.383003485172717;
  params.KE_des_33[0] = -0.48802383468444344;
  params.KE_des_34[0] = -1.631131964513103;
  params.KE_des_35[0] = 0.6136436100941447;
  params.KE_des_36[0] = 0.2313630495538037;
  params.KE_des_37[0] = -0.5537409477496875;
  params.KE_des_38[0] = -1.0997819806406723;
  params.KE_des_39[0] = -0.3739203344950055;
  params.KE_des_40[0] = -0.12423900520332376;
  params.KE_des_41[0] = -0.923057686995755;
  params.KE_des_42[0] = -0.8328289030982696;
  params.KE_des_43[0] = -0.16925440270808823;
  params.KE_des_44[0] = 1.442135651787706;
  params.KE_des_45[0] = 0.34501161787128565;
  params.KE_des_46[0] = -0.8660485502711608;
  params.KE_des_47[0] = -0.8880899735055947;
  params.KE_des_48[0] = -0.1815116979122129;
  params.KE_des_49[0] = -1.17835862158005;
  params.KE_des_50[0] = -1.1944851558277074;
  params.KE_des_51[0] = 0.05614023926976763;
  params.A[0] = -1.6510825248767813;
  params.KE_0[0] = -0.06565787059365391;
  params.Env_0[0] = -0.5512951504486665;
  params.Env_1[0] = 0.8307464872626844;
  params.Env_2[0] = 0.9869848924080182;
  params.Env_3[0] = 0.7643716874230573;
  params.Env_4[0] = 0.7567216550196565;
  params.Env_5[0] = -0.5055995034042868;
  params.Env_6[0] = 0.6725392189410702;
  params.Env_7[0] = -0.6406053441727284;
  params.Env_8[0] = 0.29117547947550015;
  params.Env_9[0] = -0.6967713677405021;
  params.Env_10[0] = -0.21941980294587182;
  params.Env_11[0] = -1.753884276680243;
  params.Env_12[0] = -1.0292983112626475;
  params.Env_13[0] = 1.8864104246942706;
  params.Env_14[0] = -1.077663182579704;
  params.Env_15[0] = 0.7659100437893209;
  params.Env_16[0] = 0.6019074328549583;
  params.Env_17[0] = 0.8957565577499285;
  params.Env_18[0] = -0.09964555746227477;
  params.Env_19[0] = 0.38665509840745127;
  params.Env_20[0] = -1.7321223042686946;
  params.Env_21[0] = -1.7097514487110663;
  params.Env_22[0] = -1.2040958948116867;
  params.Env_23[0] = -1.3925560119658358;
  params.Env_24[0] = -1.5995826216742213;
  params.Env_25[0] = -1.4828245415645833;
  params.Env_26[0] = 0.21311092723061398;
  params.Env_27[0] = -1.248740700304487;
  params.Env_28[0] = 1.808404972124833;
  params.Env_29[0] = 0.7264471152297065;
  params.Env_30[0] = 0.16407869343908477;
  params.Env_31[0] = 0.8287224032315907;
  params.Env_32[0] = -0.9444533161899464;
  params.Env_33[0] = 1.7069027370149112;
  params.Env_34[0] = 1.3567722311998827;
  params.Env_35[0] = 0.9052779937121489;
  params.Env_36[0] = -0.07904017565835986;
  params.Env_37[0] = 1.3684127435065871;
  params.Env_38[0] = 0.979009293697437;
  params.Env_39[0] = 0.6413036255984501;
  params.Env_40[0] = 1.6559010680237511;
  params.Env_41[0] = 0.5346622551502991;
  params.Env_42[0] = -0.5362376605895625;
  params.Env_43[0] = 0.2113782926017822;
  params.Env_44[0] = -1.2144776931994525;
  params.Env_45[0] = -1.2317108144255875;
  params.Env_46[0] = 0.9026784957312834;
  params.Env_47[0] = 1.1397468137245244;
  params.Env_48[0] = 1.8883934547350631;
  params.Env_49[0] = 1.4038856681660068;
  params.Env_50[0] = 0.17437730638329096;
  params.KE_max_1[0] = -1.6408365219077408;
  params.KE_max_2[0] = -0.04450702153554875;
  params.KE_max_3[0] = 1.7117453902485025;
  params.KE_max_4[0] = 1.1504727980139053;
  params.KE_max_5[0] = -0.05962309578364744;
  params.KE_max_6[0] = -0.1788825540764547;
  params.KE_max_7[0] = -1.1280569263625857;
  params.KE_max_8[0] = -1.2911464767927057;
  params.KE_max_9[0] = -1.7055053231225696;
  params.KE_max_10[0] = 1.56957275034837;
  params.KE_max_11[0] = 0.5607064675962357;
  params.KE_max_12[0] = -1.4266707301147146;
  params.KE_max_13[0] = -0.3434923211351708;
  params.KE_max_14[0] = -1.8035643024085055;
  params.KE_max_15[0] = -1.1625066019105454;
  params.KE_max_16[0] = 0.9228324965161532;
  params.KE_max_17[0] = 0.6044910817663975;
  params.KE_max_18[0] = -0.0840868104920891;
  params.KE_max_19[0] = -0.900877978017443;
  params.KE_max_20[0] = 0.608892500264739;
  params.KE_max_21[0] = 1.8257980452695217;
  params.KE_max_22[0] = -0.25791777529922877;
  params.KE_max_23[0] = -1.7194699796493191;
  params.KE_max_24[0] = -1.7690740487081298;
  params.KE_max_25[0] = -1.6685159248097703;
  params.KE_max_26[0] = 1.8388287490128845;
  params.KE_max_27[0] = 0.16304334474597537;
  params.KE_max_28[0] = 1.3498497306788897;
  params.KE_max_29[0] = -1.3198658230514613;
  params.KE_max_30[0] = -0.9586197090843394;
  params.KE_max_31[0] = 0.7679100474913709;
  params.KE_max_32[0] = 1.5822813125679343;
  params.KE_max_33[0] = -0.6372460621593619;
  params.KE_max_34[0] = -1.741307208038867;
  params.KE_max_35[0] = 1.456478677642575;
  params.KE_max_36[0] = -0.8365102166820959;
  params.KE_max_37[0] = 0.9643296255982503;
  params.KE_max_38[0] = -1.367865381194024;
  params.KE_max_39[0] = 0.7798537405635035;
  params.KE_max_40[0] = 1.3656784761245926;
  params.KE_max_41[0] = 0.9086083149868371;
  params.KE_max_42[0] = -0.5635699005460344;
  params.KE_max_43[0] = 0.9067590059607915;
  params.KE_max_44[0] = -1.4421315032701587;
  params.KE_max_45[0] = -0.7447235390671119;
  params.KE_max_46[0] = -0.32166897326822186;
  params.KE_max_47[0] = 1.5088481557772684;
  params.KE_max_48[0] = -1.385039165715428;
  params.KE_max_49[0] = 1.5204991609972622;
  params.KE_max_50[0] = 1.1958572768832156;
  params.KE_max_51[0] = 1.8864971883119228;
  params.KE_min_1[0] = -0.5291880667861584;
  params.KE_min_2[0] = -1.1802409243688836;
  params.KE_min_3[0] = -1.037718718661604;
  params.KE_min_4[0] = 1.3114512056856835;
  params.KE_min_5[0] = 1.8609125943756615;
  params.KE_min_6[0] = 0.7952399935216938;
  params.KE_min_7[0] = -0.07001183290468038;
  params.KE_min_8[0] = -0.8518009412754686;
  params.KE_min_9[0] = 1.3347515373726386;
  params.KE_min_10[0] = 1.4887180335977037;
  params.KE_min_11[0] = -1.6314736327976336;
  params.KE_min_12[0] = -1.1362021159208933;
  params.KE_min_13[0] = 1.327044361831466;
  params.KE_min_14[0] = 1.3932155883179842;
  params.KE_min_15[0] = -0.7413880049440107;
  params.KE_min_16[0] = -0.8828216126125747;
  params.KE_min_17[0] = -0.27673991192616;
  params.KE_min_18[0] = 0.15778600105866714;
  params.KE_min_19[0] = -1.6177327399735457;
  params.KE_min_20[0] = 1.3476485548544606;
  params.KE_min_21[0] = 0.13893948140528378;
  params.KE_min_22[0] = 1.0998712601636944;
  params.KE_min_23[0] = -1.0766549376946926;
  params.KE_min_24[0] = 1.8611734044254629;
  params.KE_min_25[0] = 1.0041092292735172;
  params.KE_min_26[0] = -0.6276245424321543;
  params.KE_min_27[0] = 1.794110587839819;
  params.KE_min_28[0] = 0.8020471158650913;
  params.KE_min_29[0] = 1.362244341944948;
  params.KE_min_30[0] = -1.8180107765765245;
  params.KE_min_31[0] = -1.7774338357932473;
  params.KE_min_32[0] = 0.9709490941985153;
  params.KE_min_33[0] = -0.7812542682064318;
  params.KE_min_34[0] = 0.0671374633729811;
  params.KE_min_35[0] = -1.374950305314906;
  params.KE_min_36[0] = 1.9118096386279388;
  params.KE_min_37[0] = 0.011004190697677885;
  params.KE_min_38[0] = 1.3160043138989015;
  params.KE_min_39[0] = -1.7038488148800144;
  params.KE_min_40[0] = -0.08433819112864738;
  params.KE_min_41[0] = -1.7508820783768964;
  params.KE_min_42[0] = 1.536965724350949;
  params.KE_min_43[0] = -0.21675928514816478;
  params.KE_min_44[0] = -1.725800326952653;
  params.KE_min_45[0] = -1.6940148707361717;
  params.KE_min_46[0] = 0.15517063201268;
  params.KE_min_47[0] = -1.697734381979077;
  params.KE_min_48[0] = -1.264910727950229;
  params.KE_min_49[0] = -0.2545716633339441;
  params.KE_min_50[0] = -0.008868675926170244;
  params.KE_min_51[0] = 0.3332476609670296;
  params.E_mech_max[0] = 0.48205072561962936;
  params.E_mech_min[0] = -0.5087540014293261;
  params.E_brk_max[0] = 0.4749463319223195;
  params.E_brk_min[0] = -1.371021366459455;
}
