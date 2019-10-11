%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: grapher
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ----------------------------------------------------------------------- %

function core = core_funtion(core_inputs)

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

    