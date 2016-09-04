function sim = gaussianKernel(x1, x2, sigma)
	
% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
d = x1 - x2;
sim = exp(- d' * d / (2 * sigma * sigma));
    
end
