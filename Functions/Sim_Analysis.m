function Sim = Sim_Analysis(Sim,Baseline)
%%  Parameters
rho_fuel = 835;         %   kg/L - Fuel density
rho_air = 1.2;          %   kg/m^3 - Air density
r_wh = 0.5003;          %   m Wheel radius 
A_f = 10.67;            %   m^2 - Frontal area 

%%  Fuel Calculations
Sim.t_tot = range(Sim.time);                            %   s - Total time of drive 
Sim.P_eng = Sim.T_eng.*Sim.N_eng;                     %   W - Engine power
Sim.m_dot_avg = mean(Sim.m_dot_fuel_TOT);               %   g/s - Average fuel consumption rate
Sim.P_avg = mean(Sim.P_eng);                            %   W - Average engine power
Sim.BSFC_avg = Sim.m_dot_avg/Sim.P_avg*3.6e6;         %   g/kWh - Average BSFC
Sim.fuel_tot = range(Sim.m_fuel_TOT);                   %   g - Total fuel consumed
Sim.V_fuel = Sim.fuel_tot/rho_fuel*.264;                %   gal - Volume of fuel consumed
Sim.mpg = range(Sim.X_veh)*6.21e-4/Sim.V_fuel;        %   mi/gal - Fuel economy
Sim.v_avg = mean(Sim.V_veh);                            %   m/s - Average Velocity

%%  Energy Calculations
Sim.T_wh_tot = Sim.T_wh-Sim.T_brk;
Sim.F_aero = .5*rho_air*A_f*Sim.Cd.*Sim.V_veh.^2;     %   N - Aerodynamic force
Sim.E_mech = cumtrapz(Sim.time,Sim.P_eng);            %   J - Mechanical energy
Sim.E_aero = cumtrapz(Sim.X_veh,Sim.F_aero);          %   J - Aerodynamic energy
for ii = 1:length(Sim.time)
    Sim.T_neg(ii) = min([0,Sim.T_wh(ii)]);
end
% Sim.E_brk = -cumtrapz(Sim.X_veh,Sim.T_neg/r_wh);      %   J - Brake energy
Sim.E_brk = cumtrapz(Sim.X_veh,Sim.T_brk/r_wh);      %   J - Brake energy
Sim.KE = .5*Sim.m_veh*Sim.V_veh.^2;                   %   J - Kinetic energy 
Sim.NumShift = 0;
for jj = 2:length(Sim.Gear)
    if Sim.Gear(jj) ~= Sim.Gear(jj-1)
        Sim.NumShift = Sim.NumShift + 1;
    end
end
Sim.NumShift = Sim.NumShift/(Sim.X_veh(end)*1e-3);
Sim.t_sol_avg = Sim.t_solve/(length(Sim.time)-1);
%%  Percent Differences
Sim.fuel_pct = (Sim.fuel_tot-Baseline.fuel_tot)...      %   Percent difference in fuel consumption 
    /Baseline.fuel_tot*100;
Sim.time_pct = (Sim.t_tot-Baseline.t_tot)...            %   Percent difference in trip time
    /Baseline.t_tot*100; 
Sim.E_mech_pct = (Sim.E_mech(end)...                    %   Percent difference in mechanical energy 
    -Baseline.E_mech(end))/Baseline.E_mech(end)*100;
Sim.E_aero_pct = (Sim.E_aero(end)...                    %   Percent difference in aerodynamic energy 
-Baseline.E_aero(end))/Baseline.E_aero(end)*100;
Sim.E_brk_pct = (Sim.E_brk(end)...                      %   Percent difference in brake energy 
    -Baseline.E_brk(end))/Baseline.E_brk(end)*100;
Sim.E_BSFC_pct = (Sim.BSFC_avg...                       %   Percent difference in average BSFC 
    -Baseline.BSFC_avg)/Baseline.BSFC_avg*100;
disp(Sim.fuel_pct);    disp(Sim.time_pct);
