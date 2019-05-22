clear;
import matlab.unittest.TestRunner;

%navigate to right folder
cd ..

%relative path to the simulink models that are tested
addpath(fullfile(pwd,'.\functions\dynamic'));
addpath(fullfile(pwd,'.\functions'));

%navigate back
cd test
addpath .
% addpath integrator

cd integrator
addpath .

%run test suite for integrator
%run all the scripts 
try
    resultsIntegrator = runtests;
    display(resultsIntegrator);
catch e
    exit (1);
end

cd ..
cd double_integrator
addpath .

%run test suite for integrator with state boundaries
try
    resultsDoubleIntegrator = runtests;
    display(resultsDoubleIntegrator);
catch e
    exit(1);
end

cd ..
% exit(any([resultsIntegrator.Failed, resultsDoubleIntegrator.Failed]));