function [J grad] = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, num_labels, X, y, lambda)

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
Y = eye(num_labels)(y,:);

% You need to return the following variables correctly 
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% Forward propogation
A1 = [ones(m, 1) X];
Z2 = A1 * Theta1';
A2 = [ones(m, 1) sigmoid(Z2)];
Z3 = A2 * Theta2';
A3 = sigmoid(Z3);
J = -1 / m * sum(sum(Y .* log(A3) + (1 - Y) .* log(1 - A3))) + lambda / (2 * m) * (sum(sum(Theta1(:, 2 : end) .^ 2)) + sum(sum(Theta2(:, 2 : end) .^ 2)));

% Back propogation
for i = 1 : m
	a1 = [1 X(i, :)];
	z2 = a1 * Theta1';
	a2 = [1 sigmoid(z2)];
	z3 = a2 * Theta2';
	a3 = sigmoid(z3);

	s3 = a3 - Y(i, :);
	s2 = (s3 * Theta2)(2 : end) .* sigmoidGradient(z2);

	Theta1_grad = Theta1_grad + s2' * a1;
	Theta2_grad = Theta2_grad + s3' * a2;
end

% Divide by m and regularization
Theta1_grad = Theta1_grad / m + lambda / m * [zeros(size(Theta1), 1) Theta1(:, 2 : end)];
Theta2_grad = Theta2_grad / m + lambda / m * [zeros(size(Theta2), 1) Theta2(:, 2 : end)];

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];

end
