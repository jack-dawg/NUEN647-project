%% Evaluation for Psi at a given index (i) and point (x)
function [ Psi_i ] = Psi_i( i, x, n_var, P )
h_tuple = tuple( P, n_var );
val = 1;
for j = 1:n_var
    val = hermite(h_tuple(i,j), x(j)) * val;
end
Psi_i = val;
end

