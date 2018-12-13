%% Evaluation of multiple hermites at a given index (i) and point (0)
function [ multi_psi ] = multi_psi(i,p,n_var,P) %
h_tuple = tuple( P, n_var );
val = 1;
for j = 1:n_var
    if j == p
    else
        val = hermite(h_tuple(i,j), 0) * val;
    end
end
multi_psi = val;
end
