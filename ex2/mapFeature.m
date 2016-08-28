function out = mapFeature(X, Y)

degree = 6;
out = ones(size(X(:,1)));
for i = 1 : degree
    for j = 0 : i
        out(:, end + 1) = (X .^ (i - j)) .* (Y .^ j);
    end
end

end