function [U, S] = pca(X)
	
% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

[U, S, V] = svd(X' * X ./ m);

end
