function plotData(X, y)

% Create New Figure
figure; hold on;

% Find Indices of Positive and Negative Examples
pos = find(y); 
neg = find(!y);

% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 1, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

hold off;

end
