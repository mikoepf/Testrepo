% assertion callback function
%save initial conditions that caused error

currentErrorNumber = size(errorIntegrator);
nextIndex = currentErrorNumber(1,1) + 1;

errorIntegrator(nextIndex,1) = v_max; 
errorIntegrator(nextIndex,2) = acc; 
errorIntegrator(nextIndex,3) = changeacc; 
errorIntegrator(nextIndex,4) = v_0; 
errorIntegrator(nextIndex,5) = v_min; 
