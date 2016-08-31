function W = randInitializeWeights(L_in, L_out)

% Randomly initialize the weights to small values
eps = sqrt(6) / sqrt(L_in + L_out);
W = rand(L_out, 1 + L_in) * 2 * eps - eps;

end
