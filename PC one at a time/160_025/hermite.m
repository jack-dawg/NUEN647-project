function [ he ] = hermite (n, x) 
%HERMITE Evaulate n-th order probabilists'  Hermite polynomial Hw_n(x) 
% he = hermite(n) returns the array of n-order Hermite polynomial 
% coefficients 
% he = hermite(n, x) return n-order Hermite polynomial evaluated at x

he = zeros(1,n+1); 
n_fact = factorial(n); 
m = 0:floor(n/2); 
he(2*m+1) = n_fact .* (-1).^m ./ (factorial(m) .* factorial(n-2.*m)) .* sqrt(2).^(n-2.*m).*2.^(-n./2);

if exist('x','var') 
he = polyval(he, x); 
end 
end