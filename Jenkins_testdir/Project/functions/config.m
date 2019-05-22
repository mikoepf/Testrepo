if ~exist('project')
    
    clear;
    addpath .
    addpath actors
    addpath controller
    addpath dynamic
    addpath sensors
    addpath kontrol

    load bus;
    
    %specification of simulation parameters
    %definition of times
    Ts = 0.01;
    Tsim = 20;
    %pyhsical parameters
    g = -9.81; %gravitationial acceleration
    %boundaries on state and inputs
    boundary.vel_x_min = -10;
    boundary.vel_x_max = 20;
    boundary.vel_y_min = -10;
    boundary.vel_y_max = 15;
    boundary.acc_x_min = -3;
    boundary.acc_x_max = 5;
    boundary.acc_y_min = -5;
    boundary.acc_y_max = 12;


    %state definitions
    init.pos_x = 100;
    init.vel_x = 10;
    init.pos_y = 20;
    init.vel_y = 10;
    
% elseif strcmp(project,'test_Thales')
%     addpath .
%     %specification of simulation parameters
%     %definition of times
%     Ts = 0.01;
%     Tsim = 20;
%     %pyhsical parameters
%     g = -9.81; %gravitationial acceleration
    
else
    addpath .
    %specification of simulation parameters
    %definition of times
    Ts = 0.01;
    Tsim = 20;
    %pyhsical parameters
    g = -9.81; %gravitationial acceleration
end