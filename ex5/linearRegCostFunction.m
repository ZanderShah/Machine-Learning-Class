function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

% Initialize some useful values
m = length(y); 
 
J = (sum((X * theta - y) .^ 2) + lambda * (sum(theta .^ 2) - theta(1) .^ 2)) / (2 * m);

reg = lambda * theta / m;
reg(1) = 0;

grad = X' * (X * theta - y) / m + reg;

end
