function r = igamrnd(alpha, betta, n)
% Draws random numbers from an Inverse-Gamma distribution with shape and
% scale parameters, IG(alpha, beta).
% 
% Input: 
% x     = x-values
% alpha = shape parameter
% betta = scale parameter
% 
% Output:
% r = IG random draw
% 
% Andrea De Polis, 2022 (a.de-polis@warwick.ac.uk)

if size(n, 2) == 1

   n = [n 1] ;

end

r = 1./gamrnd(alpha, 1/betta, n) ;

