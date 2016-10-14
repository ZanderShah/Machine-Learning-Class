function Z = projectData(X, U, K)

U = U(:, 1 : K);
Z = X * U;

end
