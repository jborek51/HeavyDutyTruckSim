% csolve  Solves a custom quadratic program very rapidly.
%
% [vars, status] = csolve(params, settings)
%
% solves the convex optimization problem
%
%   minimize(square(E_mech_0) + square(E_mech_1) + square(E_mech_2) + square(E_mech_3) + square(E_mech_4) + square(E_mech_5) + square(E_mech_6) + square(E_mech_7) + square(E_mech_8) + square(E_mech_9) + square(E_mech_10) + square(E_mech_11) + square(E_mech_12) + square(E_mech_13) + square(E_mech_14) + square(E_mech_15) + square(E_mech_16) + square(E_mech_17) + square(E_mech_18) + square(E_mech_19) + square(E_mech_20) + square(E_mech_21) + square(E_mech_22) + square(E_mech_23) + square(E_mech_24) + square(E_mech_25) + square(E_mech_26) + square(E_mech_27) + square(E_mech_28) + square(E_mech_29) + square(E_mech_30) + square(E_mech_31) + square(E_mech_32) + square(E_mech_33) + square(E_mech_34) + square(E_mech_35) + square(E_mech_36) + square(E_mech_37) + square(E_mech_38) + square(E_mech_39) + square(E_mech_40) + square(E_mech_41) + square(E_mech_42) + square(E_mech_43) + square(E_mech_44) + square(E_mech_45) + square(E_mech_46) + square(E_mech_47) + square(E_mech_48) + square(E_mech_49) + square(E_mech_50) + square(lam_b*E_brk_0) + square(lam_b*E_brk_1) + square(lam_b*E_brk_2) + square(lam_b*E_brk_3) + square(lam_b*E_brk_4) + square(lam_b*E_brk_5) + square(lam_b*E_brk_6) + square(lam_b*E_brk_7) + square(lam_b*E_brk_8) + square(lam_b*E_brk_9) + square(lam_b*E_brk_10) + square(lam_b*E_brk_11) + square(lam_b*E_brk_12) + square(lam_b*E_brk_13) + square(lam_b*E_brk_14) + square(lam_b*E_brk_15) + square(lam_b*E_brk_16) + square(lam_b*E_brk_17) + square(lam_b*E_brk_18) + square(lam_b*E_brk_19) + square(lam_b*E_brk_20) + square(lam_b*E_brk_21) + square(lam_b*E_brk_22) + square(lam_b*E_brk_23) + square(lam_b*E_brk_24) + square(lam_b*E_brk_25) + square(lam_b*E_brk_26) + square(lam_b*E_brk_27) + square(lam_b*E_brk_28) + square(lam_b*E_brk_29) + square(lam_b*E_brk_30) + square(lam_b*E_brk_31) + square(lam_b*E_brk_32) + square(lam_b*E_brk_33) + square(lam_b*E_brk_34) + square(lam_b*E_brk_35) + square(lam_b*E_brk_36) + square(lam_b*E_brk_37) + square(lam_b*E_brk_38) + square(lam_b*E_brk_39) + square(lam_b*E_brk_40) + square(lam_b*E_brk_41) + square(lam_b*E_brk_42) + square(lam_b*E_brk_43) + square(lam_b*E_brk_44) + square(lam_b*E_brk_45) + square(lam_b*E_brk_46) + square(lam_b*E_brk_47) + square(lam_b*E_brk_48) + square(lam_b*E_brk_49) + square(lam_b*E_brk_50) + square(lam_e*(KE_1 - KE_des_1)) + square(lam_e*(KE_2 - KE_des_2)) + square(lam_e*(KE_3 - KE_des_3)) + square(lam_e*(KE_4 - KE_des_4)) + square(lam_e*(KE_5 - KE_des_5)) + square(lam_e*(KE_6 - KE_des_6)) + square(lam_e*(KE_7 - KE_des_7)) + square(lam_e*(KE_8 - KE_des_8)) + square(lam_e*(KE_9 - KE_des_9)) + square(lam_e*(KE_10 - KE_des_10)) + square(lam_e*(KE_11 - KE_des_11)) + square(lam_e*(KE_12 - KE_des_12)) + square(lam_e*(KE_13 - KE_des_13)) + square(lam_e*(KE_14 - KE_des_14)) + square(lam_e*(KE_15 - KE_des_15)) + square(lam_e*(KE_16 - KE_des_16)) + square(lam_e*(KE_17 - KE_des_17)) + square(lam_e*(KE_18 - KE_des_18)) + square(lam_e*(KE_19 - KE_des_19)) + square(lam_e*(KE_20 - KE_des_20)) + square(lam_e*(KE_21 - KE_des_21)) + square(lam_e*(KE_22 - KE_des_22)) + square(lam_e*(KE_23 - KE_des_23)) + square(lam_e*(KE_24 - KE_des_24)) + square(lam_e*(KE_25 - KE_des_25)) + square(lam_e*(KE_26 - KE_des_26)) + square(lam_e*(KE_27 - KE_des_27)) + square(lam_e*(KE_28 - KE_des_28)) + square(lam_e*(KE_29 - KE_des_29)) + square(lam_e*(KE_30 - KE_des_30)) + square(lam_e*(KE_31 - KE_des_31)) + square(lam_e*(KE_32 - KE_des_32)) + square(lam_e*(KE_33 - KE_des_33)) + square(lam_e*(KE_34 - KE_des_34)) + square(lam_e*(KE_35 - KE_des_35)) + square(lam_e*(KE_36 - KE_des_36)) + square(lam_e*(KE_37 - KE_des_37)) + square(lam_e*(KE_38 - KE_des_38)) + square(lam_e*(KE_39 - KE_des_39)) + square(lam_e*(KE_40 - KE_des_40)) + square(lam_e*(KE_41 - KE_des_41)) + square(lam_e*(KE_42 - KE_des_42)) + square(lam_e*(KE_43 - KE_des_43)) + square(lam_e*(KE_44 - KE_des_44)) + square(lam_e*(KE_45 - KE_des_45)) + square(lam_e*(KE_46 - KE_des_46)) + square(lam_e*(KE_47 - KE_des_47)) + square(lam_e*(KE_48 - KE_des_48)) + square(lam_e*(KE_49 - KE_des_49)) + square(lam_e*(KE_50 - KE_des_50)) + square(lam_e*(KE_51 - KE_des_51)))
%   subject to
%     KE_1 == A*KE_0 + E_mech_0 - E_brk_0 - Env_0
%     KE_2 == A*KE_1 + E_mech_1 - E_brk_1 - Env_1
%     KE_3 == A*KE_2 + E_mech_2 - E_brk_2 - Env_2
%     KE_4 == A*KE_3 + E_mech_3 - E_brk_3 - Env_3
%     KE_5 == A*KE_4 + E_mech_4 - E_brk_4 - Env_4
%     KE_6 == A*KE_5 + E_mech_5 - E_brk_5 - Env_5
%     KE_7 == A*KE_6 + E_mech_6 - E_brk_6 - Env_6
%     KE_8 == A*KE_7 + E_mech_7 - E_brk_7 - Env_7
%     KE_9 == A*KE_8 + E_mech_8 - E_brk_8 - Env_8
%     KE_10 == A*KE_9 + E_mech_9 - E_brk_9 - Env_9
%     KE_11 == A*KE_10 + E_mech_10 - E_brk_10 - Env_10
%     KE_12 == A*KE_11 + E_mech_11 - E_brk_11 - Env_11
%     KE_13 == A*KE_12 + E_mech_12 - E_brk_12 - Env_12
%     KE_14 == A*KE_13 + E_mech_13 - E_brk_13 - Env_13
%     KE_15 == A*KE_14 + E_mech_14 - E_brk_14 - Env_14
%     KE_16 == A*KE_15 + E_mech_15 - E_brk_15 - Env_15
%     KE_17 == A*KE_16 + E_mech_16 - E_brk_16 - Env_16
%     KE_18 == A*KE_17 + E_mech_17 - E_brk_17 - Env_17
%     KE_19 == A*KE_18 + E_mech_18 - E_brk_18 - Env_18
%     KE_20 == A*KE_19 + E_mech_19 - E_brk_19 - Env_19
%     KE_21 == A*KE_20 + E_mech_20 - E_brk_20 - Env_20
%     KE_22 == A*KE_21 + E_mech_21 - E_brk_21 - Env_21
%     KE_23 == A*KE_22 + E_mech_22 - E_brk_22 - Env_22
%     KE_24 == A*KE_23 + E_mech_23 - E_brk_23 - Env_23
%     KE_25 == A*KE_24 + E_mech_24 - E_brk_24 - Env_24
%     KE_26 == A*KE_25 + E_mech_25 - E_brk_25 - Env_25
%     KE_27 == A*KE_26 + E_mech_26 - E_brk_26 - Env_26
%     KE_28 == A*KE_27 + E_mech_27 - E_brk_27 - Env_27
%     KE_29 == A*KE_28 + E_mech_28 - E_brk_28 - Env_28
%     KE_30 == A*KE_29 + E_mech_29 - E_brk_29 - Env_29
%     KE_31 == A*KE_30 + E_mech_30 - E_brk_30 - Env_30
%     KE_32 == A*KE_31 + E_mech_31 - E_brk_31 - Env_31
%     KE_33 == A*KE_32 + E_mech_32 - E_brk_32 - Env_32
%     KE_34 == A*KE_33 + E_mech_33 - E_brk_33 - Env_33
%     KE_35 == A*KE_34 + E_mech_34 - E_brk_34 - Env_34
%     KE_36 == A*KE_35 + E_mech_35 - E_brk_35 - Env_35
%     KE_37 == A*KE_36 + E_mech_36 - E_brk_36 - Env_36
%     KE_38 == A*KE_37 + E_mech_37 - E_brk_37 - Env_37
%     KE_39 == A*KE_38 + E_mech_38 - E_brk_38 - Env_38
%     KE_40 == A*KE_39 + E_mech_39 - E_brk_39 - Env_39
%     KE_41 == A*KE_40 + E_mech_40 - E_brk_40 - Env_40
%     KE_42 == A*KE_41 + E_mech_41 - E_brk_41 - Env_41
%     KE_43 == A*KE_42 + E_mech_42 - E_brk_42 - Env_42
%     KE_44 == A*KE_43 + E_mech_43 - E_brk_43 - Env_43
%     KE_45 == A*KE_44 + E_mech_44 - E_brk_44 - Env_44
%     KE_46 == A*KE_45 + E_mech_45 - E_brk_45 - Env_45
%     KE_47 == A*KE_46 + E_mech_46 - E_brk_46 - Env_46
%     KE_48 == A*KE_47 + E_mech_47 - E_brk_47 - Env_47
%     KE_49 == A*KE_48 + E_mech_48 - E_brk_48 - Env_48
%     KE_50 == A*KE_49 + E_mech_49 - E_brk_49 - Env_49
%     KE_51 == A*KE_50 + E_mech_50 - E_brk_50 - Env_50
%     KE_1 <= KE_max_1
%     KE_2 <= KE_max_2
%     KE_3 <= KE_max_3
%     KE_4 <= KE_max_4
%     KE_5 <= KE_max_5
%     KE_6 <= KE_max_6
%     KE_7 <= KE_max_7
%     KE_8 <= KE_max_8
%     KE_9 <= KE_max_9
%     KE_10 <= KE_max_10
%     KE_11 <= KE_max_11
%     KE_12 <= KE_max_12
%     KE_13 <= KE_max_13
%     KE_14 <= KE_max_14
%     KE_15 <= KE_max_15
%     KE_16 <= KE_max_16
%     KE_17 <= KE_max_17
%     KE_18 <= KE_max_18
%     KE_19 <= KE_max_19
%     KE_20 <= KE_max_20
%     KE_21 <= KE_max_21
%     KE_22 <= KE_max_22
%     KE_23 <= KE_max_23
%     KE_24 <= KE_max_24
%     KE_25 <= KE_max_25
%     KE_26 <= KE_max_26
%     KE_27 <= KE_max_27
%     KE_28 <= KE_max_28
%     KE_29 <= KE_max_29
%     KE_30 <= KE_max_30
%     KE_31 <= KE_max_31
%     KE_32 <= KE_max_32
%     KE_33 <= KE_max_33
%     KE_34 <= KE_max_34
%     KE_35 <= KE_max_35
%     KE_36 <= KE_max_36
%     KE_37 <= KE_max_37
%     KE_38 <= KE_max_38
%     KE_39 <= KE_max_39
%     KE_40 <= KE_max_40
%     KE_41 <= KE_max_41
%     KE_42 <= KE_max_42
%     KE_43 <= KE_max_43
%     KE_44 <= KE_max_44
%     KE_45 <= KE_max_45
%     KE_46 <= KE_max_46
%     KE_47 <= KE_max_47
%     KE_48 <= KE_max_48
%     KE_49 <= KE_max_49
%     KE_50 <= KE_max_50
%     KE_51 <= KE_max_51
%     KE_1 >= KE_min_1
%     KE_2 >= KE_min_2
%     KE_3 >= KE_min_3
%     KE_4 >= KE_min_4
%     KE_5 >= KE_min_5
%     KE_6 >= KE_min_6
%     KE_7 >= KE_min_7
%     KE_8 >= KE_min_8
%     KE_9 >= KE_min_9
%     KE_10 >= KE_min_10
%     KE_11 >= KE_min_11
%     KE_12 >= KE_min_12
%     KE_13 >= KE_min_13
%     KE_14 >= KE_min_14
%     KE_15 >= KE_min_15
%     KE_16 >= KE_min_16
%     KE_17 >= KE_min_17
%     KE_18 >= KE_min_18
%     KE_19 >= KE_min_19
%     KE_20 >= KE_min_20
%     KE_21 >= KE_min_21
%     KE_22 >= KE_min_22
%     KE_23 >= KE_min_23
%     KE_24 >= KE_min_24
%     KE_25 >= KE_min_25
%     KE_26 >= KE_min_26
%     KE_27 >= KE_min_27
%     KE_28 >= KE_min_28
%     KE_29 >= KE_min_29
%     KE_30 >= KE_min_30
%     KE_31 >= KE_min_31
%     KE_32 >= KE_min_32
%     KE_33 >= KE_min_33
%     KE_34 >= KE_min_34
%     KE_35 >= KE_min_35
%     KE_36 >= KE_min_36
%     KE_37 >= KE_min_37
%     KE_38 >= KE_min_38
%     KE_39 >= KE_min_39
%     KE_40 >= KE_min_40
%     KE_41 >= KE_min_41
%     KE_42 >= KE_min_42
%     KE_43 >= KE_min_43
%     KE_44 >= KE_min_44
%     KE_45 >= KE_min_45
%     KE_46 >= KE_min_46
%     KE_47 >= KE_min_47
%     KE_48 >= KE_min_48
%     KE_49 >= KE_min_49
%     KE_50 >= KE_min_50
%     KE_51 >= KE_min_51
%     E_mech_0 <= E_mech_max
%     E_mech_1 <= E_mech_max
%     E_mech_2 <= E_mech_max
%     E_mech_3 <= E_mech_max
%     E_mech_4 <= E_mech_max
%     E_mech_5 <= E_mech_max
%     E_mech_6 <= E_mech_max
%     E_mech_7 <= E_mech_max
%     E_mech_8 <= E_mech_max
%     E_mech_9 <= E_mech_max
%     E_mech_10 <= E_mech_max
%     E_mech_11 <= E_mech_max
%     E_mech_12 <= E_mech_max
%     E_mech_13 <= E_mech_max
%     E_mech_14 <= E_mech_max
%     E_mech_15 <= E_mech_max
%     E_mech_16 <= E_mech_max
%     E_mech_17 <= E_mech_max
%     E_mech_18 <= E_mech_max
%     E_mech_19 <= E_mech_max
%     E_mech_20 <= E_mech_max
%     E_mech_21 <= E_mech_max
%     E_mech_22 <= E_mech_max
%     E_mech_23 <= E_mech_max
%     E_mech_24 <= E_mech_max
%     E_mech_25 <= E_mech_max
%     E_mech_26 <= E_mech_max
%     E_mech_27 <= E_mech_max
%     E_mech_28 <= E_mech_max
%     E_mech_29 <= E_mech_max
%     E_mech_30 <= E_mech_max
%     E_mech_31 <= E_mech_max
%     E_mech_32 <= E_mech_max
%     E_mech_33 <= E_mech_max
%     E_mech_34 <= E_mech_max
%     E_mech_35 <= E_mech_max
%     E_mech_36 <= E_mech_max
%     E_mech_37 <= E_mech_max
%     E_mech_38 <= E_mech_max
%     E_mech_39 <= E_mech_max
%     E_mech_40 <= E_mech_max
%     E_mech_41 <= E_mech_max
%     E_mech_42 <= E_mech_max
%     E_mech_43 <= E_mech_max
%     E_mech_44 <= E_mech_max
%     E_mech_45 <= E_mech_max
%     E_mech_46 <= E_mech_max
%     E_mech_47 <= E_mech_max
%     E_mech_48 <= E_mech_max
%     E_mech_49 <= E_mech_max
%     E_mech_50 <= E_mech_max
%     E_mech_0 >= E_mech_min
%     E_mech_1 >= E_mech_min
%     E_mech_2 >= E_mech_min
%     E_mech_3 >= E_mech_min
%     E_mech_4 >= E_mech_min
%     E_mech_5 >= E_mech_min
%     E_mech_6 >= E_mech_min
%     E_mech_7 >= E_mech_min
%     E_mech_8 >= E_mech_min
%     E_mech_9 >= E_mech_min
%     E_mech_10 >= E_mech_min
%     E_mech_11 >= E_mech_min
%     E_mech_12 >= E_mech_min
%     E_mech_13 >= E_mech_min
%     E_mech_14 >= E_mech_min
%     E_mech_15 >= E_mech_min
%     E_mech_16 >= E_mech_min
%     E_mech_17 >= E_mech_min
%     E_mech_18 >= E_mech_min
%     E_mech_19 >= E_mech_min
%     E_mech_20 >= E_mech_min
%     E_mech_21 >= E_mech_min
%     E_mech_22 >= E_mech_min
%     E_mech_23 >= E_mech_min
%     E_mech_24 >= E_mech_min
%     E_mech_25 >= E_mech_min
%     E_mech_26 >= E_mech_min
%     E_mech_27 >= E_mech_min
%     E_mech_28 >= E_mech_min
%     E_mech_29 >= E_mech_min
%     E_mech_30 >= E_mech_min
%     E_mech_31 >= E_mech_min
%     E_mech_32 >= E_mech_min
%     E_mech_33 >= E_mech_min
%     E_mech_34 >= E_mech_min
%     E_mech_35 >= E_mech_min
%     E_mech_36 >= E_mech_min
%     E_mech_37 >= E_mech_min
%     E_mech_38 >= E_mech_min
%     E_mech_39 >= E_mech_min
%     E_mech_40 >= E_mech_min
%     E_mech_41 >= E_mech_min
%     E_mech_42 >= E_mech_min
%     E_mech_43 >= E_mech_min
%     E_mech_44 >= E_mech_min
%     E_mech_45 >= E_mech_min
%     E_mech_46 >= E_mech_min
%     E_mech_47 >= E_mech_min
%     E_mech_48 >= E_mech_min
%     E_mech_49 >= E_mech_min
%     E_mech_50 >= E_mech_min
%     E_brk_0 <= E_brk_max
%     E_brk_1 <= E_brk_max
%     E_brk_2 <= E_brk_max
%     E_brk_3 <= E_brk_max
%     E_brk_4 <= E_brk_max
%     E_brk_5 <= E_brk_max
%     E_brk_6 <= E_brk_max
%     E_brk_7 <= E_brk_max
%     E_brk_8 <= E_brk_max
%     E_brk_9 <= E_brk_max
%     E_brk_10 <= E_brk_max
%     E_brk_11 <= E_brk_max
%     E_brk_12 <= E_brk_max
%     E_brk_13 <= E_brk_max
%     E_brk_14 <= E_brk_max
%     E_brk_15 <= E_brk_max
%     E_brk_16 <= E_brk_max
%     E_brk_17 <= E_brk_max
%     E_brk_18 <= E_brk_max
%     E_brk_19 <= E_brk_max
%     E_brk_20 <= E_brk_max
%     E_brk_21 <= E_brk_max
%     E_brk_22 <= E_brk_max
%     E_brk_23 <= E_brk_max
%     E_brk_24 <= E_brk_max
%     E_brk_25 <= E_brk_max
%     E_brk_26 <= E_brk_max
%     E_brk_27 <= E_brk_max
%     E_brk_28 <= E_brk_max
%     E_brk_29 <= E_brk_max
%     E_brk_30 <= E_brk_max
%     E_brk_31 <= E_brk_max
%     E_brk_32 <= E_brk_max
%     E_brk_33 <= E_brk_max
%     E_brk_34 <= E_brk_max
%     E_brk_35 <= E_brk_max
%     E_brk_36 <= E_brk_max
%     E_brk_37 <= E_brk_max
%     E_brk_38 <= E_brk_max
%     E_brk_39 <= E_brk_max
%     E_brk_40 <= E_brk_max
%     E_brk_41 <= E_brk_max
%     E_brk_42 <= E_brk_max
%     E_brk_43 <= E_brk_max
%     E_brk_44 <= E_brk_max
%     E_brk_45 <= E_brk_max
%     E_brk_46 <= E_brk_max
%     E_brk_47 <= E_brk_max
%     E_brk_48 <= E_brk_max
%     E_brk_49 <= E_brk_max
%     E_brk_50 <= E_brk_max
%     E_brk_0 >= E_brk_min
%     E_brk_1 >= E_brk_min
%     E_brk_2 >= E_brk_min
%     E_brk_3 >= E_brk_min
%     E_brk_4 >= E_brk_min
%     E_brk_5 >= E_brk_min
%     E_brk_6 >= E_brk_min
%     E_brk_7 >= E_brk_min
%     E_brk_8 >= E_brk_min
%     E_brk_9 >= E_brk_min
%     E_brk_10 >= E_brk_min
%     E_brk_11 >= E_brk_min
%     E_brk_12 >= E_brk_min
%     E_brk_13 >= E_brk_min
%     E_brk_14 >= E_brk_min
%     E_brk_15 >= E_brk_min
%     E_brk_16 >= E_brk_min
%     E_brk_17 >= E_brk_min
%     E_brk_18 >= E_brk_min
%     E_brk_19 >= E_brk_min
%     E_brk_20 >= E_brk_min
%     E_brk_21 >= E_brk_min
%     E_brk_22 >= E_brk_min
%     E_brk_23 >= E_brk_min
%     E_brk_24 >= E_brk_min
%     E_brk_25 >= E_brk_min
%     E_brk_26 >= E_brk_min
%     E_brk_27 >= E_brk_min
%     E_brk_28 >= E_brk_min
%     E_brk_29 >= E_brk_min
%     E_brk_30 >= E_brk_min
%     E_brk_31 >= E_brk_min
%     E_brk_32 >= E_brk_min
%     E_brk_33 >= E_brk_min
%     E_brk_34 >= E_brk_min
%     E_brk_35 >= E_brk_min
%     E_brk_36 >= E_brk_min
%     E_brk_37 >= E_brk_min
%     E_brk_38 >= E_brk_min
%     E_brk_39 >= E_brk_min
%     E_brk_40 >= E_brk_min
%     E_brk_41 >= E_brk_min
%     E_brk_42 >= E_brk_min
%     E_brk_43 >= E_brk_min
%     E_brk_44 >= E_brk_min
%     E_brk_45 >= E_brk_min
%     E_brk_46 >= E_brk_min
%     E_brk_47 >= E_brk_min
%     E_brk_48 >= E_brk_min
%     E_brk_49 >= E_brk_min
%     E_brk_50 >= E_brk_min
%
% with variables
%  E_brk_0   1 x 1
%  E_brk_1   1 x 1
%  E_brk_2   1 x 1
%  E_brk_3   1 x 1
%  E_brk_4   1 x 1
%  E_brk_5   1 x 1
%  E_brk_6   1 x 1
%  E_brk_7   1 x 1
%  E_brk_8   1 x 1
%  E_brk_9   1 x 1
% E_brk_10   1 x 1
% E_brk_11   1 x 1
% E_brk_12   1 x 1
% E_brk_13   1 x 1
% E_brk_14   1 x 1
% E_brk_15   1 x 1
% E_brk_16   1 x 1
% E_brk_17   1 x 1
% E_brk_18   1 x 1
% E_brk_19   1 x 1
% E_brk_20   1 x 1
% E_brk_21   1 x 1
% E_brk_22   1 x 1
% E_brk_23   1 x 1
% E_brk_24   1 x 1
% E_brk_25   1 x 1
% E_brk_26   1 x 1
% E_brk_27   1 x 1
% E_brk_28   1 x 1
% E_brk_29   1 x 1
% E_brk_30   1 x 1
% E_brk_31   1 x 1
% E_brk_32   1 x 1
% E_brk_33   1 x 1
% E_brk_34   1 x 1
% E_brk_35   1 x 1
% E_brk_36   1 x 1
% E_brk_37   1 x 1
% E_brk_38   1 x 1
% E_brk_39   1 x 1
% E_brk_40   1 x 1
% E_brk_41   1 x 1
% E_brk_42   1 x 1
% E_brk_43   1 x 1
% E_brk_44   1 x 1
% E_brk_45   1 x 1
% E_brk_46   1 x 1
% E_brk_47   1 x 1
% E_brk_48   1 x 1
% E_brk_49   1 x 1
% E_brk_50   1 x 1
% E_mech_0   1 x 1
% E_mech_1   1 x 1
% E_mech_2   1 x 1
% E_mech_3   1 x 1
% E_mech_4   1 x 1
% E_mech_5   1 x 1
% E_mech_6   1 x 1
% E_mech_7   1 x 1
% E_mech_8   1 x 1
% E_mech_9   1 x 1
% E_mech_10   1 x 1
% E_mech_11   1 x 1
% E_mech_12   1 x 1
% E_mech_13   1 x 1
% E_mech_14   1 x 1
% E_mech_15   1 x 1
% E_mech_16   1 x 1
% E_mech_17   1 x 1
% E_mech_18   1 x 1
% E_mech_19   1 x 1
% E_mech_20   1 x 1
% E_mech_21   1 x 1
% E_mech_22   1 x 1
% E_mech_23   1 x 1
% E_mech_24   1 x 1
% E_mech_25   1 x 1
% E_mech_26   1 x 1
% E_mech_27   1 x 1
% E_mech_28   1 x 1
% E_mech_29   1 x 1
% E_mech_30   1 x 1
% E_mech_31   1 x 1
% E_mech_32   1 x 1
% E_mech_33   1 x 1
% E_mech_34   1 x 1
% E_mech_35   1 x 1
% E_mech_36   1 x 1
% E_mech_37   1 x 1
% E_mech_38   1 x 1
% E_mech_39   1 x 1
% E_mech_40   1 x 1
% E_mech_41   1 x 1
% E_mech_42   1 x 1
% E_mech_43   1 x 1
% E_mech_44   1 x 1
% E_mech_45   1 x 1
% E_mech_46   1 x 1
% E_mech_47   1 x 1
% E_mech_48   1 x 1
% E_mech_49   1 x 1
% E_mech_50   1 x 1
%     KE_1   1 x 1
%     KE_2   1 x 1
%     KE_3   1 x 1
%     KE_4   1 x 1
%     KE_5   1 x 1
%     KE_6   1 x 1
%     KE_7   1 x 1
%     KE_8   1 x 1
%     KE_9   1 x 1
%    KE_10   1 x 1
%    KE_11   1 x 1
%    KE_12   1 x 1
%    KE_13   1 x 1
%    KE_14   1 x 1
%    KE_15   1 x 1
%    KE_16   1 x 1
%    KE_17   1 x 1
%    KE_18   1 x 1
%    KE_19   1 x 1
%    KE_20   1 x 1
%    KE_21   1 x 1
%    KE_22   1 x 1
%    KE_23   1 x 1
%    KE_24   1 x 1
%    KE_25   1 x 1
%    KE_26   1 x 1
%    KE_27   1 x 1
%    KE_28   1 x 1
%    KE_29   1 x 1
%    KE_30   1 x 1
%    KE_31   1 x 1
%    KE_32   1 x 1
%    KE_33   1 x 1
%    KE_34   1 x 1
%    KE_35   1 x 1
%    KE_36   1 x 1
%    KE_37   1 x 1
%    KE_38   1 x 1
%    KE_39   1 x 1
%    KE_40   1 x 1
%    KE_41   1 x 1
%    KE_42   1 x 1
%    KE_43   1 x 1
%    KE_44   1 x 1
%    KE_45   1 x 1
%    KE_46   1 x 1
%    KE_47   1 x 1
%    KE_48   1 x 1
%    KE_49   1 x 1
%    KE_50   1 x 1
%    KE_51   1 x 1
%
% and parameters
%        A   1 x 1
% E_brk_max   1 x 1
% E_brk_min   1 x 1
% E_mech_max   1 x 1
% E_mech_min   1 x 1
%    Env_0   1 x 1
%    Env_1   1 x 1
%    Env_2   1 x 1
%    Env_3   1 x 1
%    Env_4   1 x 1
%    Env_5   1 x 1
%    Env_6   1 x 1
%    Env_7   1 x 1
%    Env_8   1 x 1
%    Env_9   1 x 1
%   Env_10   1 x 1
%   Env_11   1 x 1
%   Env_12   1 x 1
%   Env_13   1 x 1
%   Env_14   1 x 1
%   Env_15   1 x 1
%   Env_16   1 x 1
%   Env_17   1 x 1
%   Env_18   1 x 1
%   Env_19   1 x 1
%   Env_20   1 x 1
%   Env_21   1 x 1
%   Env_22   1 x 1
%   Env_23   1 x 1
%   Env_24   1 x 1
%   Env_25   1 x 1
%   Env_26   1 x 1
%   Env_27   1 x 1
%   Env_28   1 x 1
%   Env_29   1 x 1
%   Env_30   1 x 1
%   Env_31   1 x 1
%   Env_32   1 x 1
%   Env_33   1 x 1
%   Env_34   1 x 1
%   Env_35   1 x 1
%   Env_36   1 x 1
%   Env_37   1 x 1
%   Env_38   1 x 1
%   Env_39   1 x 1
%   Env_40   1 x 1
%   Env_41   1 x 1
%   Env_42   1 x 1
%   Env_43   1 x 1
%   Env_44   1 x 1
%   Env_45   1 x 1
%   Env_46   1 x 1
%   Env_47   1 x 1
%   Env_48   1 x 1
%   Env_49   1 x 1
%   Env_50   1 x 1
%     KE_0   1 x 1
% KE_des_1   1 x 1
% KE_des_2   1 x 1
% KE_des_3   1 x 1
% KE_des_4   1 x 1
% KE_des_5   1 x 1
% KE_des_6   1 x 1
% KE_des_7   1 x 1
% KE_des_8   1 x 1
% KE_des_9   1 x 1
% KE_des_10   1 x 1
% KE_des_11   1 x 1
% KE_des_12   1 x 1
% KE_des_13   1 x 1
% KE_des_14   1 x 1
% KE_des_15   1 x 1
% KE_des_16   1 x 1
% KE_des_17   1 x 1
% KE_des_18   1 x 1
% KE_des_19   1 x 1
% KE_des_20   1 x 1
% KE_des_21   1 x 1
% KE_des_22   1 x 1
% KE_des_23   1 x 1
% KE_des_24   1 x 1
% KE_des_25   1 x 1
% KE_des_26   1 x 1
% KE_des_27   1 x 1
% KE_des_28   1 x 1
% KE_des_29   1 x 1
% KE_des_30   1 x 1
% KE_des_31   1 x 1
% KE_des_32   1 x 1
% KE_des_33   1 x 1
% KE_des_34   1 x 1
% KE_des_35   1 x 1
% KE_des_36   1 x 1
% KE_des_37   1 x 1
% KE_des_38   1 x 1
% KE_des_39   1 x 1
% KE_des_40   1 x 1
% KE_des_41   1 x 1
% KE_des_42   1 x 1
% KE_des_43   1 x 1
% KE_des_44   1 x 1
% KE_des_45   1 x 1
% KE_des_46   1 x 1
% KE_des_47   1 x 1
% KE_des_48   1 x 1
% KE_des_49   1 x 1
% KE_des_50   1 x 1
% KE_des_51   1 x 1
% KE_max_1   1 x 1
% KE_max_2   1 x 1
% KE_max_3   1 x 1
% KE_max_4   1 x 1
% KE_max_5   1 x 1
% KE_max_6   1 x 1
% KE_max_7   1 x 1
% KE_max_8   1 x 1
% KE_max_9   1 x 1
% KE_max_10   1 x 1
% KE_max_11   1 x 1
% KE_max_12   1 x 1
% KE_max_13   1 x 1
% KE_max_14   1 x 1
% KE_max_15   1 x 1
% KE_max_16   1 x 1
% KE_max_17   1 x 1
% KE_max_18   1 x 1
% KE_max_19   1 x 1
% KE_max_20   1 x 1
% KE_max_21   1 x 1
% KE_max_22   1 x 1
% KE_max_23   1 x 1
% KE_max_24   1 x 1
% KE_max_25   1 x 1
% KE_max_26   1 x 1
% KE_max_27   1 x 1
% KE_max_28   1 x 1
% KE_max_29   1 x 1
% KE_max_30   1 x 1
% KE_max_31   1 x 1
% KE_max_32   1 x 1
% KE_max_33   1 x 1
% KE_max_34   1 x 1
% KE_max_35   1 x 1
% KE_max_36   1 x 1
% KE_max_37   1 x 1
% KE_max_38   1 x 1
% KE_max_39   1 x 1
% KE_max_40   1 x 1
% KE_max_41   1 x 1
% KE_max_42   1 x 1
% KE_max_43   1 x 1
% KE_max_44   1 x 1
% KE_max_45   1 x 1
% KE_max_46   1 x 1
% KE_max_47   1 x 1
% KE_max_48   1 x 1
% KE_max_49   1 x 1
% KE_max_50   1 x 1
% KE_max_51   1 x 1
% KE_min_1   1 x 1
% KE_min_2   1 x 1
% KE_min_3   1 x 1
% KE_min_4   1 x 1
% KE_min_5   1 x 1
% KE_min_6   1 x 1
% KE_min_7   1 x 1
% KE_min_8   1 x 1
% KE_min_9   1 x 1
% KE_min_10   1 x 1
% KE_min_11   1 x 1
% KE_min_12   1 x 1
% KE_min_13   1 x 1
% KE_min_14   1 x 1
% KE_min_15   1 x 1
% KE_min_16   1 x 1
% KE_min_17   1 x 1
% KE_min_18   1 x 1
% KE_min_19   1 x 1
% KE_min_20   1 x 1
% KE_min_21   1 x 1
% KE_min_22   1 x 1
% KE_min_23   1 x 1
% KE_min_24   1 x 1
% KE_min_25   1 x 1
% KE_min_26   1 x 1
% KE_min_27   1 x 1
% KE_min_28   1 x 1
% KE_min_29   1 x 1
% KE_min_30   1 x 1
% KE_min_31   1 x 1
% KE_min_32   1 x 1
% KE_min_33   1 x 1
% KE_min_34   1 x 1
% KE_min_35   1 x 1
% KE_min_36   1 x 1
% KE_min_37   1 x 1
% KE_min_38   1 x 1
% KE_min_39   1 x 1
% KE_min_40   1 x 1
% KE_min_41   1 x 1
% KE_min_42   1 x 1
% KE_min_43   1 x 1
% KE_min_44   1 x 1
% KE_min_45   1 x 1
% KE_min_46   1 x 1
% KE_min_47   1 x 1
% KE_min_48   1 x 1
% KE_min_49   1 x 1
% KE_min_50   1 x 1
% KE_min_51   1 x 1
%    lam_b   1 x 1
%    lam_e   1 x 1
%
% Note:
%   - Check status.converged, which will be 1 if optimization succeeded.
%   - You don't have to specify settings if you don't want to.
%   - To hide output, use settings.verbose = 0.
%   - To change iterations, use settings.max_iters = 20.
%   - You may wish to compare with cvxsolve to check the solver is correct.
%
% Specify params.A, ..., params.lam_e, then run
%   [vars, status] = csolve(params, settings)
% Produced by CVXGEN, 2019-07-30 10:35:09 -0400.
% CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2017 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: csolve.m.
% Description: Help file for the Matlab solver interface.
