clear all; clc;
tic
%% User options
P = 6; % highest order PC expansion in T
n_var = 3; % number of random variables
Nq = 13; % order of 1D quadrature rule
%
%% Data
m_dot = 0.048; Tsteam = 403.15; cooling = 2e4; alpha_s = 20; % problem data
stdev = 0.025; % input uncertainty
m1 = m_dot*stdev; alpha1 = alpha_s*stdev; cooling1 = cooling*stdev;

%% Tensor-Product vs Sparse Grid option
[ multi_pts, multi_wts ] = nwspgr('GQN', n_var, Nq);  % uncomment for sparse grid
% [ multi_wts, multi_pts ] = multi_wts_pts( P, n_var );

%% Order uncertain inputs
for qi = 1:length(multi_wts)
    m_squig(qi) = f_squig(m_dot,m1,multi_pts(qi,1));
    q_squig(qi) = f_squig(cooling,cooling1,multi_pts(qi,2));
    alpha_squig(qi) = f_squig(alpha_s,alpha1,multi_pts(qi,3));
end

toc
