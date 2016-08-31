function g = sigmoidGradient(z)

sig = sigmoid(z);
g = sig .* (1 - sig);

end
