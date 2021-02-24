% -------------------------------------------------------------------------
% Initialization file for the Simplified Vehicle Model
% Author:           J.Borek
% Last Modified:    04/27/2020 by J.Borek
%--------------------------------------------------------------------------
parent = 'C:\Users\John Jr\Dropbox (UNC Charlotte)\John Borek - Research\Thesis\Model';
% parent = 'C:\Users\jbore\Dropbox (UNC Charlotte)\John Borek - Research\Thesis\Model\Results';
clearvars -except parent ii;    clc;
%% Initialize Model
CONTROLLER = 'MPC_GP_v5';                   %   Active Controller
% CONTROLLER = 'MPC_v0';                   %   Active Controller
startTimes = [9 11 13 15 17.1];             %   hr - Departure time in military time
Tscenarios = [1 5 10];                      %   Traffic scenarios to run
for ii = 1:numel(Tscenarios)
    for jj = 1:numel(startTimes)
%         if exist('slprj','dir');  rmdir('slprj','s');  end
        Simulink.sdi.clear
        t_start = startTimes(jj);                   %   hr - Departure time in military time
        T = Tscenarios(ii);  L = 1;                 %   Traffic and signal timing file
        Initialize_Plant;                           %   Initialization of plant model
        Initialize_Gear;                            %   Initialize powertrain variables
        Initialize_UNCC;                            %   Initialize velocity controller
        VEH.vehicleMass = 25000;                    %   kg - Vehicle mass - half trailer
        timeStep = 0.01;                            %   s - Simulation timestep
        x_0 = 0;    x_f = UNCC.X_vec(end);          %   m - Simulation start and finish position
        %% Simulate Model
        fprintf('Departure Time: %.1f;\tTraffic Density: %d\n',t_start,T)
        tic
        sim('HeavyDutyTruckSim')
        runTime = toc;
        %%  Log Data
        tsc = signalcontainer(logsout);
        Log_Data;   cond = 1;   test = 3;
%         while cond == 1
%             filename = strcat('Thesis_Traffic-',num2str(T),'_R29_v5_s',num2str(floor(t_start)),'_',num2str(test),'.mat');
%             if exist(filename,'file')
%                 test = test + 1;
%             else
%                 cond = 0;
%             end
%         end
        filename = strcat('Thesis_Traffic-',num2str(T),'_R29_v5_s',num2str(floor(t_start)),'_',num2str(test),'.mat');
        save(strcat('D:\Journal 2 Results\',filename),'Opt')
    end
end
%%
% load(strcat('D:\Journal 2 Results\BLnew','_T',num2str(T),'_R29_v100_',num2str(floor(t_start)),'.mat'));
% load(strcat('D:\Journal 2 Results\Thesis_Traffic-',num2str(T),'_R29_v5_s',num2str(floor(t_start)),'_4.mat'))
% Baseline = BL_Analysis(Baseline);
% Opt4 = Opt_Analysis(Opt,Baseline);
% load(strcat('D:\Journal 2 Results\Thesis_Traffic-',num2str(T),'_R29_v5_s',num2str(floor(t_start)),'_3.mat'))
% Opt3 = Opt_Analysis(Opt,Baseline);
% load(strcat('D:\Journal 2 Results\Thesis_Traffic-',num2str(T),'_R29_v5_s',num2str(floor(t_start)),'_2.mat'))
% Opt2 = Opt_Analysis(Opt,Baseline);
% load(strcat('D:\Journal 2 Results\Thesis_Traffic-',num2str(T),'_R29_v5_s',num2str(floor(t_start)),'_1.mat'))
% Opt1 = Opt_Analysis(Opt,Baseline);

%%  Plots
% run Plot_Sim_Trajectory