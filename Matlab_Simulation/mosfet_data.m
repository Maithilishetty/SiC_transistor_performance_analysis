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
global Vgs Vth Vds T
global a k 
global K_ftemp
global alpha lambda
% ----------------------------------------------------------------------- %
%                           Variables Declaration
% ----------------------------------------------------------------------- %

% Idstd declared in ftemp_function

Tstd = 25; %degree Celsius
a = 1.5; %Varies from 1 to 2
Vth = 2.1; %Min = 2V
Idstd = 90;
alpha = -0.007;
k = 0.156; %Vgs = 20V and Ids = 50A
K_ftemp = 1.11;
lambda = 0.05; %From paper Improved_MATLAB_Something
% ----------------------------------------------------------------------- %
%                             Function Callbacks
% ----------------------------------------------------------------------- %
sim('SiC_Mosfet_model_2018a')
%grapher