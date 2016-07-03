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

%thetaj = thetaj - alpha/m * sum(h(xi) - yi)*xi

	error = sum(X*theta-y)*X(iter);
	theta(iter) = theta(iter) - (m/alpha)*error;


    % ============================================================

    % Save the cost J in every iteration    
    
    theta
    J_history(iter) = computeCost(X, y, theta);

end

end
