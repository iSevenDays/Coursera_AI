 function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %

    
    H = X * theta;

    derivative1 = 1.0 / m * (H - y)' * X(:, 1);
    derivative2 = 1.0 / m * (H - y)' * X(:, 2); % last is X(i)

    temp_theta1 = theta(1) - alpha * derivative1;
    temp_theta2 = theta(2) - alpha * derivative2;

    theta(1) = temp_theta1;
    theta(2) = temp_theta2;

    
    % ============================================================

    % Save the cost J in every iteration    
    cost = computeCost(X, y, theta);
    J_history(iter) = cost;
    fprintf('%f\n', cost);
    
end

end
