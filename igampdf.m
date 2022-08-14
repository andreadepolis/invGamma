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
 
igpdf = betta^alpha./gamma(alpha).*x^-(alpha + 1).*exp(-betta./x) ;
