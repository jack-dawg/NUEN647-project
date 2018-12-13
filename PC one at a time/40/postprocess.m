clear all; clc;
tic
%% User options
P = 10; % highest order PC expansion in T
n_var = 1; % number of random variables
Nq = 40; % order of 1D quadrature rule
%
%% Data
m_dot = 0.048; alpha_s = 20; Tsteam = 403.15; cooling = 2e4; % problem data
stdev = 0.01; % input uncertainty
m1 = m_dot*stdev; alpha1 = alpha_s*stdev; Tsteam1 = Tsteam*stdev; cooling1 = cooling*stdev;

%% Tensor-Product vs Sparse Grid option
[ pts, wts ] = he_quadrature_rule ( Nq ); %    Output, real PTS(n,1), WTS(n,1), the points and weights of the rule.

%% Import CSV results
formatSpec = 'm%d.csv';
for k = 0:(length(wts)-1)
    A1 = k;
    str = sprintf(formatSpec,A1);
    hold1 = csvread(str,1,1);
%     E(k+1) = mean(hold1);
    E(k+1) = hold1(length(hold1));
end

%% Compute T coeffs
h_tuple = tuple( P, n_var );
U_e = zeros(length(h_tuple),1); 
e_hw = zeros(length(h_tuple), 1);
for i = 1:length(h_tuple)
    for qi = 1:length(wts)
        e_hw(i,1) = wts(qi).*E(qi).*Psi_i(i,pts(qi,:), n_var, P) + e_hw(i,1);
    end
    U_e(i) = e_hw(i,1) / factorial(max(h_tuple(i,:)));
end

%% local sensitivity
hold2 = csvread('nominal.csv',1,1);
% ur_0 = mean(hold2);
ur_0 = hold2(length(hold2));
sum_em = zeros(n_var,1); S_p = zeros(n_var,1);
for p = 1:n_var
    sum_em(p) = 0;
    for k = 1:length(h_tuple)
        ip = h_tuple(k,p);
        if ip == 0
        else
            sum_em(p) = U_e(k).*ip.*hermite(ip-1,0).*multi_psi(k,p,n_var,P) + sum_em(p);
        end
    end
    S_p(p) = (1/stdev) * (1/ur_0) * sum_em(p);
end
ans(1,1)=S_p;
ans(2:length(U_e)+1,1)=U_e;
toc
