function q = igaminv(n, alpha, betta)
% Compute the inverse cumulative distribution function, or qunatile 
% function, of the Inverse-Gamma distribution with shape and scale
% parameters, IG(alpha, beta).
% 
% Input: 
% n     = quantiles of interest
% alpha = shape parameter
% betta = scale parameter
% 
% Output:
% q = n-quantile(s) of IG(alpha, betta)
% 
% Andrea De Polis, 2022 (a.de-polis@warwick.ac.uk)
 
q = betta./gammaincinv(n, alpha, 'upper') ;
