function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% https://www.coursera.org/learn/machine-learning/discussions/weeks/8/threads/ncYc-ddQEeWaURKFEvfOjQ

m = size(X,1);
distance = zeros(m, K);

for i = 1:K
	diff = bsxfun(@minus, X, centroids(i,:));		% calculate distance from every example to the current centroid i
	distance(:,i) = sum(bsxfun(@power, diff, 2),2);	% assign each column of the distance matrix to the sum of square of the above distance
	% keyboard;
	% return;
	
end
[dumb idx] = min(distance, [], 2);	% extract the index of the centroid with minimized distance





% =============================================================

end

