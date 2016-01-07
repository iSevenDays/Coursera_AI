% returs vector 1 * length(x)
function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% TODO: check For a matrix, your function should perform the sigmoid function on every element

g = 1./(1 + exp(-z));

%ndims
% =============================================================

end
