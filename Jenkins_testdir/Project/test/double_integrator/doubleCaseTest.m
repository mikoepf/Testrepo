% errorDoubleIntegrator = [];

% Tsim = 20;
% Ts = 0.01;
% g = -9.81;

%% Test for case 1 
%highway driving in positive direction with positive,
%non-zero initial value for position and velocity
acc = 2;
pos_init = 4;
vel_init = 10;
vel_min = 5;
vel_max = 100;
acc_min = -10;
acc_max = 10;
changeacc = 0;
% errorDoubleIntegrator = [];
options = simset('SrcWorkspace','current');
sim('double_integrator_check.slx',[],options);
% open ('double_integrator_check.slx');
% sim ('double_integrator_check.slx');

%% Test for case 2 
%highway driving in negative direction with negative,
%non-zero initial value for position and velocity
%please note! even though abs(vel_min)>abs(vel_maks) which means vehicle is
%moving faster in negative direction, vel_min<vel_maks
acc = -2;
pos_init = -4;
vel_init = -10;
vel_min = -100;
vel_max = -5;
acc_min = -10;
acc_max = 10;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('double_integrator_check.slx',[],options);
% open ('double_integrator_check.slx');
% sim ('double_integrator_check.slx');

%% Test for case 3
%begining of driving in positive direction - initial position and velocity equal
%to zero
acc = 1;
pos_init = 0;
vel_init = 0;
vel_min = -100;
vel_max = 100;
acc_min = -10;
acc_max = 10;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('double_integrator_check.slx',[],options);
% open ('double_integrator_check.slx');
% sim ('double_integrator_check.slx');

%% Test for case 4
%begining of driving in negative direction - initial position and velocity equal
%to zero
acc = -1;
pos_init = 0;
vel_init = 0;
vel_min = -100;
vel_max = 100;
acc_min = -10;
acc_max = 10;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('double_integrator_check.slx',[],options);
% open ('double_integrator_check.slx');
% sim ('double_integrator_check.slx');

%% Test for case 5 
%first driving in positive direction with maximum positive
%acceleration, after n seconds slowing down (negative acceleration)
acc = 2;
pos_init = 0;
vel_init = 0;
vel_min = -100;
vel_max = 100;
acc_min = -10;
acc_max = 10;
changeacc = 2;
options = simset('SrcWorkspace','current');
sim('double_integrator_check.slx',[],options);
% open ('double_integrator_check.slx');
% sim ('double_integrator_check.slx');

%% Test for case 6 
%first driving in negative direction with negative
%acceleration, after n seconds slowing down (pozitive acceleration)
acc = -10;
pos_init = 0;
vel_init = 0;
vel_min = -100;
vel_max = 100;
acc_min = -10;
acc_max = 10;
changeacc = -10;
options = simset('SrcWorkspace','current');
sim('double_integrator_check.slx',[],options);
% open ('double_integrator_check.slx');
% sim ('double_integrator_check.slx');

% save('errorDoubleIntegratorFile.mat','errorDoubleIntegrator')