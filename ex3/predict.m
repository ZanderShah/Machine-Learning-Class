function p = predict(Theta1, Theta2, X)

% Useful values
m = size(X, 1);

X = [ones(m, 1) X];

[value index] = max(sigmoid([ones(m, 1) sigmoid(X * Theta1')] * Theta2'), [], 2);
p = index;

end
