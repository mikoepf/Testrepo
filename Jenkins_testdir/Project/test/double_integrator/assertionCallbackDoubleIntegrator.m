% assertion callback function
%save initial conditions that caused error

currentErrorNumber = size(errorDoubleIntegrator);
nextIndex = currentErrorNumber(1,1) + 1;

errorDoubleIntegrator(nextIndex,1) = acc; 
errorDoubleIntegrator(nextIndex,2) = pos_init; 
errorDoubleIntegrator(nextIndex,3) = vel_init; 
errorDoubleIntegrator(nextIndex,4) = vel_min; 
errorDoubleIntegrator(nextIndex,5) = vel_max; 
errorDoubleIntegrator(nextIndex,6) = acc_min; 
errorDoubleIntegrator(nextIndex,7) = acc_max; 
errorDoubleIntegrator(nextIndex,8) = changeacc; 

