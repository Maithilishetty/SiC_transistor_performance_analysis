%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: etemp_function.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function etemp = etemp_function(etemp_input)
    global Tstd alpha
    Tstd =25;
    alpha=-0.007;
    T = etemp_input;   
    etemp = (T - Tstd) * alpha;
end  