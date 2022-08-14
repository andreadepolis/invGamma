function igpdf = igampdf(x, alpha, betta)
% Compute the probability density function of the Inverse-Gamma
% distribution with shape and scale parameters, IG(alpha, beta).
% 
% Input: 
% x     = x-values
% alpha = shape parameter
% betta = scale parameter
% 
% Output:
% igpdf = inversegamma pdf
% 
% Andrea De Polis, 2022 (a.de-polis@warwick.ac.uk)
 
igpdf = gampdf(1./x, alpha, 1/betta)./(x.^2) ;
