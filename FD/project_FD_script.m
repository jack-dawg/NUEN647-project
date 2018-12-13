clear all; clc;
%
%% Data
m_dot = 0.048; alpha_s = 20; Tsteam = 403.15; cooling = 2e4; % problem data
stdev = 0.01; % input uncertainty
m1 = m_dot*stdev; alpha1 = alpha_s*stdev; Tsteam1 = Tsteam*stdev; cooling1 = cooling*stdev;

P = [m_dot, Tsteam, alpha_s, cooling];
U = [m1, Tsteam1, alpha1, cooling1];
%% Individual Input Uncertainties: Sensitivity Coefficients
Phigh = P+U;
Plow = P-U;

% nominal
E_nominal = csvread('nominal.csv',1,1);

% m_dot
E_m_high = csvread('m_high.csv',1,1);
E_m_low = csvread('m_low.csv',1,1);
dS_dm = ((E_m_high-E_m_low)/(Phigh(1)-Plow(1)))/E_nominal

% T
dS_dT = ((csvread('T_high.csv',1,1)-csvread('T_low.csv',1,1))/(Phigh(2)-Plow(2)))/E_nominal

% alpha
dS_dalpha = ((csvread('alpha_high.csv',1,1)-csvread('alpha_low.csv',1,1))/(Phigh(3)-Plow(3)))/E_nominal

% q
dS_dq = ((csvread('q_high.csv',1,1)-csvread('q_low.csv',1,1))/(Phigh(4)-Plow(4)))/E_nominal



% overall
% U_xp = sqrt(((dS_dTd*uTd)^2)+((dS_dTmp*uTmp)^2)+((dS_dTi*uTi)^2)+((dS_dLd*uLd)^2)+((dS_drhod*urhod)^2)+((dS_dkd*ukd)^2)+((dS_dcpd*ucpd)^2)+((dS_dx*ux)^2)+((dS_dvd*uvd)^2))