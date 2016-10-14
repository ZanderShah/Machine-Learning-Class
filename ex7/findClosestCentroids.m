function idx = findClosestCentroids(X, centroids)

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = ones(size(X,1), 1);

for i = 1 : size(X, 1)
	for j = 2 : K
		if (norm(X(i, :) - centroids(j, :)) < norm(X(i, :) - centroids(idx(i), :)))
			idx(i) = j;
		end
	end
end

end

