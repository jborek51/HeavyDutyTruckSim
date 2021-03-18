%% ARPA-E NEXTCAR
% -------------------------------------------------------------------------
% Initialization file for the calibration of the raditator model
% Author:           S.Stockar
% Cereated:         02/12/2018
% Last Modified:    03/01/2018
%% =========================Coolant Flow Network============================
load CFN_Volvo2;                            % Look-up table Data for the CFN
CFN.pulley_ratio = 1.406;
CFN.table_TOT_flow_rates = mdot_cTOT_fit;   % Mass Flow Rate Total - kg/s       
CFN.table_RAD_flow_rates = mdot_rad_fit;    % Mass Flow Rate Radiator - kg/s
CFN.table_pump_speed = w_pump_fit;          % Pump Speed - RPM
CFN.table_ITW_pos = Th_pos;                 % Thermostat Position - Percentage
clear mdot_cTOT_fit mdot_rad_fit w_pump_fit Th_pos

%% =====================Single-Mass Engine Thermal Model========================
ETM.C1      = 50000;       % Thermal Mass [J/K]
ETM.UA_1a   = 0;            % Conduction with ambient[W/K]

%% ========================Simplified RAD Thermal Model===========================
% % Radiator Geometrical Data

RAD.A_face = 0.1166*15;            % Radiator front area
RAD.TM_gain = 20;
RAD.C_c = 1767*RAD.TM_gain;                 % Thermal mass - coolant side
RAD.C_w = 6.843*RAD.TM_gain;                % Thermal mass - walls side
RAD.C_s = 3914*RAD.TM_gain;                 % Thermal mass - fins side
RAD.Air_rho = 1.225;            % Air Density - kg/m^3

% Radiator Heat Transfer Model Parameters (See Description of Equations)
RAD.C_f = 206.9/6;
RAD.beta = 0.8*2;
RAD.C1 = 1.5*9.3181e-04/1.3;
RAD.C2 = 1.23e-05/2.5;
RAD.C3 = 0.007/2.5;
RAD.C_convMIN =0;


%% ========================Thermostat Model===========================
% Load Look-up Table Data for DS2013 90C Mechanical Thermostat
load TSTAT_Volvo_Data.mat

%% ==========================Fan Model================================
% Load Look-up Table Data for DS2013 Radiator and TOC Fan
load RAD_Air_Speed
FAN.Vspd = v_air_fit;                 % Vehicle Speed [m/s]
FAN.N = N_fan_fit;                    % Fan Speed [rpm]
FAN.RAD_AGS_o = mdot_air_rad_fit;     % Radiator Face Velocity, AGS Open [kg/s]
FAN.pulley_ratio = 1.15;                
clear mdot_air_rad_fit N_fan_fit v_air_fit

load Fan_Power
FAN.Power = [0,P_plot];
FAN.Speed = [0,w_plot];
FAN.eta = 0.6*0.9; % Includes alternator and motor

%% ==========================EGR Model================================
load EGR_Heat

EGR.table_Heat_Transfered = Q_dot_EGR; % kW
EGR.Tau_Eng = T_eng_fit(:,1); % RPM
EGR.Omega_Eng = w_eng_fit(1,:);% Nm
EGR.tau = 5;
clear Q_dot_EGR Engine_Torque_EGR Engine_Speed_EGR T_eng_fit w_eng_fit