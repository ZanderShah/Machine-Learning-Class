function [J, grad] = lrCostFunction(theta, X, y, lambda)

% Initialize some useful values
m = length(y); % number of training examples

J = (lambda / 2 * (sum(theta .^ 2) - theta(1) .^ 2) - (log(sigmoid(X * theta))' * y + log(1 - sigmoid(X * theta))' * (1 - y))) / m;

reg = lambda * theta / m;
reg(1) = 0;

grad = 1 / m * X' * (sigmoid(X * theta) - y) + reg;

end
