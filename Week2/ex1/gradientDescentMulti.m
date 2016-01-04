function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    temp_theta = theta;
    H = X * theta;

    features_count = size(X, 2);
    
    for inner_iter = 1:features_count
        derivative = 1.0 / m * (H - y)' * X(:, inner_iter); % last is X(i)

        temp_theta(inner_iter) = theta(inner_iter) - alpha * derivative;

    end
    theta = temp_theta;
    % ============================================================

    % Save the cost J in every iteration    
    cost = computeCost(X, y, theta);
    J_history(iter) = cost;
    fprintf('%f\n', cost);








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
