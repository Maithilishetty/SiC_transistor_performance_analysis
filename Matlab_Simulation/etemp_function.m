%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: etemp_function.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function etemp = etemp_function(etemp_input)
    global Tstd alpha
    T = etemp_input;   
    etemp = (T - Tstd) * alpha;
end  