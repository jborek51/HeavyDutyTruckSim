% Produced by CVXGEN, 2019-07-11 08:31:06 -0400.
% CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2017 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: cvxsolve.m.
% Description: Solution file, via cvx, for use with sample.m.
function [vars, status] = cvxsolve(params, settings)
A = params.A;
E_brk_max = params.E_brk_max;
E_brk_min = params.E_brk_min;
E_mech_max = params.E_mech_max;
E_mech_min = params.E_mech_min;
Env_0 = params.Env_0;
if isfield(params, 'Env_1')
  Env_1 = params.Env_1;
elseif isfield(params, 'Env')
  Env_1 = params.Env{1};
else
  error 'could not find Env_1'
end
if isfield(params, 'Env_2')
  Env_2 = params.Env_2;
elseif isfield(params, 'Env')
  Env_2 = params.Env{2};
else
  error 'could not find Env_2'
end
if isfield(params, 'Env_3')
  Env_3 = params.Env_3;
elseif isfield(params, 'Env')
  Env_3 = params.Env{3};
else
  error 'could not find Env_3'
end
if isfield(params, 'Env_4')
  Env_4 = params.Env_4;
elseif isfield(params, 'Env')
  Env_4 = params.Env{4};
else
  error 'could not find Env_4'
end
if isfield(params, 'Env_5')
  Env_5 = params.Env_5;
elseif isfield(params, 'Env')
  Env_5 = params.Env{5};
else
  error 'could not find Env_5'
end
if isfield(params, 'Env_6')
  Env_6 = params.Env_6;
elseif isfield(params, 'Env')
  Env_6 = params.Env{6};
else
  error 'could not find Env_6'
end
if isfield(params, 'Env_7')
  Env_7 = params.Env_7;
elseif isfield(params, 'Env')
  Env_7 = params.Env{7};
else
  error 'could not find Env_7'
end
if isfield(params, 'Env_8')
  Env_8 = params.Env_8;
elseif isfield(params, 'Env')
  Env_8 = params.Env{8};
else
  error 'could not find Env_8'
end
if isfield(params, 'Env_9')
  Env_9 = params.Env_9;
elseif isfield(params, 'Env')
  Env_9 = params.Env{9};
else
  error 'could not find Env_9'
end
if isfield(params, 'Env_10')
  Env_10 = params.Env_10;
elseif isfield(params, 'Env')
  Env_10 = params.Env{10};
else
  error 'could not find Env_10'
end
if isfield(params, 'Env_11')
  Env_11 = params.Env_11;
elseif isfield(params, 'Env')
  Env_11 = params.Env{11};
else
  error 'could not find Env_11'
end
if isfield(params, 'Env_12')
  Env_12 = params.Env_12;
elseif isfield(params, 'Env')
  Env_12 = params.Env{12};
else
  error 'could not find Env_12'
end
if isfield(params, 'Env_13')
  Env_13 = params.Env_13;
elseif isfield(params, 'Env')
  Env_13 = params.Env{13};
else
  error 'could not find Env_13'
end
if isfield(params, 'Env_14')
  Env_14 = params.Env_14;
elseif isfield(params, 'Env')
  Env_14 = params.Env{14};
else
  error 'could not find Env_14'
end
if isfield(params, 'Env_15')
  Env_15 = params.Env_15;
elseif isfield(params, 'Env')
  Env_15 = params.Env{15};
else
  error 'could not find Env_15'
end
if isfield(params, 'Env_16')
  Env_16 = params.Env_16;
elseif isfield(params, 'Env')
  Env_16 = params.Env{16};
else
  error 'could not find Env_16'
end
if isfield(params, 'Env_17')
  Env_17 = params.Env_17;
elseif isfield(params, 'Env')
  Env_17 = params.Env{17};
else
  error 'could not find Env_17'
end
if isfield(params, 'Env_18')
  Env_18 = params.Env_18;
elseif isfield(params, 'Env')
  Env_18 = params.Env{18};
else
  error 'could not find Env_18'
end
if isfield(params, 'Env_19')
  Env_19 = params.Env_19;
elseif isfield(params, 'Env')
  Env_19 = params.Env{19};
else
  error 'could not find Env_19'
end
if isfield(params, 'Env_20')
  Env_20 = params.Env_20;
elseif isfield(params, 'Env')
  Env_20 = params.Env{20};
else
  error 'could not find Env_20'
end
if isfield(params, 'Env_21')
  Env_21 = params.Env_21;
elseif isfield(params, 'Env')
  Env_21 = params.Env{21};
else
  error 'could not find Env_21'
end
if isfield(params, 'Env_22')
  Env_22 = params.Env_22;
elseif isfield(params, 'Env')
  Env_22 = params.Env{22};
else
  error 'could not find Env_22'
end
if isfield(params, 'Env_23')
  Env_23 = params.Env_23;
elseif isfield(params, 'Env')
  Env_23 = params.Env{23};
else
  error 'could not find Env_23'
end
if isfield(params, 'Env_24')
  Env_24 = params.Env_24;
elseif isfield(params, 'Env')
  Env_24 = params.Env{24};
else
  error 'could not find Env_24'
end
if isfield(params, 'Env_25')
  Env_25 = params.Env_25;
elseif isfield(params, 'Env')
  Env_25 = params.Env{25};
else
  error 'could not find Env_25'
end
if isfield(params, 'Env_26')
  Env_26 = params.Env_26;
elseif isfield(params, 'Env')
  Env_26 = params.Env{26};
else
  error 'could not find Env_26'
end
if isfield(params, 'Env_27')
  Env_27 = params.Env_27;
elseif isfield(params, 'Env')
  Env_27 = params.Env{27};
else
  error 'could not find Env_27'
end
if isfield(params, 'Env_28')
  Env_28 = params.Env_28;
elseif isfield(params, 'Env')
  Env_28 = params.Env{28};
else
  error 'could not find Env_28'
end
if isfield(params, 'Env_29')
  Env_29 = params.Env_29;
elseif isfield(params, 'Env')
  Env_29 = params.Env{29};
else
  error 'could not find Env_29'
end
if isfield(params, 'Env_30')
  Env_30 = params.Env_30;
elseif isfield(params, 'Env')
  Env_30 = params.Env{30};
else
  error 'could not find Env_30'
end
if isfield(params, 'Env_31')
  Env_31 = params.Env_31;
elseif isfield(params, 'Env')
  Env_31 = params.Env{31};
else
  error 'could not find Env_31'
end
if isfield(params, 'Env_32')
  Env_32 = params.Env_32;
elseif isfield(params, 'Env')
  Env_32 = params.Env{32};
else
  error 'could not find Env_32'
end
if isfield(params, 'Env_33')
  Env_33 = params.Env_33;
elseif isfield(params, 'Env')
  Env_33 = params.Env{33};
else
  error 'could not find Env_33'
end
if isfield(params, 'Env_34')
  Env_34 = params.Env_34;
elseif isfield(params, 'Env')
  Env_34 = params.Env{34};
else
  error 'could not find Env_34'
end
if isfield(params, 'Env_35')
  Env_35 = params.Env_35;
elseif isfield(params, 'Env')
  Env_35 = params.Env{35};
else
  error 'could not find Env_35'
end
if isfield(params, 'Env_36')
  Env_36 = params.Env_36;
elseif isfield(params, 'Env')
  Env_36 = params.Env{36};
else
  error 'could not find Env_36'
end
if isfield(params, 'Env_37')
  Env_37 = params.Env_37;
elseif isfield(params, 'Env')
  Env_37 = params.Env{37};
else
  error 'could not find Env_37'
end
if isfield(params, 'Env_38')
  Env_38 = params.Env_38;
elseif isfield(params, 'Env')
  Env_38 = params.Env{38};
else
  error 'could not find Env_38'
end
if isfield(params, 'Env_39')
  Env_39 = params.Env_39;
elseif isfield(params, 'Env')
  Env_39 = params.Env{39};
else
  error 'could not find Env_39'
end
if isfield(params, 'Env_40')
  Env_40 = params.Env_40;
elseif isfield(params, 'Env')
  Env_40 = params.Env{40};
else
  error 'could not find Env_40'
end
if isfield(params, 'Env_41')
  Env_41 = params.Env_41;
elseif isfield(params, 'Env')
  Env_41 = params.Env{41};
else
  error 'could not find Env_41'
end
if isfield(params, 'Env_42')
  Env_42 = params.Env_42;
elseif isfield(params, 'Env')
  Env_42 = params.Env{42};
else
  error 'could not find Env_42'
end
if isfield(params, 'Env_43')
  Env_43 = params.Env_43;
elseif isfield(params, 'Env')
  Env_43 = params.Env{43};
else
  error 'could not find Env_43'
end
if isfield(params, 'Env_44')
  Env_44 = params.Env_44;
elseif isfield(params, 'Env')
  Env_44 = params.Env{44};
else
  error 'could not find Env_44'
end
if isfield(params, 'Env_45')
  Env_45 = params.Env_45;
elseif isfield(params, 'Env')
  Env_45 = params.Env{45};
else
  error 'could not find Env_45'
end
if isfield(params, 'Env_46')
  Env_46 = params.Env_46;
elseif isfield(params, 'Env')
  Env_46 = params.Env{46};
else
  error 'could not find Env_46'
end
if isfield(params, 'Env_47')
  Env_47 = params.Env_47;
elseif isfield(params, 'Env')
  Env_47 = params.Env{47};
else
  error 'could not find Env_47'
end
if isfield(params, 'Env_48')
  Env_48 = params.Env_48;
elseif isfield(params, 'Env')
  Env_48 = params.Env{48};
else
  error 'could not find Env_48'
end
if isfield(params, 'Env_49')
  Env_49 = params.Env_49;
elseif isfield(params, 'Env')
  Env_49 = params.Env{49};
else
  error 'could not find Env_49'
end
if isfield(params, 'Env_50')
  Env_50 = params.Env_50;
elseif isfield(params, 'Env')
  Env_50 = params.Env{50};
else
  error 'could not find Env_50'
end
KE_0 = params.KE_0;
if isfield(params, 'KE_des_1')
  KE_des_1 = params.KE_des_1;
elseif isfield(params, 'KE_des')
  KE_des_1 = params.KE_des{1};
else
  error 'could not find KE_des_1'
end
if isfield(params, 'KE_des_2')
  KE_des_2 = params.KE_des_2;
elseif isfield(params, 'KE_des')
  KE_des_2 = params.KE_des{2};
else
  error 'could not find KE_des_2'
end
if isfield(params, 'KE_des_3')
  KE_des_3 = params.KE_des_3;
elseif isfield(params, 'KE_des')
  KE_des_3 = params.KE_des{3};
else
  error 'could not find KE_des_3'
end
if isfield(params, 'KE_des_4')
  KE_des_4 = params.KE_des_4;
elseif isfield(params, 'KE_des')
  KE_des_4 = params.KE_des{4};
else
  error 'could not find KE_des_4'
end
if isfield(params, 'KE_des_5')
  KE_des_5 = params.KE_des_5;
elseif isfield(params, 'KE_des')
  KE_des_5 = params.KE_des{5};
else
  error 'could not find KE_des_5'
end
if isfield(params, 'KE_des_6')
  KE_des_6 = params.KE_des_6;
elseif isfield(params, 'KE_des')
  KE_des_6 = params.KE_des{6};
else
  error 'could not find KE_des_6'
end
if isfield(params, 'KE_des_7')
  KE_des_7 = params.KE_des_7;
elseif isfield(params, 'KE_des')
  KE_des_7 = params.KE_des{7};
else
  error 'could not find KE_des_7'
end
if isfield(params, 'KE_des_8')
  KE_des_8 = params.KE_des_8;
elseif isfield(params, 'KE_des')
  KE_des_8 = params.KE_des{8};
else
  error 'could not find KE_des_8'
end
if isfield(params, 'KE_des_9')
  KE_des_9 = params.KE_des_9;
elseif isfield(params, 'KE_des')
  KE_des_9 = params.KE_des{9};
else
  error 'could not find KE_des_9'
end
if isfield(params, 'KE_des_10')
  KE_des_10 = params.KE_des_10;
elseif isfield(params, 'KE_des')
  KE_des_10 = params.KE_des{10};
else
  error 'could not find KE_des_10'
end
if isfield(params, 'KE_des_11')
  KE_des_11 = params.KE_des_11;
elseif isfield(params, 'KE_des')
  KE_des_11 = params.KE_des{11};
else
  error 'could not find KE_des_11'
end
if isfield(params, 'KE_des_12')
  KE_des_12 = params.KE_des_12;
elseif isfield(params, 'KE_des')
  KE_des_12 = params.KE_des{12};
else
  error 'could not find KE_des_12'
end
if isfield(params, 'KE_des_13')
  KE_des_13 = params.KE_des_13;
elseif isfield(params, 'KE_des')
  KE_des_13 = params.KE_des{13};
else
  error 'could not find KE_des_13'
end
if isfield(params, 'KE_des_14')
  KE_des_14 = params.KE_des_14;
elseif isfield(params, 'KE_des')
  KE_des_14 = params.KE_des{14};
else
  error 'could not find KE_des_14'
end
if isfield(params, 'KE_des_15')
  KE_des_15 = params.KE_des_15;
elseif isfield(params, 'KE_des')
  KE_des_15 = params.KE_des{15};
else
  error 'could not find KE_des_15'
end
if isfield(params, 'KE_des_16')
  KE_des_16 = params.KE_des_16;
elseif isfield(params, 'KE_des')
  KE_des_16 = params.KE_des{16};
else
  error 'could not find KE_des_16'
end
if isfield(params, 'KE_des_17')
  KE_des_17 = params.KE_des_17;
elseif isfield(params, 'KE_des')
  KE_des_17 = params.KE_des{17};
else
  error 'could not find KE_des_17'
end
if isfield(params, 'KE_des_18')
  KE_des_18 = params.KE_des_18;
elseif isfield(params, 'KE_des')
  KE_des_18 = params.KE_des{18};
else
  error 'could not find KE_des_18'
end
if isfield(params, 'KE_des_19')
  KE_des_19 = params.KE_des_19;
elseif isfield(params, 'KE_des')
  KE_des_19 = params.KE_des{19};
else
  error 'could not find KE_des_19'
end
if isfield(params, 'KE_des_20')
  KE_des_20 = params.KE_des_20;
elseif isfield(params, 'KE_des')
  KE_des_20 = params.KE_des{20};
else
  error 'could not find KE_des_20'
end
if isfield(params, 'KE_des_21')
  KE_des_21 = params.KE_des_21;
elseif isfield(params, 'KE_des')
  KE_des_21 = params.KE_des{21};
else
  error 'could not find KE_des_21'
end
if isfield(params, 'KE_des_22')
  KE_des_22 = params.KE_des_22;
elseif isfield(params, 'KE_des')
  KE_des_22 = params.KE_des{22};
else
  error 'could not find KE_des_22'
end
if isfield(params, 'KE_des_23')
  KE_des_23 = params.KE_des_23;
elseif isfield(params, 'KE_des')
  KE_des_23 = params.KE_des{23};
else
  error 'could not find KE_des_23'
end
if isfield(params, 'KE_des_24')
  KE_des_24 = params.KE_des_24;
elseif isfield(params, 'KE_des')
  KE_des_24 = params.KE_des{24};
else
  error 'could not find KE_des_24'
end
if isfield(params, 'KE_des_25')
  KE_des_25 = params.KE_des_25;
elseif isfield(params, 'KE_des')
  KE_des_25 = params.KE_des{25};
else
  error 'could not find KE_des_25'
end
if isfield(params, 'KE_des_26')
  KE_des_26 = params.KE_des_26;
elseif isfield(params, 'KE_des')
  KE_des_26 = params.KE_des{26};
else
  error 'could not find KE_des_26'
end
if isfield(params, 'KE_des_27')
  KE_des_27 = params.KE_des_27;
elseif isfield(params, 'KE_des')
  KE_des_27 = params.KE_des{27};
else
  error 'could not find KE_des_27'
end
if isfield(params, 'KE_des_28')
  KE_des_28 = params.KE_des_28;
elseif isfield(params, 'KE_des')
  KE_des_28 = params.KE_des{28};
else
  error 'could not find KE_des_28'
end
if isfield(params, 'KE_des_29')
  KE_des_29 = params.KE_des_29;
elseif isfield(params, 'KE_des')
  KE_des_29 = params.KE_des{29};
else
  error 'could not find KE_des_29'
end
if isfield(params, 'KE_des_30')
  KE_des_30 = params.KE_des_30;
elseif isfield(params, 'KE_des')
  KE_des_30 = params.KE_des{30};
else
  error 'could not find KE_des_30'
end
if isfield(params, 'KE_des_31')
  KE_des_31 = params.KE_des_31;
elseif isfield(params, 'KE_des')
  KE_des_31 = params.KE_des{31};
else
  error 'could not find KE_des_31'
end
if isfield(params, 'KE_des_32')
  KE_des_32 = params.KE_des_32;
elseif isfield(params, 'KE_des')
  KE_des_32 = params.KE_des{32};
else
  error 'could not find KE_des_32'
end
if isfield(params, 'KE_des_33')
  KE_des_33 = params.KE_des_33;
elseif isfield(params, 'KE_des')
  KE_des_33 = params.KE_des{33};
else
  error 'could not find KE_des_33'
end
if isfield(params, 'KE_des_34')
  KE_des_34 = params.KE_des_34;
elseif isfield(params, 'KE_des')
  KE_des_34 = params.KE_des{34};
else
  error 'could not find KE_des_34'
end
if isfield(params, 'KE_des_35')
  KE_des_35 = params.KE_des_35;
elseif isfield(params, 'KE_des')
  KE_des_35 = params.KE_des{35};
else
  error 'could not find KE_des_35'
end
if isfield(params, 'KE_des_36')
  KE_des_36 = params.KE_des_36;
elseif isfield(params, 'KE_des')
  KE_des_36 = params.KE_des{36};
else
  error 'could not find KE_des_36'
end
if isfield(params, 'KE_des_37')
  KE_des_37 = params.KE_des_37;
elseif isfield(params, 'KE_des')
  KE_des_37 = params.KE_des{37};
else
  error 'could not find KE_des_37'
end
if isfield(params, 'KE_des_38')
  KE_des_38 = params.KE_des_38;
elseif isfield(params, 'KE_des')
  KE_des_38 = params.KE_des{38};
else
  error 'could not find KE_des_38'
end
if isfield(params, 'KE_des_39')
  KE_des_39 = params.KE_des_39;
elseif isfield(params, 'KE_des')
  KE_des_39 = params.KE_des{39};
else
  error 'could not find KE_des_39'
end
if isfield(params, 'KE_des_40')
  KE_des_40 = params.KE_des_40;
elseif isfield(params, 'KE_des')
  KE_des_40 = params.KE_des{40};
else
  error 'could not find KE_des_40'
end
if isfield(params, 'KE_des_41')
  KE_des_41 = params.KE_des_41;
elseif isfield(params, 'KE_des')
  KE_des_41 = params.KE_des{41};
else
  error 'could not find KE_des_41'
end
if isfield(params, 'KE_des_42')
  KE_des_42 = params.KE_des_42;
elseif isfield(params, 'KE_des')
  KE_des_42 = params.KE_des{42};
else
  error 'could not find KE_des_42'
end
if isfield(params, 'KE_des_43')
  KE_des_43 = params.KE_des_43;
elseif isfield(params, 'KE_des')
  KE_des_43 = params.KE_des{43};
else
  error 'could not find KE_des_43'
end
if isfield(params, 'KE_des_44')
  KE_des_44 = params.KE_des_44;
elseif isfield(params, 'KE_des')
  KE_des_44 = params.KE_des{44};
else
  error 'could not find KE_des_44'
end
if isfield(params, 'KE_des_45')
  KE_des_45 = params.KE_des_45;
elseif isfield(params, 'KE_des')
  KE_des_45 = params.KE_des{45};
else
  error 'could not find KE_des_45'
end
if isfield(params, 'KE_des_46')
  KE_des_46 = params.KE_des_46;
elseif isfield(params, 'KE_des')
  KE_des_46 = params.KE_des{46};
else
  error 'could not find KE_des_46'
end
if isfield(params, 'KE_des_47')
  KE_des_47 = params.KE_des_47;
elseif isfield(params, 'KE_des')
  KE_des_47 = params.KE_des{47};
else
  error 'could not find KE_des_47'
end
if isfield(params, 'KE_des_48')
  KE_des_48 = params.KE_des_48;
elseif isfield(params, 'KE_des')
  KE_des_48 = params.KE_des{48};
else
  error 'could not find KE_des_48'
end
if isfield(params, 'KE_des_49')
  KE_des_49 = params.KE_des_49;
elseif isfield(params, 'KE_des')
  KE_des_49 = params.KE_des{49};
else
  error 'could not find KE_des_49'
end
if isfield(params, 'KE_des_50')
  KE_des_50 = params.KE_des_50;
elseif isfield(params, 'KE_des')
  KE_des_50 = params.KE_des{50};
else
  error 'could not find KE_des_50'
end
if isfield(params, 'KE_des_51')
  KE_des_51 = params.KE_des_51;
elseif isfield(params, 'KE_des')
  KE_des_51 = params.KE_des{51};
else
  error 'could not find KE_des_51'
end
if isfield(params, 'KE_max_1')
  KE_max_1 = params.KE_max_1;
elseif isfield(params, 'KE_max')
  KE_max_1 = params.KE_max{1};
else
  error 'could not find KE_max_1'
end
if isfield(params, 'KE_max_2')
  KE_max_2 = params.KE_max_2;
elseif isfield(params, 'KE_max')
  KE_max_2 = params.KE_max{2};
else
  error 'could not find KE_max_2'
end
if isfield(params, 'KE_max_3')
  KE_max_3 = params.KE_max_3;
elseif isfield(params, 'KE_max')
  KE_max_3 = params.KE_max{3};
else
  error 'could not find KE_max_3'
end
if isfield(params, 'KE_max_4')
  KE_max_4 = params.KE_max_4;
elseif isfield(params, 'KE_max')
  KE_max_4 = params.KE_max{4};
else
  error 'could not find KE_max_4'
end
if isfield(params, 'KE_max_5')
  KE_max_5 = params.KE_max_5;
elseif isfield(params, 'KE_max')
  KE_max_5 = params.KE_max{5};
else
  error 'could not find KE_max_5'
end
if isfield(params, 'KE_max_6')
  KE_max_6 = params.KE_max_6;
elseif isfield(params, 'KE_max')
  KE_max_6 = params.KE_max{6};
else
  error 'could not find KE_max_6'
end
if isfield(params, 'KE_max_7')
  KE_max_7 = params.KE_max_7;
elseif isfield(params, 'KE_max')
  KE_max_7 = params.KE_max{7};
else
  error 'could not find KE_max_7'
end
if isfield(params, 'KE_max_8')
  KE_max_8 = params.KE_max_8;
elseif isfield(params, 'KE_max')
  KE_max_8 = params.KE_max{8};
else
  error 'could not find KE_max_8'
end
if isfield(params, 'KE_max_9')
  KE_max_9 = params.KE_max_9;
elseif isfield(params, 'KE_max')
  KE_max_9 = params.KE_max{9};
else
  error 'could not find KE_max_9'
end
if isfield(params, 'KE_max_10')
  KE_max_10 = params.KE_max_10;
elseif isfield(params, 'KE_max')
  KE_max_10 = params.KE_max{10};
else
  error 'could not find KE_max_10'
end
if isfield(params, 'KE_max_11')
  KE_max_11 = params.KE_max_11;
elseif isfield(params, 'KE_max')
  KE_max_11 = params.KE_max{11};
else
  error 'could not find KE_max_11'
end
if isfield(params, 'KE_max_12')
  KE_max_12 = params.KE_max_12;
elseif isfield(params, 'KE_max')
  KE_max_12 = params.KE_max{12};
else
  error 'could not find KE_max_12'
end
if isfield(params, 'KE_max_13')
  KE_max_13 = params.KE_max_13;
elseif isfield(params, 'KE_max')
  KE_max_13 = params.KE_max{13};
else
  error 'could not find KE_max_13'
end
if isfield(params, 'KE_max_14')
  KE_max_14 = params.KE_max_14;
elseif isfield(params, 'KE_max')
  KE_max_14 = params.KE_max{14};
else
  error 'could not find KE_max_14'
end
if isfield(params, 'KE_max_15')
  KE_max_15 = params.KE_max_15;
elseif isfield(params, 'KE_max')
  KE_max_15 = params.KE_max{15};
else
  error 'could not find KE_max_15'
end
if isfield(params, 'KE_max_16')
  KE_max_16 = params.KE_max_16;
elseif isfield(params, 'KE_max')
  KE_max_16 = params.KE_max{16};
else
  error 'could not find KE_max_16'
end
if isfield(params, 'KE_max_17')
  KE_max_17 = params.KE_max_17;
elseif isfield(params, 'KE_max')
  KE_max_17 = params.KE_max{17};
else
  error 'could not find KE_max_17'
end
if isfield(params, 'KE_max_18')
  KE_max_18 = params.KE_max_18;
elseif isfield(params, 'KE_max')
  KE_max_18 = params.KE_max{18};
else
  error 'could not find KE_max_18'
end
if isfield(params, 'KE_max_19')
  KE_max_19 = params.KE_max_19;
elseif isfield(params, 'KE_max')
  KE_max_19 = params.KE_max{19};
else
  error 'could not find KE_max_19'
end
if isfield(params, 'KE_max_20')
  KE_max_20 = params.KE_max_20;
elseif isfield(params, 'KE_max')
  KE_max_20 = params.KE_max{20};
else
  error 'could not find KE_max_20'
end
if isfield(params, 'KE_max_21')
  KE_max_21 = params.KE_max_21;
elseif isfield(params, 'KE_max')
  KE_max_21 = params.KE_max{21};
else
  error 'could not find KE_max_21'
end
if isfield(params, 'KE_max_22')
  KE_max_22 = params.KE_max_22;
elseif isfield(params, 'KE_max')
  KE_max_22 = params.KE_max{22};
else
  error 'could not find KE_max_22'
end
if isfield(params, 'KE_max_23')
  KE_max_23 = params.KE_max_23;
elseif isfield(params, 'KE_max')
  KE_max_23 = params.KE_max{23};
else
  error 'could not find KE_max_23'
end
if isfield(params, 'KE_max_24')
  KE_max_24 = params.KE_max_24;
elseif isfield(params, 'KE_max')
  KE_max_24 = params.KE_max{24};
else
  error 'could not find KE_max_24'
end
if isfield(params, 'KE_max_25')
  KE_max_25 = params.KE_max_25;
elseif isfield(params, 'KE_max')
  KE_max_25 = params.KE_max{25};
else
  error 'could not find KE_max_25'
end
if isfield(params, 'KE_max_26')
  KE_max_26 = params.KE_max_26;
elseif isfield(params, 'KE_max')
  KE_max_26 = params.KE_max{26};
else
  error 'could not find KE_max_26'
end
if isfield(params, 'KE_max_27')
  KE_max_27 = params.KE_max_27;
elseif isfield(params, 'KE_max')
  KE_max_27 = params.KE_max{27};
else
  error 'could not find KE_max_27'
end
if isfield(params, 'KE_max_28')
  KE_max_28 = params.KE_max_28;
elseif isfield(params, 'KE_max')
  KE_max_28 = params.KE_max{28};
else
  error 'could not find KE_max_28'
end
if isfield(params, 'KE_max_29')
  KE_max_29 = params.KE_max_29;
elseif isfield(params, 'KE_max')
  KE_max_29 = params.KE_max{29};
else
  error 'could not find KE_max_29'
end
if isfield(params, 'KE_max_30')
  KE_max_30 = params.KE_max_30;
elseif isfield(params, 'KE_max')
  KE_max_30 = params.KE_max{30};
else
  error 'could not find KE_max_30'
end
if isfield(params, 'KE_max_31')
  KE_max_31 = params.KE_max_31;
elseif isfield(params, 'KE_max')
  KE_max_31 = params.KE_max{31};
else
  error 'could not find KE_max_31'
end
if isfield(params, 'KE_max_32')
  KE_max_32 = params.KE_max_32;
elseif isfield(params, 'KE_max')
  KE_max_32 = params.KE_max{32};
else
  error 'could not find KE_max_32'
end
if isfield(params, 'KE_max_33')
  KE_max_33 = params.KE_max_33;
elseif isfield(params, 'KE_max')
  KE_max_33 = params.KE_max{33};
else
  error 'could not find KE_max_33'
end
if isfield(params, 'KE_max_34')
  KE_max_34 = params.KE_max_34;
elseif isfield(params, 'KE_max')
  KE_max_34 = params.KE_max{34};
else
  error 'could not find KE_max_34'
end
if isfield(params, 'KE_max_35')
  KE_max_35 = params.KE_max_35;
elseif isfield(params, 'KE_max')
  KE_max_35 = params.KE_max{35};
else
  error 'could not find KE_max_35'
end
if isfield(params, 'KE_max_36')
  KE_max_36 = params.KE_max_36;
elseif isfield(params, 'KE_max')
  KE_max_36 = params.KE_max{36};
else
  error 'could not find KE_max_36'
end
if isfield(params, 'KE_max_37')
  KE_max_37 = params.KE_max_37;
elseif isfield(params, 'KE_max')
  KE_max_37 = params.KE_max{37};
else
  error 'could not find KE_max_37'
end
if isfield(params, 'KE_max_38')
  KE_max_38 = params.KE_max_38;
elseif isfield(params, 'KE_max')
  KE_max_38 = params.KE_max{38};
else
  error 'could not find KE_max_38'
end
if isfield(params, 'KE_max_39')
  KE_max_39 = params.KE_max_39;
elseif isfield(params, 'KE_max')
  KE_max_39 = params.KE_max{39};
else
  error 'could not find KE_max_39'
end
if isfield(params, 'KE_max_40')
  KE_max_40 = params.KE_max_40;
elseif isfield(params, 'KE_max')
  KE_max_40 = params.KE_max{40};
else
  error 'could not find KE_max_40'
end
if isfield(params, 'KE_max_41')
  KE_max_41 = params.KE_max_41;
elseif isfield(params, 'KE_max')
  KE_max_41 = params.KE_max{41};
else
  error 'could not find KE_max_41'
end
if isfield(params, 'KE_max_42')
  KE_max_42 = params.KE_max_42;
elseif isfield(params, 'KE_max')
  KE_max_42 = params.KE_max{42};
else
  error 'could not find KE_max_42'
end
if isfield(params, 'KE_max_43')
  KE_max_43 = params.KE_max_43;
elseif isfield(params, 'KE_max')
  KE_max_43 = params.KE_max{43};
else
  error 'could not find KE_max_43'
end
if isfield(params, 'KE_max_44')
  KE_max_44 = params.KE_max_44;
elseif isfield(params, 'KE_max')
  KE_max_44 = params.KE_max{44};
else
  error 'could not find KE_max_44'
end
if isfield(params, 'KE_max_45')
  KE_max_45 = params.KE_max_45;
elseif isfield(params, 'KE_max')
  KE_max_45 = params.KE_max{45};
else
  error 'could not find KE_max_45'
end
if isfield(params, 'KE_max_46')
  KE_max_46 = params.KE_max_46;
elseif isfield(params, 'KE_max')
  KE_max_46 = params.KE_max{46};
else
  error 'could not find KE_max_46'
end
if isfield(params, 'KE_max_47')
  KE_max_47 = params.KE_max_47;
elseif isfield(params, 'KE_max')
  KE_max_47 = params.KE_max{47};
else
  error 'could not find KE_max_47'
end
if isfield(params, 'KE_max_48')
  KE_max_48 = params.KE_max_48;
elseif isfield(params, 'KE_max')
  KE_max_48 = params.KE_max{48};
else
  error 'could not find KE_max_48'
end
if isfield(params, 'KE_max_49')
  KE_max_49 = params.KE_max_49;
elseif isfield(params, 'KE_max')
  KE_max_49 = params.KE_max{49};
else
  error 'could not find KE_max_49'
end
if isfield(params, 'KE_max_50')
  KE_max_50 = params.KE_max_50;
elseif isfield(params, 'KE_max')
  KE_max_50 = params.KE_max{50};
else
  error 'could not find KE_max_50'
end
if isfield(params, 'KE_max_51')
  KE_max_51 = params.KE_max_51;
elseif isfield(params, 'KE_max')
  KE_max_51 = params.KE_max{51};
else
  error 'could not find KE_max_51'
end
if isfield(params, 'KE_min_1')
  KE_min_1 = params.KE_min_1;
elseif isfield(params, 'KE_min')
  KE_min_1 = params.KE_min{1};
else
  error 'could not find KE_min_1'
end
if isfield(params, 'KE_min_2')
  KE_min_2 = params.KE_min_2;
elseif isfield(params, 'KE_min')
  KE_min_2 = params.KE_min{2};
else
  error 'could not find KE_min_2'
end
if isfield(params, 'KE_min_3')
  KE_min_3 = params.KE_min_3;
elseif isfield(params, 'KE_min')
  KE_min_3 = params.KE_min{3};
else
  error 'could not find KE_min_3'
end
if isfield(params, 'KE_min_4')
  KE_min_4 = params.KE_min_4;
elseif isfield(params, 'KE_min')
  KE_min_4 = params.KE_min{4};
else
  error 'could not find KE_min_4'
end
if isfield(params, 'KE_min_5')
  KE_min_5 = params.KE_min_5;
elseif isfield(params, 'KE_min')
  KE_min_5 = params.KE_min{5};
else
  error 'could not find KE_min_5'
end
if isfield(params, 'KE_min_6')
  KE_min_6 = params.KE_min_6;
elseif isfield(params, 'KE_min')
  KE_min_6 = params.KE_min{6};
else
  error 'could not find KE_min_6'
end
if isfield(params, 'KE_min_7')
  KE_min_7 = params.KE_min_7;
elseif isfield(params, 'KE_min')
  KE_min_7 = params.KE_min{7};
else
  error 'could not find KE_min_7'
end
if isfield(params, 'KE_min_8')
  KE_min_8 = params.KE_min_8;
elseif isfield(params, 'KE_min')
  KE_min_8 = params.KE_min{8};
else
  error 'could not find KE_min_8'
end
if isfield(params, 'KE_min_9')
  KE_min_9 = params.KE_min_9;
elseif isfield(params, 'KE_min')
  KE_min_9 = params.KE_min{9};
else
  error 'could not find KE_min_9'
end
if isfield(params, 'KE_min_10')
  KE_min_10 = params.KE_min_10;
elseif isfield(params, 'KE_min')
  KE_min_10 = params.KE_min{10};
else
  error 'could not find KE_min_10'
end
if isfield(params, 'KE_min_11')
  KE_min_11 = params.KE_min_11;
elseif isfield(params, 'KE_min')
  KE_min_11 = params.KE_min{11};
else
  error 'could not find KE_min_11'
end
if isfield(params, 'KE_min_12')
  KE_min_12 = params.KE_min_12;
elseif isfield(params, 'KE_min')
  KE_min_12 = params.KE_min{12};
else
  error 'could not find KE_min_12'
end
if isfield(params, 'KE_min_13')
  KE_min_13 = params.KE_min_13;
elseif isfield(params, 'KE_min')
  KE_min_13 = params.KE_min{13};
else
  error 'could not find KE_min_13'
end
if isfield(params, 'KE_min_14')
  KE_min_14 = params.KE_min_14;
elseif isfield(params, 'KE_min')
  KE_min_14 = params.KE_min{14};
else
  error 'could not find KE_min_14'
end
if isfield(params, 'KE_min_15')
  KE_min_15 = params.KE_min_15;
elseif isfield(params, 'KE_min')
  KE_min_15 = params.KE_min{15};
else
  error 'could not find KE_min_15'
end
if isfield(params, 'KE_min_16')
  KE_min_16 = params.KE_min_16;
elseif isfield(params, 'KE_min')
  KE_min_16 = params.KE_min{16};
else
  error 'could not find KE_min_16'
end
if isfield(params, 'KE_min_17')
  KE_min_17 = params.KE_min_17;
elseif isfield(params, 'KE_min')
  KE_min_17 = params.KE_min{17};
else
  error 'could not find KE_min_17'
end
if isfield(params, 'KE_min_18')
  KE_min_18 = params.KE_min_18;
elseif isfield(params, 'KE_min')
  KE_min_18 = params.KE_min{18};
else
  error 'could not find KE_min_18'
end
if isfield(params, 'KE_min_19')
  KE_min_19 = params.KE_min_19;
elseif isfield(params, 'KE_min')
  KE_min_19 = params.KE_min{19};
else
  error 'could not find KE_min_19'
end
if isfield(params, 'KE_min_20')
  KE_min_20 = params.KE_min_20;
elseif isfield(params, 'KE_min')
  KE_min_20 = params.KE_min{20};
else
  error 'could not find KE_min_20'
end
if isfield(params, 'KE_min_21')
  KE_min_21 = params.KE_min_21;
elseif isfield(params, 'KE_min')
  KE_min_21 = params.KE_min{21};
else
  error 'could not find KE_min_21'
end
if isfield(params, 'KE_min_22')
  KE_min_22 = params.KE_min_22;
elseif isfield(params, 'KE_min')
  KE_min_22 = params.KE_min{22};
else
  error 'could not find KE_min_22'
end
if isfield(params, 'KE_min_23')
  KE_min_23 = params.KE_min_23;
elseif isfield(params, 'KE_min')
  KE_min_23 = params.KE_min{23};
else
  error 'could not find KE_min_23'
end
if isfield(params, 'KE_min_24')
  KE_min_24 = params.KE_min_24;
elseif isfield(params, 'KE_min')
  KE_min_24 = params.KE_min{24};
else
  error 'could not find KE_min_24'
end
if isfield(params, 'KE_min_25')
  KE_min_25 = params.KE_min_25;
elseif isfield(params, 'KE_min')
  KE_min_25 = params.KE_min{25};
else
  error 'could not find KE_min_25'
end
if isfield(params, 'KE_min_26')
  KE_min_26 = params.KE_min_26;
elseif isfield(params, 'KE_min')
  KE_min_26 = params.KE_min{26};
else
  error 'could not find KE_min_26'
end
if isfield(params, 'KE_min_27')
  KE_min_27 = params.KE_min_27;
elseif isfield(params, 'KE_min')
  KE_min_27 = params.KE_min{27};
else
  error 'could not find KE_min_27'
end
if isfield(params, 'KE_min_28')
  KE_min_28 = params.KE_min_28;
elseif isfield(params, 'KE_min')
  KE_min_28 = params.KE_min{28};
else
  error 'could not find KE_min_28'
end
if isfield(params, 'KE_min_29')
  KE_min_29 = params.KE_min_29;
elseif isfield(params, 'KE_min')
  KE_min_29 = params.KE_min{29};
else
  error 'could not find KE_min_29'
end
if isfield(params, 'KE_min_30')
  KE_min_30 = params.KE_min_30;
elseif isfield(params, 'KE_min')
  KE_min_30 = params.KE_min{30};
else
  error 'could not find KE_min_30'
end
if isfield(params, 'KE_min_31')
  KE_min_31 = params.KE_min_31;
elseif isfield(params, 'KE_min')
  KE_min_31 = params.KE_min{31};
else
  error 'could not find KE_min_31'
end
if isfield(params, 'KE_min_32')
  KE_min_32 = params.KE_min_32;
elseif isfield(params, 'KE_min')
  KE_min_32 = params.KE_min{32};
else
  error 'could not find KE_min_32'
end
if isfield(params, 'KE_min_33')
  KE_min_33 = params.KE_min_33;
elseif isfield(params, 'KE_min')
  KE_min_33 = params.KE_min{33};
else
  error 'could not find KE_min_33'
end
if isfield(params, 'KE_min_34')
  KE_min_34 = params.KE_min_34;
elseif isfield(params, 'KE_min')
  KE_min_34 = params.KE_min{34};
else
  error 'could not find KE_min_34'
end
if isfield(params, 'KE_min_35')
  KE_min_35 = params.KE_min_35;
elseif isfield(params, 'KE_min')
  KE_min_35 = params.KE_min{35};
else
  error 'could not find KE_min_35'
end
if isfield(params, 'KE_min_36')
  KE_min_36 = params.KE_min_36;
elseif isfield(params, 'KE_min')
  KE_min_36 = params.KE_min{36};
else
  error 'could not find KE_min_36'
end
if isfield(params, 'KE_min_37')
  KE_min_37 = params.KE_min_37;
elseif isfield(params, 'KE_min')
  KE_min_37 = params.KE_min{37};
else
  error 'could not find KE_min_37'
end
if isfield(params, 'KE_min_38')
  KE_min_38 = params.KE_min_38;
elseif isfield(params, 'KE_min')
  KE_min_38 = params.KE_min{38};
else
  error 'could not find KE_min_38'
end
if isfield(params, 'KE_min_39')
  KE_min_39 = params.KE_min_39;
elseif isfield(params, 'KE_min')
  KE_min_39 = params.KE_min{39};
else
  error 'could not find KE_min_39'
end
if isfield(params, 'KE_min_40')
  KE_min_40 = params.KE_min_40;
elseif isfield(params, 'KE_min')
  KE_min_40 = params.KE_min{40};
else
  error 'could not find KE_min_40'
end
if isfield(params, 'KE_min_41')
  KE_min_41 = params.KE_min_41;
elseif isfield(params, 'KE_min')
  KE_min_41 = params.KE_min{41};
else
  error 'could not find KE_min_41'
end
if isfield(params, 'KE_min_42')
  KE_min_42 = params.KE_min_42;
elseif isfield(params, 'KE_min')
  KE_min_42 = params.KE_min{42};
else
  error 'could not find KE_min_42'
end
if isfield(params, 'KE_min_43')
  KE_min_43 = params.KE_min_43;
elseif isfield(params, 'KE_min')
  KE_min_43 = params.KE_min{43};
else
  error 'could not find KE_min_43'
end
if isfield(params, 'KE_min_44')
  KE_min_44 = params.KE_min_44;
elseif isfield(params, 'KE_min')
  KE_min_44 = params.KE_min{44};
else
  error 'could not find KE_min_44'
end
if isfield(params, 'KE_min_45')
  KE_min_45 = params.KE_min_45;
elseif isfield(params, 'KE_min')
  KE_min_45 = params.KE_min{45};
else
  error 'could not find KE_min_45'
end
if isfield(params, 'KE_min_46')
  KE_min_46 = params.KE_min_46;
elseif isfield(params, 'KE_min')
  KE_min_46 = params.KE_min{46};
else
  error 'could not find KE_min_46'
end
if isfield(params, 'KE_min_47')
  KE_min_47 = params.KE_min_47;
elseif isfield(params, 'KE_min')
  KE_min_47 = params.KE_min{47};
else
  error 'could not find KE_min_47'
end
if isfield(params, 'KE_min_48')
  KE_min_48 = params.KE_min_48;
elseif isfield(params, 'KE_min')
  KE_min_48 = params.KE_min{48};
else
  error 'could not find KE_min_48'
end
if isfield(params, 'KE_min_49')
  KE_min_49 = params.KE_min_49;
elseif isfield(params, 'KE_min')
  KE_min_49 = params.KE_min{49};
else
  error 'could not find KE_min_49'
end
if isfield(params, 'KE_min_50')
  KE_min_50 = params.KE_min_50;
elseif isfield(params, 'KE_min')
  KE_min_50 = params.KE_min{50};
else
  error 'could not find KE_min_50'
end
if isfield(params, 'KE_min_51')
  KE_min_51 = params.KE_min_51;
elseif isfield(params, 'KE_min')
  KE_min_51 = params.KE_min{51};
else
  error 'could not find KE_min_51'
end
U_p = params.U_p;
dU = params.dU;
if isfield(params, 'lam_b_1')
  lam_b_1 = params.lam_b_1;
elseif isfield(params, 'lam_b')
  lam_b_1 = params.lam_b{1};
else
  error 'could not find lam_b_1'
end
if isfield(params, 'lam_b_2')
  lam_b_2 = params.lam_b_2;
elseif isfield(params, 'lam_b')
  lam_b_2 = params.lam_b{2};
else
  error 'could not find lam_b_2'
end
if isfield(params, 'lam_b_3')
  lam_b_3 = params.lam_b_3;
elseif isfield(params, 'lam_b')
  lam_b_3 = params.lam_b{3};
else
  error 'could not find lam_b_3'
end
if isfield(params, 'lam_b_4')
  lam_b_4 = params.lam_b_4;
elseif isfield(params, 'lam_b')
  lam_b_4 = params.lam_b{4};
else
  error 'could not find lam_b_4'
end
if isfield(params, 'lam_b_5')
  lam_b_5 = params.lam_b_5;
elseif isfield(params, 'lam_b')
  lam_b_5 = params.lam_b{5};
else
  error 'could not find lam_b_5'
end
if isfield(params, 'lam_b_6')
  lam_b_6 = params.lam_b_6;
elseif isfield(params, 'lam_b')
  lam_b_6 = params.lam_b{6};
else
  error 'could not find lam_b_6'
end
if isfield(params, 'lam_b_7')
  lam_b_7 = params.lam_b_7;
elseif isfield(params, 'lam_b')
  lam_b_7 = params.lam_b{7};
else
  error 'could not find lam_b_7'
end
if isfield(params, 'lam_b_8')
  lam_b_8 = params.lam_b_8;
elseif isfield(params, 'lam_b')
  lam_b_8 = params.lam_b{8};
else
  error 'could not find lam_b_8'
end
if isfield(params, 'lam_b_9')
  lam_b_9 = params.lam_b_9;
elseif isfield(params, 'lam_b')
  lam_b_9 = params.lam_b{9};
else
  error 'could not find lam_b_9'
end
if isfield(params, 'lam_b_10')
  lam_b_10 = params.lam_b_10;
elseif isfield(params, 'lam_b')
  lam_b_10 = params.lam_b{10};
else
  error 'could not find lam_b_10'
end
if isfield(params, 'lam_b_11')
  lam_b_11 = params.lam_b_11;
elseif isfield(params, 'lam_b')
  lam_b_11 = params.lam_b{11};
else
  error 'could not find lam_b_11'
end
if isfield(params, 'lam_b_12')
  lam_b_12 = params.lam_b_12;
elseif isfield(params, 'lam_b')
  lam_b_12 = params.lam_b{12};
else
  error 'could not find lam_b_12'
end
if isfield(params, 'lam_b_13')
  lam_b_13 = params.lam_b_13;
elseif isfield(params, 'lam_b')
  lam_b_13 = params.lam_b{13};
else
  error 'could not find lam_b_13'
end
if isfield(params, 'lam_b_14')
  lam_b_14 = params.lam_b_14;
elseif isfield(params, 'lam_b')
  lam_b_14 = params.lam_b{14};
else
  error 'could not find lam_b_14'
end
if isfield(params, 'lam_b_15')
  lam_b_15 = params.lam_b_15;
elseif isfield(params, 'lam_b')
  lam_b_15 = params.lam_b{15};
else
  error 'could not find lam_b_15'
end
if isfield(params, 'lam_b_16')
  lam_b_16 = params.lam_b_16;
elseif isfield(params, 'lam_b')
  lam_b_16 = params.lam_b{16};
else
  error 'could not find lam_b_16'
end
if isfield(params, 'lam_b_17')
  lam_b_17 = params.lam_b_17;
elseif isfield(params, 'lam_b')
  lam_b_17 = params.lam_b{17};
else
  error 'could not find lam_b_17'
end
if isfield(params, 'lam_b_18')
  lam_b_18 = params.lam_b_18;
elseif isfield(params, 'lam_b')
  lam_b_18 = params.lam_b{18};
else
  error 'could not find lam_b_18'
end
if isfield(params, 'lam_b_19')
  lam_b_19 = params.lam_b_19;
elseif isfield(params, 'lam_b')
  lam_b_19 = params.lam_b{19};
else
  error 'could not find lam_b_19'
end
if isfield(params, 'lam_b_20')
  lam_b_20 = params.lam_b_20;
elseif isfield(params, 'lam_b')
  lam_b_20 = params.lam_b{20};
else
  error 'could not find lam_b_20'
end
if isfield(params, 'lam_b_21')
  lam_b_21 = params.lam_b_21;
elseif isfield(params, 'lam_b')
  lam_b_21 = params.lam_b{21};
else
  error 'could not find lam_b_21'
end
if isfield(params, 'lam_b_22')
  lam_b_22 = params.lam_b_22;
elseif isfield(params, 'lam_b')
  lam_b_22 = params.lam_b{22};
else
  error 'could not find lam_b_22'
end
if isfield(params, 'lam_b_23')
  lam_b_23 = params.lam_b_23;
elseif isfield(params, 'lam_b')
  lam_b_23 = params.lam_b{23};
else
  error 'could not find lam_b_23'
end
if isfield(params, 'lam_b_24')
  lam_b_24 = params.lam_b_24;
elseif isfield(params, 'lam_b')
  lam_b_24 = params.lam_b{24};
else
  error 'could not find lam_b_24'
end
if isfield(params, 'lam_b_25')
  lam_b_25 = params.lam_b_25;
elseif isfield(params, 'lam_b')
  lam_b_25 = params.lam_b{25};
else
  error 'could not find lam_b_25'
end
if isfield(params, 'lam_b_26')
  lam_b_26 = params.lam_b_26;
elseif isfield(params, 'lam_b')
  lam_b_26 = params.lam_b{26};
else
  error 'could not find lam_b_26'
end
if isfield(params, 'lam_b_27')
  lam_b_27 = params.lam_b_27;
elseif isfield(params, 'lam_b')
  lam_b_27 = params.lam_b{27};
else
  error 'could not find lam_b_27'
end
if isfield(params, 'lam_b_28')
  lam_b_28 = params.lam_b_28;
elseif isfield(params, 'lam_b')
  lam_b_28 = params.lam_b{28};
else
  error 'could not find lam_b_28'
end
if isfield(params, 'lam_b_29')
  lam_b_29 = params.lam_b_29;
elseif isfield(params, 'lam_b')
  lam_b_29 = params.lam_b{29};
else
  error 'could not find lam_b_29'
end
if isfield(params, 'lam_b_30')
  lam_b_30 = params.lam_b_30;
elseif isfield(params, 'lam_b')
  lam_b_30 = params.lam_b{30};
else
  error 'could not find lam_b_30'
end
if isfield(params, 'lam_b_31')
  lam_b_31 = params.lam_b_31;
elseif isfield(params, 'lam_b')
  lam_b_31 = params.lam_b{31};
else
  error 'could not find lam_b_31'
end
if isfield(params, 'lam_b_32')
  lam_b_32 = params.lam_b_32;
elseif isfield(params, 'lam_b')
  lam_b_32 = params.lam_b{32};
else
  error 'could not find lam_b_32'
end
if isfield(params, 'lam_b_33')
  lam_b_33 = params.lam_b_33;
elseif isfield(params, 'lam_b')
  lam_b_33 = params.lam_b{33};
else
  error 'could not find lam_b_33'
end
if isfield(params, 'lam_b_34')
  lam_b_34 = params.lam_b_34;
elseif isfield(params, 'lam_b')
  lam_b_34 = params.lam_b{34};
else
  error 'could not find lam_b_34'
end
if isfield(params, 'lam_b_35')
  lam_b_35 = params.lam_b_35;
elseif isfield(params, 'lam_b')
  lam_b_35 = params.lam_b{35};
else
  error 'could not find lam_b_35'
end
if isfield(params, 'lam_b_36')
  lam_b_36 = params.lam_b_36;
elseif isfield(params, 'lam_b')
  lam_b_36 = params.lam_b{36};
else
  error 'could not find lam_b_36'
end
if isfield(params, 'lam_b_37')
  lam_b_37 = params.lam_b_37;
elseif isfield(params, 'lam_b')
  lam_b_37 = params.lam_b{37};
else
  error 'could not find lam_b_37'
end
if isfield(params, 'lam_b_38')
  lam_b_38 = params.lam_b_38;
elseif isfield(params, 'lam_b')
  lam_b_38 = params.lam_b{38};
else
  error 'could not find lam_b_38'
end
if isfield(params, 'lam_b_39')
  lam_b_39 = params.lam_b_39;
elseif isfield(params, 'lam_b')
  lam_b_39 = params.lam_b{39};
else
  error 'could not find lam_b_39'
end
if isfield(params, 'lam_b_40')
  lam_b_40 = params.lam_b_40;
elseif isfield(params, 'lam_b')
  lam_b_40 = params.lam_b{40};
else
  error 'could not find lam_b_40'
end
if isfield(params, 'lam_b_41')
  lam_b_41 = params.lam_b_41;
elseif isfield(params, 'lam_b')
  lam_b_41 = params.lam_b{41};
else
  error 'could not find lam_b_41'
end
if isfield(params, 'lam_b_42')
  lam_b_42 = params.lam_b_42;
elseif isfield(params, 'lam_b')
  lam_b_42 = params.lam_b{42};
else
  error 'could not find lam_b_42'
end
if isfield(params, 'lam_b_43')
  lam_b_43 = params.lam_b_43;
elseif isfield(params, 'lam_b')
  lam_b_43 = params.lam_b{43};
else
  error 'could not find lam_b_43'
end
if isfield(params, 'lam_b_44')
  lam_b_44 = params.lam_b_44;
elseif isfield(params, 'lam_b')
  lam_b_44 = params.lam_b{44};
else
  error 'could not find lam_b_44'
end
if isfield(params, 'lam_b_45')
  lam_b_45 = params.lam_b_45;
elseif isfield(params, 'lam_b')
  lam_b_45 = params.lam_b{45};
else
  error 'could not find lam_b_45'
end
if isfield(params, 'lam_b_46')
  lam_b_46 = params.lam_b_46;
elseif isfield(params, 'lam_b')
  lam_b_46 = params.lam_b{46};
else
  error 'could not find lam_b_46'
end
if isfield(params, 'lam_b_47')
  lam_b_47 = params.lam_b_47;
elseif isfield(params, 'lam_b')
  lam_b_47 = params.lam_b{47};
else
  error 'could not find lam_b_47'
end
if isfield(params, 'lam_b_48')
  lam_b_48 = params.lam_b_48;
elseif isfield(params, 'lam_b')
  lam_b_48 = params.lam_b{48};
else
  error 'could not find lam_b_48'
end
if isfield(params, 'lam_b_49')
  lam_b_49 = params.lam_b_49;
elseif isfield(params, 'lam_b')
  lam_b_49 = params.lam_b{49};
else
  error 'could not find lam_b_49'
end
if isfield(params, 'lam_b_50')
  lam_b_50 = params.lam_b_50;
elseif isfield(params, 'lam_b')
  lam_b_50 = params.lam_b{50};
else
  error 'could not find lam_b_50'
end
if isfield(params, 'lam_b_51')
  lam_b_51 = params.lam_b_51;
elseif isfield(params, 'lam_b')
  lam_b_51 = params.lam_b{51};
else
  error 'could not find lam_b_51'
end
if isfield(params, 'lam_e_1')
  lam_e_1 = params.lam_e_1;
elseif isfield(params, 'lam_e')
  lam_e_1 = params.lam_e{1};
else
  error 'could not find lam_e_1'
end
if isfield(params, 'lam_e_2')
  lam_e_2 = params.lam_e_2;
elseif isfield(params, 'lam_e')
  lam_e_2 = params.lam_e{2};
else
  error 'could not find lam_e_2'
end
if isfield(params, 'lam_e_3')
  lam_e_3 = params.lam_e_3;
elseif isfield(params, 'lam_e')
  lam_e_3 = params.lam_e{3};
else
  error 'could not find lam_e_3'
end
if isfield(params, 'lam_e_4')
  lam_e_4 = params.lam_e_4;
elseif isfield(params, 'lam_e')
  lam_e_4 = params.lam_e{4};
else
  error 'could not find lam_e_4'
end
if isfield(params, 'lam_e_5')
  lam_e_5 = params.lam_e_5;
elseif isfield(params, 'lam_e')
  lam_e_5 = params.lam_e{5};
else
  error 'could not find lam_e_5'
end
if isfield(params, 'lam_e_6')
  lam_e_6 = params.lam_e_6;
elseif isfield(params, 'lam_e')
  lam_e_6 = params.lam_e{6};
else
  error 'could not find lam_e_6'
end
if isfield(params, 'lam_e_7')
  lam_e_7 = params.lam_e_7;
elseif isfield(params, 'lam_e')
  lam_e_7 = params.lam_e{7};
else
  error 'could not find lam_e_7'
end
if isfield(params, 'lam_e_8')
  lam_e_8 = params.lam_e_8;
elseif isfield(params, 'lam_e')
  lam_e_8 = params.lam_e{8};
else
  error 'could not find lam_e_8'
end
if isfield(params, 'lam_e_9')
  lam_e_9 = params.lam_e_9;
elseif isfield(params, 'lam_e')
  lam_e_9 = params.lam_e{9};
else
  error 'could not find lam_e_9'
end
if isfield(params, 'lam_e_10')
  lam_e_10 = params.lam_e_10;
elseif isfield(params, 'lam_e')
  lam_e_10 = params.lam_e{10};
else
  error 'could not find lam_e_10'
end
if isfield(params, 'lam_e_11')
  lam_e_11 = params.lam_e_11;
elseif isfield(params, 'lam_e')
  lam_e_11 = params.lam_e{11};
else
  error 'could not find lam_e_11'
end
if isfield(params, 'lam_e_12')
  lam_e_12 = params.lam_e_12;
elseif isfield(params, 'lam_e')
  lam_e_12 = params.lam_e{12};
else
  error 'could not find lam_e_12'
end
if isfield(params, 'lam_e_13')
  lam_e_13 = params.lam_e_13;
elseif isfield(params, 'lam_e')
  lam_e_13 = params.lam_e{13};
else
  error 'could not find lam_e_13'
end
if isfield(params, 'lam_e_14')
  lam_e_14 = params.lam_e_14;
elseif isfield(params, 'lam_e')
  lam_e_14 = params.lam_e{14};
else
  error 'could not find lam_e_14'
end
if isfield(params, 'lam_e_15')
  lam_e_15 = params.lam_e_15;
elseif isfield(params, 'lam_e')
  lam_e_15 = params.lam_e{15};
else
  error 'could not find lam_e_15'
end
if isfield(params, 'lam_e_16')
  lam_e_16 = params.lam_e_16;
elseif isfield(params, 'lam_e')
  lam_e_16 = params.lam_e{16};
else
  error 'could not find lam_e_16'
end
if isfield(params, 'lam_e_17')
  lam_e_17 = params.lam_e_17;
elseif isfield(params, 'lam_e')
  lam_e_17 = params.lam_e{17};
else
  error 'could not find lam_e_17'
end
if isfield(params, 'lam_e_18')
  lam_e_18 = params.lam_e_18;
elseif isfield(params, 'lam_e')
  lam_e_18 = params.lam_e{18};
else
  error 'could not find lam_e_18'
end
if isfield(params, 'lam_e_19')
  lam_e_19 = params.lam_e_19;
elseif isfield(params, 'lam_e')
  lam_e_19 = params.lam_e{19};
else
  error 'could not find lam_e_19'
end
if isfield(params, 'lam_e_20')
  lam_e_20 = params.lam_e_20;
elseif isfield(params, 'lam_e')
  lam_e_20 = params.lam_e{20};
else
  error 'could not find lam_e_20'
end
if isfield(params, 'lam_e_21')
  lam_e_21 = params.lam_e_21;
elseif isfield(params, 'lam_e')
  lam_e_21 = params.lam_e{21};
else
  error 'could not find lam_e_21'
end
if isfield(params, 'lam_e_22')
  lam_e_22 = params.lam_e_22;
elseif isfield(params, 'lam_e')
  lam_e_22 = params.lam_e{22};
else
  error 'could not find lam_e_22'
end
if isfield(params, 'lam_e_23')
  lam_e_23 = params.lam_e_23;
elseif isfield(params, 'lam_e')
  lam_e_23 = params.lam_e{23};
else
  error 'could not find lam_e_23'
end
if isfield(params, 'lam_e_24')
  lam_e_24 = params.lam_e_24;
elseif isfield(params, 'lam_e')
  lam_e_24 = params.lam_e{24};
else
  error 'could not find lam_e_24'
end
if isfield(params, 'lam_e_25')
  lam_e_25 = params.lam_e_25;
elseif isfield(params, 'lam_e')
  lam_e_25 = params.lam_e{25};
else
  error 'could not find lam_e_25'
end
if isfield(params, 'lam_e_26')
  lam_e_26 = params.lam_e_26;
elseif isfield(params, 'lam_e')
  lam_e_26 = params.lam_e{26};
else
  error 'could not find lam_e_26'
end
if isfield(params, 'lam_e_27')
  lam_e_27 = params.lam_e_27;
elseif isfield(params, 'lam_e')
  lam_e_27 = params.lam_e{27};
else
  error 'could not find lam_e_27'
end
if isfield(params, 'lam_e_28')
  lam_e_28 = params.lam_e_28;
elseif isfield(params, 'lam_e')
  lam_e_28 = params.lam_e{28};
else
  error 'could not find lam_e_28'
end
if isfield(params, 'lam_e_29')
  lam_e_29 = params.lam_e_29;
elseif isfield(params, 'lam_e')
  lam_e_29 = params.lam_e{29};
else
  error 'could not find lam_e_29'
end
if isfield(params, 'lam_e_30')
  lam_e_30 = params.lam_e_30;
elseif isfield(params, 'lam_e')
  lam_e_30 = params.lam_e{30};
else
  error 'could not find lam_e_30'
end
if isfield(params, 'lam_e_31')
  lam_e_31 = params.lam_e_31;
elseif isfield(params, 'lam_e')
  lam_e_31 = params.lam_e{31};
else
  error 'could not find lam_e_31'
end
if isfield(params, 'lam_e_32')
  lam_e_32 = params.lam_e_32;
elseif isfield(params, 'lam_e')
  lam_e_32 = params.lam_e{32};
else
  error 'could not find lam_e_32'
end
if isfield(params, 'lam_e_33')
  lam_e_33 = params.lam_e_33;
elseif isfield(params, 'lam_e')
  lam_e_33 = params.lam_e{33};
else
  error 'could not find lam_e_33'
end
if isfield(params, 'lam_e_34')
  lam_e_34 = params.lam_e_34;
elseif isfield(params, 'lam_e')
  lam_e_34 = params.lam_e{34};
else
  error 'could not find lam_e_34'
end
if isfield(params, 'lam_e_35')
  lam_e_35 = params.lam_e_35;
elseif isfield(params, 'lam_e')
  lam_e_35 = params.lam_e{35};
else
  error 'could not find lam_e_35'
end
if isfield(params, 'lam_e_36')
  lam_e_36 = params.lam_e_36;
elseif isfield(params, 'lam_e')
  lam_e_36 = params.lam_e{36};
else
  error 'could not find lam_e_36'
end
if isfield(params, 'lam_e_37')
  lam_e_37 = params.lam_e_37;
elseif isfield(params, 'lam_e')
  lam_e_37 = params.lam_e{37};
else
  error 'could not find lam_e_37'
end
if isfield(params, 'lam_e_38')
  lam_e_38 = params.lam_e_38;
elseif isfield(params, 'lam_e')
  lam_e_38 = params.lam_e{38};
else
  error 'could not find lam_e_38'
end
if isfield(params, 'lam_e_39')
  lam_e_39 = params.lam_e_39;
elseif isfield(params, 'lam_e')
  lam_e_39 = params.lam_e{39};
else
  error 'could not find lam_e_39'
end
if isfield(params, 'lam_e_40')
  lam_e_40 = params.lam_e_40;
elseif isfield(params, 'lam_e')
  lam_e_40 = params.lam_e{40};
else
  error 'could not find lam_e_40'
end
if isfield(params, 'lam_e_41')
  lam_e_41 = params.lam_e_41;
elseif isfield(params, 'lam_e')
  lam_e_41 = params.lam_e{41};
else
  error 'could not find lam_e_41'
end
if isfield(params, 'lam_e_42')
  lam_e_42 = params.lam_e_42;
elseif isfield(params, 'lam_e')
  lam_e_42 = params.lam_e{42};
else
  error 'could not find lam_e_42'
end
if isfield(params, 'lam_e_43')
  lam_e_43 = params.lam_e_43;
elseif isfield(params, 'lam_e')
  lam_e_43 = params.lam_e{43};
else
  error 'could not find lam_e_43'
end
if isfield(params, 'lam_e_44')
  lam_e_44 = params.lam_e_44;
elseif isfield(params, 'lam_e')
  lam_e_44 = params.lam_e{44};
else
  error 'could not find lam_e_44'
end
if isfield(params, 'lam_e_45')
  lam_e_45 = params.lam_e_45;
elseif isfield(params, 'lam_e')
  lam_e_45 = params.lam_e{45};
else
  error 'could not find lam_e_45'
end
if isfield(params, 'lam_e_46')
  lam_e_46 = params.lam_e_46;
elseif isfield(params, 'lam_e')
  lam_e_46 = params.lam_e{46};
else
  error 'could not find lam_e_46'
end
if isfield(params, 'lam_e_47')
  lam_e_47 = params.lam_e_47;
elseif isfield(params, 'lam_e')
  lam_e_47 = params.lam_e{47};
else
  error 'could not find lam_e_47'
end
if isfield(params, 'lam_e_48')
  lam_e_48 = params.lam_e_48;
elseif isfield(params, 'lam_e')
  lam_e_48 = params.lam_e{48};
else
  error 'could not find lam_e_48'
end
if isfield(params, 'lam_e_49')
  lam_e_49 = params.lam_e_49;
elseif isfield(params, 'lam_e')
  lam_e_49 = params.lam_e{49};
else
  error 'could not find lam_e_49'
end
if isfield(params, 'lam_e_50')
  lam_e_50 = params.lam_e_50;
elseif isfield(params, 'lam_e')
  lam_e_50 = params.lam_e{50};
else
  error 'could not find lam_e_50'
end
if isfield(params, 'lam_e_51')
  lam_e_51 = params.lam_e_51;
elseif isfield(params, 'lam_e')
  lam_e_51 = params.lam_e{51};
else
  error 'could not find lam_e_51'
end
cvx_begin
  % Caution: automatically generated by cvxgen. May be incorrect.
  variable E_mech_0;
  variable E_mech_1;
  variable E_mech_2;
  variable E_mech_3;
  variable E_mech_4;
  variable E_mech_5;
  variable E_mech_6;
  variable E_mech_7;
  variable E_mech_8;
  variable E_mech_9;
  variable E_mech_10;
  variable E_mech_11;
  variable E_mech_12;
  variable E_mech_13;
  variable E_mech_14;
  variable E_mech_15;
  variable E_mech_16;
  variable E_mech_17;
  variable E_mech_18;
  variable E_mech_19;
  variable E_mech_20;
  variable E_mech_21;
  variable E_mech_22;
  variable E_mech_23;
  variable E_mech_24;
  variable E_mech_25;
  variable E_mech_26;
  variable E_mech_27;
  variable E_mech_28;
  variable E_mech_29;
  variable E_mech_30;
  variable E_mech_31;
  variable E_mech_32;
  variable E_mech_33;
  variable E_mech_34;
  variable E_mech_35;
  variable E_mech_36;
  variable E_mech_37;
  variable E_mech_38;
  variable E_mech_39;
  variable E_mech_40;
  variable E_mech_41;
  variable E_mech_42;
  variable E_mech_43;
  variable E_mech_44;
  variable E_mech_45;
  variable E_mech_46;
  variable E_mech_47;
  variable E_mech_48;
  variable E_mech_49;
  variable E_mech_50;
  variable E_brk_0;
  variable E_brk_1;
  variable E_brk_2;
  variable E_brk_3;
  variable E_brk_4;
  variable E_brk_5;
  variable E_brk_6;
  variable E_brk_7;
  variable E_brk_8;
  variable E_brk_9;
  variable E_brk_10;
  variable E_brk_11;
  variable E_brk_12;
  variable E_brk_13;
  variable E_brk_14;
  variable E_brk_15;
  variable E_brk_16;
  variable E_brk_17;
  variable E_brk_18;
  variable E_brk_19;
  variable E_brk_20;
  variable E_brk_21;
  variable E_brk_22;
  variable E_brk_23;
  variable E_brk_24;
  variable E_brk_25;
  variable E_brk_26;
  variable E_brk_27;
  variable E_brk_28;
  variable E_brk_29;
  variable E_brk_30;
  variable E_brk_31;
  variable E_brk_32;
  variable E_brk_33;
  variable E_brk_34;
  variable E_brk_35;
  variable E_brk_36;
  variable E_brk_37;
  variable E_brk_38;
  variable E_brk_39;
  variable E_brk_40;
  variable E_brk_41;
  variable E_brk_42;
  variable E_brk_43;
  variable E_brk_44;
  variable E_brk_45;
  variable E_brk_46;
  variable E_brk_47;
  variable E_brk_48;
  variable E_brk_49;
  variable E_brk_50;
  variable KE_1;
  variable KE_2;
  variable KE_3;
  variable KE_4;
  variable KE_5;
  variable KE_6;
  variable KE_7;
  variable KE_8;
  variable KE_9;
  variable KE_10;
  variable KE_11;
  variable KE_12;
  variable KE_13;
  variable KE_14;
  variable KE_15;
  variable KE_16;
  variable KE_17;
  variable KE_18;
  variable KE_19;
  variable KE_20;
  variable KE_21;
  variable KE_22;
  variable KE_23;
  variable KE_24;
  variable KE_25;
  variable KE_26;
  variable KE_27;
  variable KE_28;
  variable KE_29;
  variable KE_30;
  variable KE_31;
  variable KE_32;
  variable KE_33;
  variable KE_34;
  variable KE_35;
  variable KE_36;
  variable KE_37;
  variable KE_38;
  variable KE_39;
  variable KE_40;
  variable KE_41;
  variable KE_42;
  variable KE_43;
  variable KE_44;
  variable KE_45;
  variable KE_46;
  variable KE_47;
  variable KE_48;
  variable KE_49;
  variable KE_50;
  variable KE_51;

  minimize(square(E_mech_0) + square(E_mech_1) + square(E_mech_2) + square(E_mech_3) + square(E_mech_4) + square(E_mech_5) + square(E_mech_6) + square(E_mech_7) + square(E_mech_8) + square(E_mech_9) + square(E_mech_10) + square(E_mech_11) + square(E_mech_12) + square(E_mech_13) + square(E_mech_14) + square(E_mech_15) + square(E_mech_16) + square(E_mech_17) + square(E_mech_18) + square(E_mech_19) + square(E_mech_20) + square(E_mech_21) + square(E_mech_22) + square(E_mech_23) + square(E_mech_24) + square(E_mech_25) + square(E_mech_26) + square(E_mech_27) + square(E_mech_28) + square(E_mech_29) + square(E_mech_30) + square(E_mech_31) + square(E_mech_32) + square(E_mech_33) + square(E_mech_34) + square(E_mech_35) + square(E_mech_36) + square(E_mech_37) + square(E_mech_38) + square(E_mech_39) + square(E_mech_40) + square(E_mech_41) + square(E_mech_42) + square(E_mech_43) + square(E_mech_44) + square(E_mech_45) + square(E_mech_46) + square(E_mech_47) + square(E_mech_48) + square(E_mech_49) + square(E_mech_50) + square(lam_b_1*E_brk_0) + square(lam_b_2*E_brk_1) + square(lam_b_3*E_brk_2) + square(lam_b_4*E_brk_3) + square(lam_b_5*E_brk_4) + square(lam_b_6*E_brk_5) + square(lam_b_7*E_brk_6) + square(lam_b_8*E_brk_7) + square(lam_b_9*E_brk_8) + square(lam_b_10*E_brk_9) + square(lam_b_11*E_brk_10) + square(lam_b_12*E_brk_11) + square(lam_b_13*E_brk_12) + square(lam_b_14*E_brk_13) + square(lam_b_15*E_brk_14) + square(lam_b_16*E_brk_15) + square(lam_b_17*E_brk_16) + square(lam_b_18*E_brk_17) + square(lam_b_19*E_brk_18) + square(lam_b_20*E_brk_19) + square(lam_b_21*E_brk_20) + square(lam_b_22*E_brk_21) + square(lam_b_23*E_brk_22) + square(lam_b_24*E_brk_23) + square(lam_b_25*E_brk_24) + square(lam_b_26*E_brk_25) + square(lam_b_27*E_brk_26) + square(lam_b_28*E_brk_27) + square(lam_b_29*E_brk_28) + square(lam_b_30*E_brk_29) + square(lam_b_31*E_brk_30) + square(lam_b_32*E_brk_31) + square(lam_b_33*E_brk_32) + square(lam_b_34*E_brk_33) + square(lam_b_35*E_brk_34) + square(lam_b_36*E_brk_35) + square(lam_b_37*E_brk_36) + square(lam_b_38*E_brk_37) + square(lam_b_39*E_brk_38) + square(lam_b_40*E_brk_39) + square(lam_b_41*E_brk_40) + square(lam_b_42*E_brk_41) + square(lam_b_43*E_brk_42) + square(lam_b_44*E_brk_43) + square(lam_b_45*E_brk_44) + square(lam_b_46*E_brk_45) + square(lam_b_47*E_brk_46) + square(lam_b_48*E_brk_47) + square(lam_b_49*E_brk_48) + square(lam_b_50*E_brk_49) + square(lam_b_51*E_brk_50) + square(lam_e_1*(KE_1 - KE_des_1)) + square(lam_e_2*(KE_2 - KE_des_2)) + square(lam_e_3*(KE_3 - KE_des_3)) + square(lam_e_4*(KE_4 - KE_des_4)) + square(lam_e_5*(KE_5 - KE_des_5)) + square(lam_e_6*(KE_6 - KE_des_6)) + square(lam_e_7*(KE_7 - KE_des_7)) + square(lam_e_8*(KE_8 - KE_des_8)) + square(lam_e_9*(KE_9 - KE_des_9)) + square(lam_e_10*(KE_10 - KE_des_10)) + square(lam_e_11*(KE_11 - KE_des_11)) + square(lam_e_12*(KE_12 - KE_des_12)) + square(lam_e_13*(KE_13 - KE_des_13)) + square(lam_e_14*(KE_14 - KE_des_14)) + square(lam_e_15*(KE_15 - KE_des_15)) + square(lam_e_16*(KE_16 - KE_des_16)) + square(lam_e_17*(KE_17 - KE_des_17)) + square(lam_e_18*(KE_18 - KE_des_18)) + square(lam_e_19*(KE_19 - KE_des_19)) + square(lam_e_20*(KE_20 - KE_des_20)) + square(lam_e_21*(KE_21 - KE_des_21)) + square(lam_e_22*(KE_22 - KE_des_22)) + square(lam_e_23*(KE_23 - KE_des_23)) + square(lam_e_24*(KE_24 - KE_des_24)) + square(lam_e_25*(KE_25 - KE_des_25)) + square(lam_e_26*(KE_26 - KE_des_26)) + square(lam_e_27*(KE_27 - KE_des_27)) + square(lam_e_28*(KE_28 - KE_des_28)) + square(lam_e_29*(KE_29 - KE_des_29)) + square(lam_e_30*(KE_30 - KE_des_30)) + square(lam_e_31*(KE_31 - KE_des_31)) + square(lam_e_32*(KE_32 - KE_des_32)) + square(lam_e_33*(KE_33 - KE_des_33)) + square(lam_e_34*(KE_34 - KE_des_34)) + square(lam_e_35*(KE_35 - KE_des_35)) + square(lam_e_36*(KE_36 - KE_des_36)) + square(lam_e_37*(KE_37 - KE_des_37)) + square(lam_e_38*(KE_38 - KE_des_38)) + square(lam_e_39*(KE_39 - KE_des_39)) + square(lam_e_40*(KE_40 - KE_des_40)) + square(lam_e_41*(KE_41 - KE_des_41)) + square(lam_e_42*(KE_42 - KE_des_42)) + square(lam_e_43*(KE_43 - KE_des_43)) + square(lam_e_44*(KE_44 - KE_des_44)) + square(lam_e_45*(KE_45 - KE_des_45)) + square(lam_e_46*(KE_46 - KE_des_46)) + square(lam_e_47*(KE_47 - KE_des_47)) + square(lam_e_48*(KE_48 - KE_des_48)) + square(lam_e_49*(KE_49 - KE_des_49)) + square(lam_e_50*(KE_50 - KE_des_50)) + square(lam_e_51*(KE_51 - KE_des_51)));
  subject to
    KE_1 == A*KE_0 + E_mech_0 - E_brk_0 - Env_0;
    KE_2 == A*KE_1 + E_mech_1 - E_brk_1 - Env_1;
    KE_3 == A*KE_2 + E_mech_2 - E_brk_2 - Env_2;
    KE_4 == A*KE_3 + E_mech_3 - E_brk_3 - Env_3;
    KE_5 == A*KE_4 + E_mech_4 - E_brk_4 - Env_4;
    KE_6 == A*KE_5 + E_mech_5 - E_brk_5 - Env_5;
    KE_7 == A*KE_6 + E_mech_6 - E_brk_6 - Env_6;
    KE_8 == A*KE_7 + E_mech_7 - E_brk_7 - Env_7;
    KE_9 == A*KE_8 + E_mech_8 - E_brk_8 - Env_8;
    KE_10 == A*KE_9 + E_mech_9 - E_brk_9 - Env_9;
    KE_11 == A*KE_10 + E_mech_10 - E_brk_10 - Env_10;
    KE_12 == A*KE_11 + E_mech_11 - E_brk_11 - Env_11;
    KE_13 == A*KE_12 + E_mech_12 - E_brk_12 - Env_12;
    KE_14 == A*KE_13 + E_mech_13 - E_brk_13 - Env_13;
    KE_15 == A*KE_14 + E_mech_14 - E_brk_14 - Env_14;
    KE_16 == A*KE_15 + E_mech_15 - E_brk_15 - Env_15;
    KE_17 == A*KE_16 + E_mech_16 - E_brk_16 - Env_16;
    KE_18 == A*KE_17 + E_mech_17 - E_brk_17 - Env_17;
    KE_19 == A*KE_18 + E_mech_18 - E_brk_18 - Env_18;
    KE_20 == A*KE_19 + E_mech_19 - E_brk_19 - Env_19;
    KE_21 == A*KE_20 + E_mech_20 - E_brk_20 - Env_20;
    KE_22 == A*KE_21 + E_mech_21 - E_brk_21 - Env_21;
    KE_23 == A*KE_22 + E_mech_22 - E_brk_22 - Env_22;
    KE_24 == A*KE_23 + E_mech_23 - E_brk_23 - Env_23;
    KE_25 == A*KE_24 + E_mech_24 - E_brk_24 - Env_24;
    KE_26 == A*KE_25 + E_mech_25 - E_brk_25 - Env_25;
    KE_27 == A*KE_26 + E_mech_26 - E_brk_26 - Env_26;
    KE_28 == A*KE_27 + E_mech_27 - E_brk_27 - Env_27;
    KE_29 == A*KE_28 + E_mech_28 - E_brk_28 - Env_28;
    KE_30 == A*KE_29 + E_mech_29 - E_brk_29 - Env_29;
    KE_31 == A*KE_30 + E_mech_30 - E_brk_30 - Env_30;
    KE_32 == A*KE_31 + E_mech_31 - E_brk_31 - Env_31;
    KE_33 == A*KE_32 + E_mech_32 - E_brk_32 - Env_32;
    KE_34 == A*KE_33 + E_mech_33 - E_brk_33 - Env_33;
    KE_35 == A*KE_34 + E_mech_34 - E_brk_34 - Env_34;
    KE_36 == A*KE_35 + E_mech_35 - E_brk_35 - Env_35;
    KE_37 == A*KE_36 + E_mech_36 - E_brk_36 - Env_36;
    KE_38 == A*KE_37 + E_mech_37 - E_brk_37 - Env_37;
    KE_39 == A*KE_38 + E_mech_38 - E_brk_38 - Env_38;
    KE_40 == A*KE_39 + E_mech_39 - E_brk_39 - Env_39;
    KE_41 == A*KE_40 + E_mech_40 - E_brk_40 - Env_40;
    KE_42 == A*KE_41 + E_mech_41 - E_brk_41 - Env_41;
    KE_43 == A*KE_42 + E_mech_42 - E_brk_42 - Env_42;
    KE_44 == A*KE_43 + E_mech_43 - E_brk_43 - Env_43;
    KE_45 == A*KE_44 + E_mech_44 - E_brk_44 - Env_44;
    KE_46 == A*KE_45 + E_mech_45 - E_brk_45 - Env_45;
    KE_47 == A*KE_46 + E_mech_46 - E_brk_46 - Env_46;
    KE_48 == A*KE_47 + E_mech_47 - E_brk_47 - Env_47;
    KE_49 == A*KE_48 + E_mech_48 - E_brk_48 - Env_48;
    KE_50 == A*KE_49 + E_mech_49 - E_brk_49 - Env_49;
    KE_51 == A*KE_50 + E_mech_50 - E_brk_50 - Env_50;
    KE_1 <= KE_max_1;
    KE_2 <= KE_max_2;
    KE_3 <= KE_max_3;
    KE_4 <= KE_max_4;
    KE_5 <= KE_max_5;
    KE_6 <= KE_max_6;
    KE_7 <= KE_max_7;
    KE_8 <= KE_max_8;
    KE_9 <= KE_max_9;
    KE_10 <= KE_max_10;
    KE_11 <= KE_max_11;
    KE_12 <= KE_max_12;
    KE_13 <= KE_max_13;
    KE_14 <= KE_max_14;
    KE_15 <= KE_max_15;
    KE_16 <= KE_max_16;
    KE_17 <= KE_max_17;
    KE_18 <= KE_max_18;
    KE_19 <= KE_max_19;
    KE_20 <= KE_max_20;
    KE_21 <= KE_max_21;
    KE_22 <= KE_max_22;
    KE_23 <= KE_max_23;
    KE_24 <= KE_max_24;
    KE_25 <= KE_max_25;
    KE_26 <= KE_max_26;
    KE_27 <= KE_max_27;
    KE_28 <= KE_max_28;
    KE_29 <= KE_max_29;
    KE_30 <= KE_max_30;
    KE_31 <= KE_max_31;
    KE_32 <= KE_max_32;
    KE_33 <= KE_max_33;
    KE_34 <= KE_max_34;
    KE_35 <= KE_max_35;
    KE_36 <= KE_max_36;
    KE_37 <= KE_max_37;
    KE_38 <= KE_max_38;
    KE_39 <= KE_max_39;
    KE_40 <= KE_max_40;
    KE_41 <= KE_max_41;
    KE_42 <= KE_max_42;
    KE_43 <= KE_max_43;
    KE_44 <= KE_max_44;
    KE_45 <= KE_max_45;
    KE_46 <= KE_max_46;
    KE_47 <= KE_max_47;
    KE_48 <= KE_max_48;
    KE_49 <= KE_max_49;
    KE_50 <= KE_max_50;
    KE_51 <= KE_max_51;
    KE_1 >= KE_min_1;
    KE_2 >= KE_min_2;
    KE_3 >= KE_min_3;
    KE_4 >= KE_min_4;
    KE_5 >= KE_min_5;
    KE_6 >= KE_min_6;
    KE_7 >= KE_min_7;
    KE_8 >= KE_min_8;
    KE_9 >= KE_min_9;
    KE_10 >= KE_min_10;
    KE_11 >= KE_min_11;
    KE_12 >= KE_min_12;
    KE_13 >= KE_min_13;
    KE_14 >= KE_min_14;
    KE_15 >= KE_min_15;
    KE_16 >= KE_min_16;
    KE_17 >= KE_min_17;
    KE_18 >= KE_min_18;
    KE_19 >= KE_min_19;
    KE_20 >= KE_min_20;
    KE_21 >= KE_min_21;
    KE_22 >= KE_min_22;
    KE_23 >= KE_min_23;
    KE_24 >= KE_min_24;
    KE_25 >= KE_min_25;
    KE_26 >= KE_min_26;
    KE_27 >= KE_min_27;
    KE_28 >= KE_min_28;
    KE_29 >= KE_min_29;
    KE_30 >= KE_min_30;
    KE_31 >= KE_min_31;
    KE_32 >= KE_min_32;
    KE_33 >= KE_min_33;
    KE_34 >= KE_min_34;
    KE_35 >= KE_min_35;
    KE_36 >= KE_min_36;
    KE_37 >= KE_min_37;
    KE_38 >= KE_min_38;
    KE_39 >= KE_min_39;
    KE_40 >= KE_min_40;
    KE_41 >= KE_min_41;
    KE_42 >= KE_min_42;
    KE_43 >= KE_min_43;
    KE_44 >= KE_min_44;
    KE_45 >= KE_min_45;
    KE_46 >= KE_min_46;
    KE_47 >= KE_min_47;
    KE_48 >= KE_min_48;
    KE_49 >= KE_min_49;
    KE_50 >= KE_min_50;
    KE_51 >= KE_min_51;
    E_mech_0 <= E_mech_max;
    E_mech_1 <= E_mech_max;
    E_mech_2 <= E_mech_max;
    E_mech_3 <= E_mech_max;
    E_mech_4 <= E_mech_max;
    E_mech_5 <= E_mech_max;
    E_mech_6 <= E_mech_max;
    E_mech_7 <= E_mech_max;
    E_mech_8 <= E_mech_max;
    E_mech_9 <= E_mech_max;
    E_mech_10 <= E_mech_max;
    E_mech_11 <= E_mech_max;
    E_mech_12 <= E_mech_max;
    E_mech_13 <= E_mech_max;
    E_mech_14 <= E_mech_max;
    E_mech_15 <= E_mech_max;
    E_mech_16 <= E_mech_max;
    E_mech_17 <= E_mech_max;
    E_mech_18 <= E_mech_max;
    E_mech_19 <= E_mech_max;
    E_mech_20 <= E_mech_max;
    E_mech_21 <= E_mech_max;
    E_mech_22 <= E_mech_max;
    E_mech_23 <= E_mech_max;
    E_mech_24 <= E_mech_max;
    E_mech_25 <= E_mech_max;
    E_mech_26 <= E_mech_max;
    E_mech_27 <= E_mech_max;
    E_mech_28 <= E_mech_max;
    E_mech_29 <= E_mech_max;
    E_mech_30 <= E_mech_max;
    E_mech_31 <= E_mech_max;
    E_mech_32 <= E_mech_max;
    E_mech_33 <= E_mech_max;
    E_mech_34 <= E_mech_max;
    E_mech_35 <= E_mech_max;
    E_mech_36 <= E_mech_max;
    E_mech_37 <= E_mech_max;
    E_mech_38 <= E_mech_max;
    E_mech_39 <= E_mech_max;
    E_mech_40 <= E_mech_max;
    E_mech_41 <= E_mech_max;
    E_mech_42 <= E_mech_max;
    E_mech_43 <= E_mech_max;
    E_mech_44 <= E_mech_max;
    E_mech_45 <= E_mech_max;
    E_mech_46 <= E_mech_max;
    E_mech_47 <= E_mech_max;
    E_mech_48 <= E_mech_max;
    E_mech_49 <= E_mech_max;
    E_mech_50 <= E_mech_max;
    E_mech_0 >= E_mech_min;
    E_mech_1 >= E_mech_min;
    E_mech_2 >= E_mech_min;
    E_mech_3 >= E_mech_min;
    E_mech_4 >= E_mech_min;
    E_mech_5 >= E_mech_min;
    E_mech_6 >= E_mech_min;
    E_mech_7 >= E_mech_min;
    E_mech_8 >= E_mech_min;
    E_mech_9 >= E_mech_min;
    E_mech_10 >= E_mech_min;
    E_mech_11 >= E_mech_min;
    E_mech_12 >= E_mech_min;
    E_mech_13 >= E_mech_min;
    E_mech_14 >= E_mech_min;
    E_mech_15 >= E_mech_min;
    E_mech_16 >= E_mech_min;
    E_mech_17 >= E_mech_min;
    E_mech_18 >= E_mech_min;
    E_mech_19 >= E_mech_min;
    E_mech_20 >= E_mech_min;
    E_mech_21 >= E_mech_min;
    E_mech_22 >= E_mech_min;
    E_mech_23 >= E_mech_min;
    E_mech_24 >= E_mech_min;
    E_mech_25 >= E_mech_min;
    E_mech_26 >= E_mech_min;
    E_mech_27 >= E_mech_min;
    E_mech_28 >= E_mech_min;
    E_mech_29 >= E_mech_min;
    E_mech_30 >= E_mech_min;
    E_mech_31 >= E_mech_min;
    E_mech_32 >= E_mech_min;
    E_mech_33 >= E_mech_min;
    E_mech_34 >= E_mech_min;
    E_mech_35 >= E_mech_min;
    E_mech_36 >= E_mech_min;
    E_mech_37 >= E_mech_min;
    E_mech_38 >= E_mech_min;
    E_mech_39 >= E_mech_min;
    E_mech_40 >= E_mech_min;
    E_mech_41 >= E_mech_min;
    E_mech_42 >= E_mech_min;
    E_mech_43 >= E_mech_min;
    E_mech_44 >= E_mech_min;
    E_mech_45 >= E_mech_min;
    E_mech_46 >= E_mech_min;
    E_mech_47 >= E_mech_min;
    E_mech_48 >= E_mech_min;
    E_mech_49 >= E_mech_min;
    E_mech_50 >= E_mech_min;
    E_brk_0 <= E_brk_max;
    E_brk_1 <= E_brk_max;
    E_brk_2 <= E_brk_max;
    E_brk_3 <= E_brk_max;
    E_brk_4 <= E_brk_max;
    E_brk_5 <= E_brk_max;
    E_brk_6 <= E_brk_max;
    E_brk_7 <= E_brk_max;
    E_brk_8 <= E_brk_max;
    E_brk_9 <= E_brk_max;
    E_brk_10 <= E_brk_max;
    E_brk_11 <= E_brk_max;
    E_brk_12 <= E_brk_max;
    E_brk_13 <= E_brk_max;
    E_brk_14 <= E_brk_max;
    E_brk_15 <= E_brk_max;
    E_brk_16 <= E_brk_max;
    E_brk_17 <= E_brk_max;
    E_brk_18 <= E_brk_max;
    E_brk_19 <= E_brk_max;
    E_brk_20 <= E_brk_max;
    E_brk_21 <= E_brk_max;
    E_brk_22 <= E_brk_max;
    E_brk_23 <= E_brk_max;
    E_brk_24 <= E_brk_max;
    E_brk_25 <= E_brk_max;
    E_brk_26 <= E_brk_max;
    E_brk_27 <= E_brk_max;
    E_brk_28 <= E_brk_max;
    E_brk_29 <= E_brk_max;
    E_brk_30 <= E_brk_max;
    E_brk_31 <= E_brk_max;
    E_brk_32 <= E_brk_max;
    E_brk_33 <= E_brk_max;
    E_brk_34 <= E_brk_max;
    E_brk_35 <= E_brk_max;
    E_brk_36 <= E_brk_max;
    E_brk_37 <= E_brk_max;
    E_brk_38 <= E_brk_max;
    E_brk_39 <= E_brk_max;
    E_brk_40 <= E_brk_max;
    E_brk_41 <= E_brk_max;
    E_brk_42 <= E_brk_max;
    E_brk_43 <= E_brk_max;
    E_brk_44 <= E_brk_max;
    E_brk_45 <= E_brk_max;
    E_brk_46 <= E_brk_max;
    E_brk_47 <= E_brk_max;
    E_brk_48 <= E_brk_max;
    E_brk_49 <= E_brk_max;
    E_brk_50 <= E_brk_max;
    E_brk_0 >= E_brk_min;
    E_brk_1 >= E_brk_min;
    E_brk_2 >= E_brk_min;
    E_brk_3 >= E_brk_min;
    E_brk_4 >= E_brk_min;
    E_brk_5 >= E_brk_min;
    E_brk_6 >= E_brk_min;
    E_brk_7 >= E_brk_min;
    E_brk_8 >= E_brk_min;
    E_brk_9 >= E_brk_min;
    E_brk_10 >= E_brk_min;
    E_brk_11 >= E_brk_min;
    E_brk_12 >= E_brk_min;
    E_brk_13 >= E_brk_min;
    E_brk_14 >= E_brk_min;
    E_brk_15 >= E_brk_min;
    E_brk_16 >= E_brk_min;
    E_brk_17 >= E_brk_min;
    E_brk_18 >= E_brk_min;
    E_brk_19 >= E_brk_min;
    E_brk_20 >= E_brk_min;
    E_brk_21 >= E_brk_min;
    E_brk_22 >= E_brk_min;
    E_brk_23 >= E_brk_min;
    E_brk_24 >= E_brk_min;
    E_brk_25 >= E_brk_min;
    E_brk_26 >= E_brk_min;
    E_brk_27 >= E_brk_min;
    E_brk_28 >= E_brk_min;
    E_brk_29 >= E_brk_min;
    E_brk_30 >= E_brk_min;
    E_brk_31 >= E_brk_min;
    E_brk_32 >= E_brk_min;
    E_brk_33 >= E_brk_min;
    E_brk_34 >= E_brk_min;
    E_brk_35 >= E_brk_min;
    E_brk_36 >= E_brk_min;
    E_brk_37 >= E_brk_min;
    E_brk_38 >= E_brk_min;
    E_brk_39 >= E_brk_min;
    E_brk_40 >= E_brk_min;
    E_brk_41 >= E_brk_min;
    E_brk_42 >= E_brk_min;
    E_brk_43 >= E_brk_min;
    E_brk_44 >= E_brk_min;
    E_brk_45 >= E_brk_min;
    E_brk_46 >= E_brk_min;
    E_brk_47 >= E_brk_min;
    E_brk_48 >= E_brk_min;
    E_brk_49 >= E_brk_min;
    E_brk_50 >= E_brk_min;
    abs(E_mech_0 - E_brk_0 - U_p) <= dU;
    abs(E_mech_1 - E_brk_1 - (E_mech_0 - E_brk_0)) <= dU;
    abs(E_mech_2 - E_brk_2 - (E_mech_1 - E_brk_1)) <= dU;
    abs(E_mech_3 - E_brk_3 - (E_mech_2 - E_brk_2)) <= dU;
    abs(E_mech_4 - E_brk_4 - (E_mech_3 - E_brk_3)) <= dU;
    abs(E_mech_5 - E_brk_5 - (E_mech_4 - E_brk_4)) <= dU;
    abs(E_mech_6 - E_brk_6 - (E_mech_5 - E_brk_5)) <= dU;
    abs(E_mech_7 - E_brk_7 - (E_mech_6 - E_brk_6)) <= dU;
    abs(E_mech_8 - E_brk_8 - (E_mech_7 - E_brk_7)) <= dU;
    abs(E_mech_9 - E_brk_9 - (E_mech_8 - E_brk_8)) <= dU;
    abs(E_mech_10 - E_brk_10 - (E_mech_9 - E_brk_9)) <= dU;
    abs(E_mech_11 - E_brk_11 - (E_mech_10 - E_brk_10)) <= dU;
    abs(E_mech_12 - E_brk_12 - (E_mech_11 - E_brk_11)) <= dU;
    abs(E_mech_13 - E_brk_13 - (E_mech_12 - E_brk_12)) <= dU;
    abs(E_mech_14 - E_brk_14 - (E_mech_13 - E_brk_13)) <= dU;
    abs(E_mech_15 - E_brk_15 - (E_mech_14 - E_brk_14)) <= dU;
    abs(E_mech_16 - E_brk_16 - (E_mech_15 - E_brk_15)) <= dU;
    abs(E_mech_17 - E_brk_17 - (E_mech_16 - E_brk_16)) <= dU;
    abs(E_mech_18 - E_brk_18 - (E_mech_17 - E_brk_17)) <= dU;
    abs(E_mech_19 - E_brk_19 - (E_mech_18 - E_brk_18)) <= dU;
    abs(E_mech_20 - E_brk_20 - (E_mech_19 - E_brk_19)) <= dU;
    abs(E_mech_21 - E_brk_21 - (E_mech_20 - E_brk_20)) <= dU;
    abs(E_mech_22 - E_brk_22 - (E_mech_21 - E_brk_21)) <= dU;
    abs(E_mech_23 - E_brk_23 - (E_mech_22 - E_brk_22)) <= dU;
    abs(E_mech_24 - E_brk_24 - (E_mech_23 - E_brk_23)) <= dU;
    abs(E_mech_25 - E_brk_25 - (E_mech_24 - E_brk_24)) <= dU;
    abs(E_mech_26 - E_brk_26 - (E_mech_25 - E_brk_25)) <= dU;
    abs(E_mech_27 - E_brk_27 - (E_mech_26 - E_brk_26)) <= dU;
    abs(E_mech_28 - E_brk_28 - (E_mech_27 - E_brk_27)) <= dU;
    abs(E_mech_29 - E_brk_29 - (E_mech_28 - E_brk_28)) <= dU;
    abs(E_mech_30 - E_brk_30 - (E_mech_29 - E_brk_29)) <= dU;
    abs(E_mech_31 - E_brk_31 - (E_mech_30 - E_brk_30)) <= dU;
    abs(E_mech_32 - E_brk_32 - (E_mech_31 - E_brk_31)) <= dU;
    abs(E_mech_33 - E_brk_33 - (E_mech_32 - E_brk_32)) <= dU;
    abs(E_mech_34 - E_brk_34 - (E_mech_33 - E_brk_33)) <= dU;
    abs(E_mech_35 - E_brk_35 - (E_mech_34 - E_brk_34)) <= dU;
    abs(E_mech_36 - E_brk_36 - (E_mech_35 - E_brk_35)) <= dU;
    abs(E_mech_37 - E_brk_37 - (E_mech_36 - E_brk_36)) <= dU;
    abs(E_mech_38 - E_brk_38 - (E_mech_37 - E_brk_37)) <= dU;
    abs(E_mech_39 - E_brk_39 - (E_mech_38 - E_brk_38)) <= dU;
    abs(E_mech_40 - E_brk_40 - (E_mech_39 - E_brk_39)) <= dU;
    abs(E_mech_41 - E_brk_41 - (E_mech_40 - E_brk_40)) <= dU;
    abs(E_mech_42 - E_brk_42 - (E_mech_41 - E_brk_41)) <= dU;
    abs(E_mech_43 - E_brk_43 - (E_mech_42 - E_brk_42)) <= dU;
    abs(E_mech_44 - E_brk_44 - (E_mech_43 - E_brk_43)) <= dU;
    abs(E_mech_45 - E_brk_45 - (E_mech_44 - E_brk_44)) <= dU;
    abs(E_mech_46 - E_brk_46 - (E_mech_45 - E_brk_45)) <= dU;
    abs(E_mech_47 - E_brk_47 - (E_mech_46 - E_brk_46)) <= dU;
    abs(E_mech_48 - E_brk_48 - (E_mech_47 - E_brk_47)) <= dU;
    abs(E_mech_49 - E_brk_49 - (E_mech_48 - E_brk_48)) <= dU;
    abs(E_mech_50 - E_brk_50 - (E_mech_49 - E_brk_49)) <= dU;
cvx_end
vars.E_brk_0 = E_brk_0;
vars.E_brk_1 = E_brk_1;
vars.E_brk{1} = E_brk_1;
vars.E_brk_2 = E_brk_2;
vars.E_brk{2} = E_brk_2;
vars.E_brk_3 = E_brk_3;
vars.E_brk{3} = E_brk_3;
vars.E_brk_4 = E_brk_4;
vars.E_brk{4} = E_brk_4;
vars.E_brk_5 = E_brk_5;
vars.E_brk{5} = E_brk_5;
vars.E_brk_6 = E_brk_6;
vars.E_brk{6} = E_brk_6;
vars.E_brk_7 = E_brk_7;
vars.E_brk{7} = E_brk_7;
vars.E_brk_8 = E_brk_8;
vars.E_brk{8} = E_brk_8;
vars.E_brk_9 = E_brk_9;
vars.E_brk{9} = E_brk_9;
vars.E_brk_10 = E_brk_10;
vars.E_brk{10} = E_brk_10;
vars.E_brk_11 = E_brk_11;
vars.E_brk{11} = E_brk_11;
vars.E_brk_12 = E_brk_12;
vars.E_brk{12} = E_brk_12;
vars.E_brk_13 = E_brk_13;
vars.E_brk{13} = E_brk_13;
vars.E_brk_14 = E_brk_14;
vars.E_brk{14} = E_brk_14;
vars.E_brk_15 = E_brk_15;
vars.E_brk{15} = E_brk_15;
vars.E_brk_16 = E_brk_16;
vars.E_brk{16} = E_brk_16;
vars.E_brk_17 = E_brk_17;
vars.E_brk{17} = E_brk_17;
vars.E_brk_18 = E_brk_18;
vars.E_brk{18} = E_brk_18;
vars.E_brk_19 = E_brk_19;
vars.E_brk{19} = E_brk_19;
vars.E_brk_20 = E_brk_20;
vars.E_brk{20} = E_brk_20;
vars.E_brk_21 = E_brk_21;
vars.E_brk{21} = E_brk_21;
vars.E_brk_22 = E_brk_22;
vars.E_brk{22} = E_brk_22;
vars.E_brk_23 = E_brk_23;
vars.E_brk{23} = E_brk_23;
vars.E_brk_24 = E_brk_24;
vars.E_brk{24} = E_brk_24;
vars.E_brk_25 = E_brk_25;
vars.E_brk{25} = E_brk_25;
vars.E_brk_26 = E_brk_26;
vars.E_brk{26} = E_brk_26;
vars.E_brk_27 = E_brk_27;
vars.E_brk{27} = E_brk_27;
vars.E_brk_28 = E_brk_28;
vars.E_brk{28} = E_brk_28;
vars.E_brk_29 = E_brk_29;
vars.E_brk{29} = E_brk_29;
vars.E_brk_30 = E_brk_30;
vars.E_brk{30} = E_brk_30;
vars.E_brk_31 = E_brk_31;
vars.E_brk{31} = E_brk_31;
vars.E_brk_32 = E_brk_32;
vars.E_brk{32} = E_brk_32;
vars.E_brk_33 = E_brk_33;
vars.E_brk{33} = E_brk_33;
vars.E_brk_34 = E_brk_34;
vars.E_brk{34} = E_brk_34;
vars.E_brk_35 = E_brk_35;
vars.E_brk{35} = E_brk_35;
vars.E_brk_36 = E_brk_36;
vars.E_brk{36} = E_brk_36;
vars.E_brk_37 = E_brk_37;
vars.E_brk{37} = E_brk_37;
vars.E_brk_38 = E_brk_38;
vars.E_brk{38} = E_brk_38;
vars.E_brk_39 = E_brk_39;
vars.E_brk{39} = E_brk_39;
vars.E_brk_40 = E_brk_40;
vars.E_brk{40} = E_brk_40;
vars.E_brk_41 = E_brk_41;
vars.E_brk{41} = E_brk_41;
vars.E_brk_42 = E_brk_42;
vars.E_brk{42} = E_brk_42;
vars.E_brk_43 = E_brk_43;
vars.E_brk{43} = E_brk_43;
vars.E_brk_44 = E_brk_44;
vars.E_brk{44} = E_brk_44;
vars.E_brk_45 = E_brk_45;
vars.E_brk{45} = E_brk_45;
vars.E_brk_46 = E_brk_46;
vars.E_brk{46} = E_brk_46;
vars.E_brk_47 = E_brk_47;
vars.E_brk{47} = E_brk_47;
vars.E_brk_48 = E_brk_48;
vars.E_brk{48} = E_brk_48;
vars.E_brk_49 = E_brk_49;
vars.E_brk{49} = E_brk_49;
vars.E_brk_50 = E_brk_50;
vars.E_brk{50} = E_brk_50;
vars.E_mech_0 = E_mech_0;
vars.E_mech_1 = E_mech_1;
vars.E_mech{1} = E_mech_1;
vars.E_mech_2 = E_mech_2;
vars.E_mech{2} = E_mech_2;
vars.E_mech_3 = E_mech_3;
vars.E_mech{3} = E_mech_3;
vars.E_mech_4 = E_mech_4;
vars.E_mech{4} = E_mech_4;
vars.E_mech_5 = E_mech_5;
vars.E_mech{5} = E_mech_5;
vars.E_mech_6 = E_mech_6;
vars.E_mech{6} = E_mech_6;
vars.E_mech_7 = E_mech_7;
vars.E_mech{7} = E_mech_7;
vars.E_mech_8 = E_mech_8;
vars.E_mech{8} = E_mech_8;
vars.E_mech_9 = E_mech_9;
vars.E_mech{9} = E_mech_9;
vars.E_mech_10 = E_mech_10;
vars.E_mech{10} = E_mech_10;
vars.E_mech_11 = E_mech_11;
vars.E_mech{11} = E_mech_11;
vars.E_mech_12 = E_mech_12;
vars.E_mech{12} = E_mech_12;
vars.E_mech_13 = E_mech_13;
vars.E_mech{13} = E_mech_13;
vars.E_mech_14 = E_mech_14;
vars.E_mech{14} = E_mech_14;
vars.E_mech_15 = E_mech_15;
vars.E_mech{15} = E_mech_15;
vars.E_mech_16 = E_mech_16;
vars.E_mech{16} = E_mech_16;
vars.E_mech_17 = E_mech_17;
vars.E_mech{17} = E_mech_17;
vars.E_mech_18 = E_mech_18;
vars.E_mech{18} = E_mech_18;
vars.E_mech_19 = E_mech_19;
vars.E_mech{19} = E_mech_19;
vars.E_mech_20 = E_mech_20;
vars.E_mech{20} = E_mech_20;
vars.E_mech_21 = E_mech_21;
vars.E_mech{21} = E_mech_21;
vars.E_mech_22 = E_mech_22;
vars.E_mech{22} = E_mech_22;
vars.E_mech_23 = E_mech_23;
vars.E_mech{23} = E_mech_23;
vars.E_mech_24 = E_mech_24;
vars.E_mech{24} = E_mech_24;
vars.E_mech_25 = E_mech_25;
vars.E_mech{25} = E_mech_25;
vars.E_mech_26 = E_mech_26;
vars.E_mech{26} = E_mech_26;
vars.E_mech_27 = E_mech_27;
vars.E_mech{27} = E_mech_27;
vars.E_mech_28 = E_mech_28;
vars.E_mech{28} = E_mech_28;
vars.E_mech_29 = E_mech_29;
vars.E_mech{29} = E_mech_29;
vars.E_mech_30 = E_mech_30;
vars.E_mech{30} = E_mech_30;
vars.E_mech_31 = E_mech_31;
vars.E_mech{31} = E_mech_31;
vars.E_mech_32 = E_mech_32;
vars.E_mech{32} = E_mech_32;
vars.E_mech_33 = E_mech_33;
vars.E_mech{33} = E_mech_33;
vars.E_mech_34 = E_mech_34;
vars.E_mech{34} = E_mech_34;
vars.E_mech_35 = E_mech_35;
vars.E_mech{35} = E_mech_35;
vars.E_mech_36 = E_mech_36;
vars.E_mech{36} = E_mech_36;
vars.E_mech_37 = E_mech_37;
vars.E_mech{37} = E_mech_37;
vars.E_mech_38 = E_mech_38;
vars.E_mech{38} = E_mech_38;
vars.E_mech_39 = E_mech_39;
vars.E_mech{39} = E_mech_39;
vars.E_mech_40 = E_mech_40;
vars.E_mech{40} = E_mech_40;
vars.E_mech_41 = E_mech_41;
vars.E_mech{41} = E_mech_41;
vars.E_mech_42 = E_mech_42;
vars.E_mech{42} = E_mech_42;
vars.E_mech_43 = E_mech_43;
vars.E_mech{43} = E_mech_43;
vars.E_mech_44 = E_mech_44;
vars.E_mech{44} = E_mech_44;
vars.E_mech_45 = E_mech_45;
vars.E_mech{45} = E_mech_45;
vars.E_mech_46 = E_mech_46;
vars.E_mech{46} = E_mech_46;
vars.E_mech_47 = E_mech_47;
vars.E_mech{47} = E_mech_47;
vars.E_mech_48 = E_mech_48;
vars.E_mech{48} = E_mech_48;
vars.E_mech_49 = E_mech_49;
vars.E_mech{49} = E_mech_49;
vars.E_mech_50 = E_mech_50;
vars.E_mech{50} = E_mech_50;
vars.KE_1 = KE_1;
vars.KE{1} = KE_1;
vars.KE_2 = KE_2;
vars.KE{2} = KE_2;
vars.KE_3 = KE_3;
vars.KE{3} = KE_3;
vars.KE_4 = KE_4;
vars.KE{4} = KE_4;
vars.KE_5 = KE_5;
vars.KE{5} = KE_5;
vars.KE_6 = KE_6;
vars.KE{6} = KE_6;
vars.KE_7 = KE_7;
vars.KE{7} = KE_7;
vars.KE_8 = KE_8;
vars.KE{8} = KE_8;
vars.KE_9 = KE_9;
vars.KE{9} = KE_9;
vars.KE_10 = KE_10;
vars.KE{10} = KE_10;
vars.KE_11 = KE_11;
vars.KE{11} = KE_11;
vars.KE_12 = KE_12;
vars.KE{12} = KE_12;
vars.KE_13 = KE_13;
vars.KE{13} = KE_13;
vars.KE_14 = KE_14;
vars.KE{14} = KE_14;
vars.KE_15 = KE_15;
vars.KE{15} = KE_15;
vars.KE_16 = KE_16;
vars.KE{16} = KE_16;
vars.KE_17 = KE_17;
vars.KE{17} = KE_17;
vars.KE_18 = KE_18;
vars.KE{18} = KE_18;
vars.KE_19 = KE_19;
vars.KE{19} = KE_19;
vars.KE_20 = KE_20;
vars.KE{20} = KE_20;
vars.KE_21 = KE_21;
vars.KE{21} = KE_21;
vars.KE_22 = KE_22;
vars.KE{22} = KE_22;
vars.KE_23 = KE_23;
vars.KE{23} = KE_23;
vars.KE_24 = KE_24;
vars.KE{24} = KE_24;
vars.KE_25 = KE_25;
vars.KE{25} = KE_25;
vars.KE_26 = KE_26;
vars.KE{26} = KE_26;
vars.KE_27 = KE_27;
vars.KE{27} = KE_27;
vars.KE_28 = KE_28;
vars.KE{28} = KE_28;
vars.KE_29 = KE_29;
vars.KE{29} = KE_29;
vars.KE_30 = KE_30;
vars.KE{30} = KE_30;
vars.KE_31 = KE_31;
vars.KE{31} = KE_31;
vars.KE_32 = KE_32;
vars.KE{32} = KE_32;
vars.KE_33 = KE_33;
vars.KE{33} = KE_33;
vars.KE_34 = KE_34;
vars.KE{34} = KE_34;
vars.KE_35 = KE_35;
vars.KE{35} = KE_35;
vars.KE_36 = KE_36;
vars.KE{36} = KE_36;
vars.KE_37 = KE_37;
vars.KE{37} = KE_37;
vars.KE_38 = KE_38;
vars.KE{38} = KE_38;
vars.KE_39 = KE_39;
vars.KE{39} = KE_39;
vars.KE_40 = KE_40;
vars.KE{40} = KE_40;
vars.KE_41 = KE_41;
vars.KE{41} = KE_41;
vars.KE_42 = KE_42;
vars.KE{42} = KE_42;
vars.KE_43 = KE_43;
vars.KE{43} = KE_43;
vars.KE_44 = KE_44;
vars.KE{44} = KE_44;
vars.KE_45 = KE_45;
vars.KE{45} = KE_45;
vars.KE_46 = KE_46;
vars.KE{46} = KE_46;
vars.KE_47 = KE_47;
vars.KE{47} = KE_47;
vars.KE_48 = KE_48;
vars.KE{48} = KE_48;
vars.KE_49 = KE_49;
vars.KE{49} = KE_49;
vars.KE_50 = KE_50;
vars.KE{50} = KE_50;
vars.KE_51 = KE_51;
vars.KE{51} = KE_51;
status.cvx_status = cvx_status;
% Provide a drop-in replacement for csolve.
status.optval = cvx_optval;
status.converged = strcmp(cvx_status, 'Solved');
