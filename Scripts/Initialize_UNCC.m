% load('UNCC_Sim_Variables_City.mat')         %   Load UNCC variables
load('UNCC_Sim_Variables_R29_Half.mat')
load('stopping_profile.mat')
stop_prof = stopping_profile;               %   Baseline stopping profile
load('Max_Torque_Curve.mat')                %   MPC max torque limit
load(strcat('Traffic_Data_R29_',num2str(T),'.mat'))        %   Load lead vehicle data
% load(strcat('City_Stoch_Intersection_',num2str(L),'.mat'))      %   Load intersection data
% load(strcat('City_A_Intersection_',num2str(L),'.mat'))      %   Load intersection data
load('R29_Intersection_Data.mat')
Int_ran = 1000;
T_mode = 1;
route = Route_Var(UNCC);
Int.Sig_in(:,:,1) = Int.Cs;
Int.Sig_in(:,:,2) = Int.C;
Int.Sig_in(:,:,3) = Int.G;
Int.Sig_in(:,:,4) = Int.R;
cga_Horiz           = 20;
cg_time_step        = 0.2;
cgb_Horiz           = 6;
cgb_Horiz_Param     = cg_time_step*ones(1, cgb_Horiz/cg_time_step);
cga_Horiz_Param     = cg_time_step*ones(1, cga_Horiz/cg_time_step);
V2V_FLAG            = 0;
lead_veh_acc        = -0.2;
sig_info(:,:,1) = Int.C;    
sig_info(:,:,2) = Int.G;    
sig_info(:,:,3) = Int.Cs;
Buffer(:,1) = Int.Y;    
Buffer(:,2) = Int.Rc;
Int.G(isnan(Int.G)) = 100;
Int.R(isnan(Int.R)) = 100;
Int.C(isnan(Int.C)) = 200;
Int.Cs(isnan(Int.Cs)) = max(max(Int.Cs))+200;
