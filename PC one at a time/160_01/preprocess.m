clear all; clc;
tic
%% User options
Nq = 160; % order of 1D quadrature rule
%
%% Data
m_dot = 0.048; alpha_s = 20; cooling = 2e4; % problem data
stdev = 0.01; % input uncertainty
m1 = m_dot*stdev; alpha1 = alpha_s*stdev; cooling1 = cooling*stdev;

%% Tensor-Product vs Sparse Grid option
[ pts, wts ] = he_quadrature_rule ( Nq ); %    Output, real PTS(n,1), WTS(n,1), the points and weights of the rule.

%% Order uncertain inputs

for qi = 1:length(wts)
    m_squig(qi) = f_squig(m_dot,m1,pts(qi));
    q_squig(qi) = f_squig(cooling,cooling1,pts(qi));
    alpha_squig(qi) = f_squig(alpha_s,alpha1,pts(qi));
end

toc
