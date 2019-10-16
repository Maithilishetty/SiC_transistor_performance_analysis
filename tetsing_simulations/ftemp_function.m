%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: ftemp_function.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ftemp = ftemp_function(ftemp_input)    
    global Idstd Tstd K_temp
    Idstd=90;
    Tstd= 25;
    K_temp=1.11;
    T = ftemp_input;
    ftemp = Idstd*(((Tstd/T)^K_temp));
end  