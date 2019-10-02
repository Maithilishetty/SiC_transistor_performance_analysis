%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: ftemp_function.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ftemp = ftemp_function(ftemp_inputs)
global Idstd Tstd beta
    
    T = ftemp_inputs(1);
    Vgs = ftemp_inputs(2);
    Vds = ftemp_inputs(3);
    
    if (Vgs < Vth)
        Idstd = 0;
    elseif ((Vds > 0) && (Vds < ((Vgs - Vth)/(1+a))))
        Idstd = k * (((Vgs-Vth)*Vds) - (((1+a)*Vds^2)/2))*(1+lambda*Vds);
    elseif ((Vds > (Vgs-Vth)/(1+a)) &&  ((Vgs-Vth)/(1+a) > 0))
        Idstd = (k / 2*(1+a)) * (1+lambda*Vds) * (Vgs - Vth)^2;
    end
    
    ftemp = Idstd*(((T/Tstd)^beta) - ((T/Tstd)^(-1.5)));
end  