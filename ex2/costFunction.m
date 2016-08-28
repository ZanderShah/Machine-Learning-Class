function [J, grad] = costFunction(theta, X, y)

% Initialize some useful values
m = length(y); % number of training examples

J = -1 / m * (log(sigmoid(X * theta))' * y + log(1 - sigmoid(X * theta))' * (1 - y));
grad = 1 / m * X' * (sigmoid(X * theta) - y);

end
