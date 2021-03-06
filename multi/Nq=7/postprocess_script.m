clear all; clc;
tic
%% User options
P = 5; % highest order PC expansion in T
n_var = 4; % number of random variables
Nq = 2*P+1; % order of 1D quadrature rule
%
stdev = 0.05;
%% Tensor-Product vs Sparse Grid option
[ multi_pts, multi_wts ] = nwspgr('GQN', n_var, P);  % uncomment for sparse grid

%% Import CSV results
formatSpec = '%d.csv';
for k = 0:(length(multi_wts)-1)
    A1 = k;
    str = sprintf(formatSpec,A1);
    E(k+1) = csvread(str,1,1);
end

%% Compute T coeffs
h_tuple = tuple( P, n_var );
U_e = zeros(length(h_tuple),1); 
e_hw = zeros(length(h_tuple), 1);
for i = 1:length(h_tuple)
    for qi = 1:length(multi_wts)
        e_hw(i,1) = multi_wts(qi).*E(qi).*Psi_i(i,multi_pts(qi,:), n_var, P) + e_hw(i,1);
    end
    U_e(i) = e_hw(i,1) / factorial(max(h_tuple(i,:)));
end

%% local sensitivity
ur_0 = csvread('nominal.csv',1,1);
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
S_p=S_p';

toc
