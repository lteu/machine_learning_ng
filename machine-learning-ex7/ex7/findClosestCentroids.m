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

for counter = 1:size(X,1)
	tmpx = X(counter,:);
	best_score = 99999999999999999;
	best_indx = 99999999999999999;
	for centroid_counter = 1:size(centroids,1)
		tmpc = centroids(centroid_counter,:);
		diffen = sum((tmpx-tmpc).^2);
		if diffen < best_score
			best_score = diffen;
			best_indx = centroid_counter;
		end
	end
	idx(counter) = best_indx;
end





% =============================================================

end

