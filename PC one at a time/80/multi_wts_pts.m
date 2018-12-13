function [ multi_wts, multi_pts ] = multi_wts_pts( P, n_var )
% P, highest order PC expansion in T
% n_var, number of random variables
Nq = 2*P+1; % order of 1D quadrature rule
Nq_multi = Nq^n_var; % number of multi-D quadrature points
% q_tuple = permn([1:n_var],Nq); % quadrature tuple
q_tuple = permn([1:Nq],n_var); % quadrature tuple
[ pts, wts ] = he_quadrature_rule ( Nq ); % Output, real PTS(n,1), WTS(n,1), the points and weights of the rule.
%% 
multi_wts = ones(Nq_multi,1);
multi_pts = zeros(Nq_multi,n_var);
for qi = 1:Nq_multi
    for j = 1:n_var
        multi_wts(qi,1) = multi_wts(qi,1)*wts(q_tuple(qi,j)); % not sure
        multi_pts(qi,j) = [pts(q_tuple(qi,j))];
    end
end
end

