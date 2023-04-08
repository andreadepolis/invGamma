clear
clc

N   = 1e6 ;
alp = 2 ;
bet = 1 ;

x = linspace(0, 1e3, N) ;
y = igamrnd(alp, bet, N) ;
f = igampdf(x, alp, bet) ;
F = igamcdf(x, alp, bet) ;
Q = igaminv(linspace(0, 1, N), alp, bet) ;

dx = x(2) - x(1) ;

% Plot pdf, cdf and quantile function
figure(1)
histogram(y, 'Normalization', 'pdf')
hold on
plot(x, f, 'r', 'linewidth', 2)
xlim([0 5])

figure(2)
plot(x, cumsum(f, 'omitnan')*dx)
hold on
plot(x, F, 'r--')
xlim([0 5])

figure(3)
plot(x, Q)
xlim([0 5])

% Numerical check on cdf and icdf

q = rand ;
z = igamrnd(alp, bet, 1) ;

fprintf('     Numerical   Analytical\n')
fprintf(' cdf  %3.3f         %3.3f\n', [prctile(y, 100*q) igaminv(q, alp, bet)])
fprintf('icdf  %3.3f         %3.3f\n', [sum(f.*(x <= z), 'omitnan')*(x(2) - x(1)) igamcdf(z, alp, bet)])



