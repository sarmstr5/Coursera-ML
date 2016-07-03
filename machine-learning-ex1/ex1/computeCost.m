function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
h = 0;
error = 0;

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% J = 1/2m * sum(h(xi) - yi)^2
% h(x) = theta'x = theta0+ theta1*x1

h = X*theta; %predicted values
error = h - y; %error of predicted vs observed

J = 1/(2*m)*sum(error.^2);

% =========================================================================

end
