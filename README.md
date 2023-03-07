# Matlab routines for the Inverse-Gamma distribution

This repository contains Matlab® codes to compute:

- Cumulative distribution function (`igamcdf.m`)
- Probability density function (`igampdf.m`)
- Quantile function (`igaminv.m`)
- Random number generator (`igamrnd.m`)
- (Non-central) Moments (`igammom.m`)

for the Inverse-Gamma distribution, $\mathcal{IG}(\alpha, \beta)$.

## Probability density function

$$
f(x;\alpha,\beta)=\frac{\beta^\alpha}{\Gamma(\alpha)}\left(\frac{1}{x}\right)^{\alpha+1}exp\left(-\frac{\beta}{x}\right),
$$

where $\Gamma(\cdot)$ is the Gamma function.

## Cumulative distribution function

$$
F(x;\alpha,\beta) = Q\left(\alpha,\frac{\beta}{x}\right),
$$

where $Q(\cdot)$ is the _regularized gamma function_, that is a normalized version of the _upper_ incomplete gamma function, $\gamma(\cdot,\cdot)$, 

$$
Q\left(\alpha,\frac{\beta}{x}\right) = \frac{\gamma\left(\alpha,\frac{\beta}{x}\right)}{\Gamma(\alpha)}.
$$

## Inverse cumulative distribution function (Quantile function)

$$
F^{-1}(p;\alpha,\beta)=\frac{\beta}{\gamma^{-1} (\Gamma(\alpha)(1-p), \alpha)},
$$

where $\gamma^{-1}(\cdot,\cdot)$ is the _lower inverse incomplete gamma function_.

## $n^{th}$-(non-central)-moment

$$
E[X^n]=\beta^n\frac{\Gamma(\alpha-n)}{\Gamma(\alpha)},\quad \alpha>n.
$$
