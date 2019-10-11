%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File name: mosfet_data.m
% Authors: Karthik K Bhat, Anoop Narayana, Maithili Shetty 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear all;
close all;

% ----------------------------------------------------------------------- %
%                             Global Variables
% ----------------------------------------------------------------------- %
global Idstd 
global Tstd
global Vgs Vth Vds
global a k 
global alpha beta lambda
global Cox
global L 

% ----------------------------------------------------------------------- %
%                           Variables Declaration
% ----------------------------------------------------------------------- %

% Idstd declared in ftemp_function

Tstd = 25; %degree Celsius

% Vgs
Vth = 3.5; %Min = 2V
% Vds
Idstd = 20;
alpha = -0.007;
Cox = 2.56 * 10^-9;
L =  0.96 * 10^-6;

% ----------------------------------------------------------------------- %
%                             Function Callbacks
% ----------------------------------------------------------------------- %
sim('Mosfet_v0')
%grapher