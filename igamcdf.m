function igcdf = igamcdf(x, alpha, betta)
% Compute the cumulative distribution function of the Inverse-Gamma
% distribution with shape and scale parameters, IG(alpha, beta).
% 
% Input: 
% x     = x-values
% alpha = shape parameter
% betta = scale parameter
% 
% Output:
% igcdf = inversegamma cdf
% 
% Andrea De Polis, 2022 (a.de-polis@warwick.ac.uk)
 
igcdf = gammainc(betta./x, alpha, 'upper') ;
