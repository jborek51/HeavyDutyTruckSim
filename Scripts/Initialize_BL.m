%% UNCC Parameters 
% load('CityA_Empty_SMT.mat')                                 %   Load SMT parameters 
T_mode = 1;                                                 %   Traffic mode: 1 = on, 0 = off
load('Max_Torque_Curve.mat')                %   MPC max torque limit
% load('UNCC_Sim_Variables_City_Half.mat')                    %   Load UNCC variables for half trailer 
load('UNCC_Sim_Variables_R29_Half.mat')
% load(strcat('Traffic_Data_City_',num2str(T),'.mat'))        %   Load lead vehicle data
load(strcat('Traffic_Data_R29_',num2str(T),'.mat'))        %   Load lead vehicle data
% load(strcat('City_Stoch_Intersection_',num2str(L),'.mat'))  %   Load intersection data
load('R29_Intersection_Data.mat')
load('stopping_profile.mat')
stop_prof = stopping_profile;                               %   Baseline stopping profile
t_stop_adj = 999;                                           %   Baseline override of stop time
sig_info(:,:,1) = Int.C;    
sig_info(:,:,2) = Int.G;    
sig_info(:,:,3) = Int.Cs;
UNCC.V_lim2 = (UNCC.V_lim).^2;