function [ t, wts ] = he_quadrature_rule ( nt )

%*****************************************************************************80
%
%% HE_QUADRATURE_RULE: quadrature for He(i,x).
%
%  Discussion:
%
%    He(i,x) represents the probabilist's Hermite polynomial.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    13 February 2012
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NT, the order of the rule.
%
%    Output, real T(NT,1), WTS(NT,1), the points and weights of the rule.
%
  aj = zeros ( nt, 1 );
  bj = sqrt ( ( 1 : nt )' / 2.0 );
  wts = zeros ( nt, 1 );
  wts(1,1) = sqrt ( sqrt ( pi ) );

  [ t, wts ] = imtqlx ( nt, aj, bj, wts );

  wts(1:nt,1) = wts(1:nt,1).^2;
%
%  Adjust for probabilist.
%
  t(1:nt,1) = t(1:nt,1) * sqrt ( 2.0 );
%   wts(1:nt,1) = wts(1:nt,1) * sqrt ( 2.0 ); % below is modified from original function
  wts(1:nt,1) = wts(1:nt,1) / sqrt ( pi ); % If you used the roots_hermitenorm function to generate quadrature nodes and weights, you will need to divide the weights by sqrt(2 pi).

  return
end

