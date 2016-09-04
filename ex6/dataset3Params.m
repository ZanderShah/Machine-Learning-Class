function [C, sigma] = dataset3Params(X, y, Xval, yval)

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

minError = Inf;
values = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

for i = 1 : length(values)
	for j = 1 : length(values)
		% Taken from ex6.m
		model = svmTrain(X, y, values(i), @(x1, x2) gaussianKernel(x1, x2, values(j))); 
		result = mean(double(svmPredict(model, Xval) ~= yval));

		% Update C and sigma if a better prediction is found
		if (result < minError)
			minError = result;
			C = values(i);
			sigma = values(j);
		end
	end
end

end
