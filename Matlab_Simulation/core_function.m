%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: core_function.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ----------------------------------------------------------------------- %

function core = core_function(core_inputs)
    global Vth a k lambda
    
    Vgs = core_inputs(1);
    Vds = core_inputs(2);
    if (Vgs < Vth)
        Id = 0;
    elseif ((Vds > 0) && (Vds < ((Vgs - Vth)/(1+a))))
        Id = k * (((Vgs-Vth)*Vds) - (((1+a)*Vds^2)/2))*(1+lambda*Vds);
    elseif ((Vds > (Vgs-Vth)/(1+a)) &&  ((Vgs-Vth)/(1+a) > 0))
        Id = (k / 2*(1+a)) * (1+lambda*Vds) * (Vgs - Vth)^2;
    end
core = Id;
end

    