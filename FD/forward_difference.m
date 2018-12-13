clear all; clc;
%
%% Data
m_dot = 0.048; Tsteam = 403.15; Ast = 0.036; f = 0.01;
Aw = 4.068; Lt = 4; alpha = 20; cooling = 2e4; % problem data
stdev = [0.2, 0.15, 0.14, 0.12]; % input uncertainty
% stdev = [0.1, 0.05, 0.01, 0.005]; % input uncertainty

%% Individual Input Uncertainties: Sensitivity Coefficients
P = [m_dot, Tsteam, Ast, f, Aw, Lt, alpha, cooling];
Phigh = zeros(length(stdev), length(P));
for i = 1:length(stdev)
    Phigh(i,:) = P + P*stdev(i);
end

% nominal
E_nominal = csvread('nominal.csv',1,1);

%% 10
dS(1,1) = ( (csvread('m10.csv',1,1)-E_nominal)/(P(1)*stdev(1)) ) / (E_nominal/P(1))
dS(1,2) = ( (csvread('T10.csv',1,1)-E_nominal)/(P(2)*stdev(1)) ) / (E_nominal/P(2))
dS(1,3) = ( (csvread('Ast10.csv',1,1)-E_nominal)/(P(3)*stdev(1)) ) / (E_nominal/P(3))
dS(1,4) = ( (csvread('f10.csv',1,1)-E_nominal)/(P(4)*stdev(1)) ) / (E_nominal/P(4))
dS(1,5) = ( (csvread('Aw10.csv',1,1)-E_nominal)/(P(5)*stdev(1)) ) / (E_nominal/P(5))
dS(1,6) = ( (csvread('Lt10.csv',1,1)-E_nominal)/(P(6)*stdev(1)) ) / (E_nominal/P(6))
dS(1,7) = ( (csvread('alpha10.csv',1,1)-E_nominal)/(P(7)*stdev(1)) ) / (E_nominal/P(7))
dS(1,8) = ( (csvread('cooling10.csv',1,1)-E_nominal)/(P(8)*stdev(1)) ) / (E_nominal/P(8))

%% 5
dS(2,1) = ( (csvread('m5.csv',1,1)-E_nominal)/(P(1)*stdev(2)) ) / (E_nominal/P(1))
dS(2,2) = ( (csvread('T5.csv',1,1)-E_nominal)/(P(2)*stdev(2)) ) / (E_nominal/P(2))
dS(2,3) = ( (csvread('Ast5.csv',1,1)-E_nominal)/(P(3)*stdev(2)) ) / (E_nominal/P(3))
dS(2,4) = ( (csvread('f5.csv',1,1)-E_nominal)/(P(4)*stdev(2)) ) / (E_nominal/P(4))
dS(2,5) = ( (csvread('Aw5.csv',1,1)-E_nominal)/(P(5)*stdev(2)) ) / (E_nominal/P(5))
dS(2,6) = ( (csvread('Lt5.csv',1,1)-E_nominal)/(P(6)*stdev(2)) ) / (E_nominal/P(6))
dS(2,7) = ( (csvread('alpha5.csv',1,1)-E_nominal)/(P(7)*stdev(2)) ) / (E_nominal/P(7))
dS(2,8) = ( (csvread('cooling5.csv',1,1)-E_nominal)/(P(8)*stdev(2)) ) / (E_nominal/P(8))

%% 1
dS(3,1) = ( (csvread('m1.csv',1,1)-E_nominal)/(P(1)*stdev(3)) ) / (E_nominal/P(1))
dS(3,2) = ( (csvread('T1.csv',1,1)-E_nominal)/(P(2)*stdev(3)) ) / (E_nominal/P(2))
dS(3,3) = ( (csvread('Ast1.csv',1,1)-E_nominal)/(P(3)*stdev(3)) ) / (E_nominal/P(3))
dS(3,4) = ( (csvread('f1.csv',1,1)-E_nominal)/(P(4)*stdev(3)) ) / (E_nominal/P(4))
dS(3,5) = ( (csvread('Aw1.csv',1,1)-E_nominal)/(P(5)*stdev(3)) ) / (E_nominal/P(5))
dS(3,6) = ( (csvread('Lt1.csv',1,1)-E_nominal)/(P(6)*stdev(3)) ) / (E_nominal/P(6))
dS(3,7) = ( (csvread('alpha1.csv',1,1)-E_nominal)/(P(7)*stdev(3)) ) / (E_nominal/P(7))
dS(3,8) = ( (csvread('cooling1.csv',1,1)-E_nominal)/(P(8)*stdev(3)) ) / (E_nominal/P(8))

%% 05
dS(4,1) = ( (csvread('m05.csv',1,1)-E_nominal)/(P(1)*stdev(4)) ) / (E_nominal/P(1))
dS(4,2) = ( (csvread('T05.csv',1,1)-E_nominal)/(P(2)*stdev(4)) ) / (E_nominal/P(2))
dS(4,3) = ( (csvread('Ast05.csv',1,1)-E_nominal)/(P(3)*stdev(4)) ) / (E_nominal/P(3))
dS(4,4) = ( (csvread('f05.csv',1,1)-E_nominal)/(P(4)*stdev(4)) ) / (E_nominal/P(4))
dS(4,5) = ( (csvread('Aw05.csv',1,1)-E_nominal)/(P(5)*stdev(4)) ) / (E_nominal/P(5))
dS(4,6) = ( (csvread('Lt05.csv',1,1)-E_nominal)/(P(6)*stdev(4)) ) / (E_nominal/P(6))
dS(4,7) = ( (csvread('alpha05.csv',1,1)-E_nominal)/(P(7)*stdev(4)) ) / (E_nominal/P(7))
dS(4,8) = ( (csvread('cooling05.csv',1,1)-E_nominal)/(P(8)*stdev(4)) ) / (E_nominal/P(8))

% test1 = ( (1.329400e+05-E_nominal)/(P(3)*stdev(4)) ) / (E_nominal/P(3))
% test2 = ( (1.329116e+05-E_nominal)/(P(3)*stdev(4)) ) / (E_nominal/P(3))

% overall
% U_xp = sqrt(((dS_dTd*uTd)^2)+((dS_dTmp*uTmp)^2)+((dS_dTi*uTi)^2)+((dS_dLd*uLd)^2)+((dS_drhod*urhod)^2)+((dS_dkd*ukd)^2)+((dS_dcpd*ucpd)^2)+((dS_dx*ux)^2)+((dS_dvd*uvd)^2))