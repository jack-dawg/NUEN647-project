clear all; clc;
%
%% Data
m_dot = 0.048; alpha_s = 20; Tsteam = 403.15; cooling = 2e4; % problem data
stdev = [0.4, 0.2, 0.1, 0.05, 0.02, 0.01, 0.008 0.005, 0.001, 0.0001]; % input uncertainty
m1 = m_dot*stdev;

%% Individual Input Uncertainties: Sensitivity Coefficients
P = m_dot; U = m1;

Phigh = P+U;
Plow = P-U;

% nominal
E_nominal = csvread('nominal.csv',1,1);

% 40%
dS_dm40 = ( (csvread('m_high_40.csv',1,1)-csvread('m_low_40.csv',1,1))/(Phigh(1)-Plow(1)) ) / (E_nominal/m_dot)
% 20%
dS_dm20 = ((csvread('m_high_20.csv',1,1)-csvread('m_low_20.csv',1,1))/(Phigh(2)-Plow(2)))/ (E_nominal/m_dot)

% 10%
E_m_high = csvread('m_high_10.csv',1,1);
E_m_low = csvread('m_low_10.csv',1,1);
dS_dm10 = ((E_m_high-E_m_low)/(Phigh(3)-Plow(3)))/ (E_nominal/m_dot)

% 5%
dS_dm5 = ((csvread('m_high_5.csv',1,1)-csvread('m_low_5.csv',1,1))/(Phigh(4)-Plow(4)))/ (E_nominal/m_dot)

% 2%
dS_dm2 = ((csvread('m_high_2.csv',1,1)-csvread('m_low_2.csv',1,1))/(Phigh(5)-Plow(5)))/ (E_nominal/m_dot)

% 1%
dS_dm1 = ((csvread('m_high_1.csv',1,1)-csvread('m_low_1.csv',1,1))/(Phigh(6)-Plow(6)))/ (E_nominal/m_dot)

% 0.8%
dS_dm08 = ((csvread('m_high_0.8.csv',1,1)-csvread('m_low_0.8.csv',1,1))/(Phigh(7)-Plow(7)))/ (E_nominal/m_dot)

% 0.5%
dS_dm05 = ((csvread('m_high_0.5.csv',1,1)-csvread('m_low_0.5.csv',1,1))/(Phigh(8)-Plow(8)))/ (E_nominal/m_dot)

% 0.1%
dS_dm01 = ((csvread('m_high_0.1.csv',1,1)-csvread('m_low_0.1.csv',1,1))/(Phigh(9)-Plow(9)))/ (E_nominal/m_dot)

% 0.01%
dS_dm001 = ((csvread('m_high_0.01.csv',1,1)-csvread('m_low_0.01.csv',1,1))/(Phigh(10)-Plow(10)))/ (E_nominal/m_dot)



% overall
% U_xp = sqrt(((dS_dTd*uTd)^2)+((dS_dTmp*uTmp)^2)+((dS_dTi*uTi)^2)+((dS_dLd*uLd)^2)+((dS_drhod*urhod)^2)+((dS_dkd*ukd)^2)+((dS_dcpd*ucpd)^2)+((dS_dx*ux)^2)+((dS_dvd*uvd)^2))