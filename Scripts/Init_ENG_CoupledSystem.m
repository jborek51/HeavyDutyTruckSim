%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Master Initialization File (Path Specified) %
% 
% Load Input Data for Model Simulation
%
% ENGINE THERMAL MODEL
%
% 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load Engine_HeatGen.mat

ENG.N = Nlin;       % Engine Speed - RPM
ENG.T = Tlin;       % Engine Torque - Nm
ENG.HR = q;         % Heat Rejection by Combustion - kW
ENG.FMEP = P_f;     % Heat Rejection by Friction - kW
% Make sure the heat generation is positive:
ENG.HR(ENG.HR<0) =0;
ENG.FMEP(ENG.FMEP<0)=0;

clear Nlin Tlin m_fuel q m_air P_f
