function [mu sigma2] = estimateGaussian(X)

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = sum(X, 1) / m;
sigma2 = sum(@bsxfun(@minus, X, mu) .^ 2, 1) / m;

mu = mu';
sigma2 = sigma2';

end
