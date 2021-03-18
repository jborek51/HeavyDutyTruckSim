%%  PSU Parameters
load('StaticGearMap_V5.mat')
load NegativeTorque.mat
load('wheelTorqueMax.mat')
best_gear(isnan(best_gear)) = 12;
t_acc = tau_acc;