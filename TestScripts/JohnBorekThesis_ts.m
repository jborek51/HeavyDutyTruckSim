%%  Test script for running heavy-duty vehicle simulations
clear; clc;
%%  Simulation scenario setup
simScenario = [3 1 0];                      %   Simulation scenario selection
startTimes = 9; %[9 11 13 15 17.1];             %   hr - Departure time in military time
Tscenarios = 1; %[1 5 10];                      %   Traffic scenarios to run
switch simScenario(1)
    case 1
        VEHICLECONTROLLER = 'Optimal';      %   Optimal Vehicle Controller
    case 2
        VEHICLECONTROLLER = 'Baseline';     %   Baseline Vehicle Controller
    case 3
        VEHICLECONTROLLER = 'Test';         %   Test Vehicle Controller
end
switch simScenario(2)
    case 1
        CONTROLLER = 'MPC_GP_v5';           %   Main Velocity Controller
    case 2
        CONTROLLER = 'MPC_GP_v5a';          %   Perfect SPaT Velocity Controller
    case 3
        CONTROLLER = 'MPC_GP_v6';           %   No breaking penalty objective function
    case 4
        CONTROLLER = 'MPC_v0';              %   No velocity planning/No MPC
end
if strcmpi(VEHICLECONTROLLER,'Optimal')
    INFRASTRUCTURE = CONTROLLER;
else
    INFRASTRUCTURE = 'BL';
end
%%  loop through simulation scenarios 
for ii = 1:numel(Tscenarios)
    for jj = 1:numel(startTimes)
        Simulink.sdi.clear
        t_start = startTimes(jj);                   %   hr - Departure time in military time
        T = Tscenarios(ii);                         %   Traffic file
        Initialize_Plant;                           %   Initialization of plant model
        Initialize_Gear;                            %   Initialize powertrain variables
        if strcmpi(VEHICLECONTROLLER,'Optimal')
            Initialize_UNCC;                        %   Initialize velocity controller
        elseif strcmpi(VEHICLECONTROLLER,'Baseline')
            Initialize_BL;                          %   Initialize velocity controller
        elseif strcmpi(VEHICLECONTROLLER,'Test')
            Initialize_Test;                        %   Initialize velocity controller
        end
        VEH.vehicleMass = 25000;                    %   kg - Vehicle mass - half trailer
        timeStep = 0.01;                            %   s - Simulation timestep
        x_0 = 0;    x_f = UNCC.X_vec(end);          %   m - Simulation start and finish position
        %% Simulate Model
        fprintf('Departure Time: %.1f;\tTraffic Density: %d\n',t_start,T)
        tic
        simWithMonitor('HeavyDutyTruckSim')
        runTime = toc;
        %%  Log Data
        tsc = signalcontainer(logsout);
        switch simScenario(1)
            case 1
                filename = strcat(CONTROLLER,'_R29_T',num2str(T),'_s',num2str(floor(t_start)),'.mat');
            case 2
                filename = strcat('BL_R29_T',num2str(T),'_s',num2str(floor(t_start)),'.mat');
            case 3
                filename = strcat('Test_R29_T',num2str(T),'_s',num2str(floor(t_start)),'.mat');
        end
        fpath = fullfile(fileparts(which('HeavyDutyTruckSim.prj')),'Results\',VEHICLECONTROLLER,'\');
        if simScenario(3) == 1
            save(strcat(fpath,filename),'tsc','T','t_start')
        end
    end
end
%%  Plots
% run Plot_Sim_Trajectory