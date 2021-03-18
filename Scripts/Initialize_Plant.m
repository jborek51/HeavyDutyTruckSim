%%  Initialization of Plant Model
% Constants
ENV.R       = 288;
ENV.gamma	= 1.35;
ENV.rhoAir  = 1.2; % air density, kg/m^3
ENV.g       = 9.81;

% Load Lookup Tables for Torque Production Model
load IMEP_FMEP_Maps_V4.mat
load IMEP_rev2
ICE.FMEP = torque;
ICE.IMEP = map;
ICE.torque = torque;
clear torque map
% Load Lookup Tables for VE Model
load VEModel.mat
ICE.air = air;
clear air
% Load Lookup Tables for Engine Fuel Consuption
load fuelConsumption3.mat
ICE.FC = FC;
clear FC

% Other Engine Parameters
ICE.fuel_Tau_p 	= 1/35/5; % time constant for fuel to torque dynamic
ICE.fuel_Tau_n  = ICE.fuel_Tau_p;
ICE.air_Tau_p 	= 0.06/5; % time constant for air dynamic
ICE.air_Tau_n 	= ICE.air_Tau_p; % time constant for air dynamic
ICE.zcyl        = 6; %number of cylinders
ICE.bore        = 0.131; %m
ICE.stroke      = 0.158; %m
ICE.Vd          = pi*(ICE.bore/2)^2*ICE.stroke*ICE.zcyl;
ICE.VIM         = 8.47298*1e-3; % Intake manifold Volume [m^3]
ICE.AFRlim      = 16;
ICE.Nmin        = 600;  % Idle speed [rpm]
ICE.Tref        = 2570; % Reference Torque for ECU control [Nm] 
ICE.Trefn       = 250; % Negative Reference Torque for ECU control [Nm]
ICE.Taux        = 0;

% Transmission Parameters
TRAN.numGears           = 12; 
TRAN.gears              = [11.73 9.21 7.09 5.57 4.34 3.41 2.69 2.12 1.63 1.28 1 0.7850];
TRAN.finalDrive         = 2.47;
TRAN.transEfficiency    = [0.972 .972 .974 .974 .985 .974 .982 .982 .984 .984 .995 .984];
TRAN.gearEfficiency     = 0.9626; %SS: I got this fomr Steve (Volvo),don't know what it is...
TRAN.T_Clutch           = 0.2;

% Vehicle Parameters
VEH.vehicleMass         = 35000; %vehicle mass in kg
VEH.inertiaWheel        = 100.6; %kg/m^3
VEH.inertiaAxle         = 1.87;%kg-m^3
VEH.inertiaCrank        = 4.29;%kg-m^3
VEH.inertiaClutch       = 0.14; %kg-m^3
VEH.intertiaAux         = 0.05; %kg-m^3
VEH.Cd                  = 0.49; %drag coefficient
VEH.Af                  = 10.67; % frontal area, m^2
VEH.tireRad             = 0.5003; %tire radius, m
VEH.CrrSteer            = .0067; %Rolling resistance coefficient
VEH.CrrDrive            = .00551;
VEH.CrrTrailer          = .00551;
VEH.weightDist          = [0.15 0.425 0.425]; %weight distribution, steer, driven, trailer
VEH.mu                  = 0.83; %tire/road friction coefficient

% Initialize Thermal Model Parameters - ENGINE THERMAL SUBSYSTEM
run Init_ENG_CoupledSystem
run Init_TMS_CoupledSystem

% Initial Conditions
ETM.T_init = 80+273;
RAD.T_init = 80+273;
TSTAT.IC = 0;
IC.v_veh    = 20;
IC.mdot_eng = 0; 
IC.T_eng    = 0;
IC.N        = 600;
