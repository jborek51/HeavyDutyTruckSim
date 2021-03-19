%% UNCC Parameters 
T_mode = 0;                                                 %   Traffic mode: 1 = on, 0 = off
load('Max_Torque_Curve.mat')                                %   MPC max torque limit
load('UNCC_Sim_Variables_R29_Half.mat')
UNCC.Z_vec = zeros(length(UNCC.Z_vec),1);
UNCC.theta_vec = zeros(length(UNCC.Z_vec),1);
UNCC.V_lim = 20*ones(length(UNCC.Z_vec),1);
load(strcat('Traffic_Data_R29_',num2str(T),'.mat'))         %   Load lead vehicle data
load('R29_Intersection_Data.mat')
load('stopping_profile.mat')
stop_prof = stopping_profile;                               %   Baseline stopping profile
t_stop_adj = 999;                                           %   Baseline override of stop time
sig_info(:,:,1) = Int.C;    
sig_info(:,:,2) = Int.G;    
sig_info(:,:,3) = Int.Cs;
