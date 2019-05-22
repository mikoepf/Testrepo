% errorIntegrator = [];

%% Test for case 1 
%simulating highway speeding up
v_max = 25;
acc = 2;
changeacc = 0;
v_0 = 5;
v_min = 2;
% errorIntegrator = [];
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');


%% Test for case 2 
%simulating highway speeding up - in negative direction
v_max = -2;
acc = -2;
v_0 = -5;
v_min = -25;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

%% Test for case 3 
%simulating highway slowing down
v_max = 25;
acc = -2;
v_0 = 20;
v_min = 2;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

%% test for case 4 
%simulating highway slowing down
v_max = -2;
acc = 2;
v_0 = -20;
v_min = -25;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

%% test for case 5 
%starting the car
v_max = 25;
acc = 2;
v_0 = 0;
v_min = -25;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

%% test for case 6 
% starting the car 
%moving in the negative direction
v_max = 25;
acc = -3;
v_0 = 0;
v_min = -25;
changeacc = 0;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

%% test for case 7 
%acceleration is changing in time - first it is positive
%and then it becomes negative
v_max = 25;
v_0 = 0;
v_min = -25;
acc = 3;
changeacc = 3;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

%% test for case 8 
%acceleration is changing in time - first it is negative
%and then it becomes positive
v_max = 25;
v_0 = 0;
v_min = -25;
acc = -3;
changeacc = -3;
options = simset('SrcWorkspace','current');
sim('integrator_with_state_boundaries_check.slx',[],options);
% open ('integrator_with_state_boundaries_check.slx');
% sim ('integrator_with_state_boundaries_check.slx');

% save('errorIntegratorFile.mat','errorIntegrator')

