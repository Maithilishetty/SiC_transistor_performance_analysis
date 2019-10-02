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

% ----------------------------------------------------------------------- %
%                           Variables Declaration
% ----------------------------------------------------------------------- %

% Idstd declared in ftemp_function

Tstd = 25; %degree Celsius

% Vgs
% Vth
% Vds

alpha = -0.007;


% ----------------------------------------------------------------------- %
%                             Function Callbacks
% ----------------------------------------------------------------------- %
sim('Mosfet_v0')
%grapher