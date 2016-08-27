function [X_norm, mu, sigma] = featureNormalize(X)

mu = mean(X);
sigma = std(X);
% Faster than repmat
X_norm = bsxfun(@rdivide, bsxfun(@minus, X, mu), sigma);

end
