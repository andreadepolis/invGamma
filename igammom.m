function m = igammom(n, alpha, betta)
% Compute the n-th (non-central) moment of the Inverse-Gamma distribution 
% with shape and scale parameters, IG(alpha, beta). 
% Note: The n-th moment exists provided that alpha > n.
% 
% Input: 
% n     = order of the moment
% alpha = shape parameter
% betta = scale parameter
% 
% Output:
% igcdf = inversegamma cdf
% 
% Andrea De Polis, 2022 (a.de-polis@warwick.ac.uk)
 
m = betta^n*gamma(alpha - n)./gamma(alpha) ;