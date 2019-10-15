%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: ftemp_function.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ftemp = ftemp_function(ftemp_input)    
    T = ftemp_inputs(1);
    ftemp = Idstd*(((Tstd/T)^K_temp));
end  