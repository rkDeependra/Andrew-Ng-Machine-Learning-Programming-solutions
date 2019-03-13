function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
m=size(X,1);
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


%mu= (sum(X)/m)

mu=mean(X);

%a=0;
%b=0;

%for i=1:m
 % a+=((X(i,1)-mu(1,1))^2);
 % b+=((X(i,2)-mu(1,2))^2);
%end

%a=a/m;
%b=b/m;

%a=sqrt(a);
%b=sqrt(b);

%sigma=[a,b]

sigma= std(X);

mu_mat=ones(m,1)*mu;
sigma_mat=ones(m,1)*sigma;

%X_norm(:,1)=(X(:,1)-mu(1,1))/a;
%X_norm(:,2)=(X(:,2)-mu(1,2))/b;

X_norm=((X-mu_mat)./sigma_mat);

%fprintf('First 10 examples from the dataset: \n');
%fprintf(' x = [%.0f %.0f]\n', [X_norm(1:10,:)]');


% ============================================================

end
