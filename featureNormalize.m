function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

num=size(X,2);

for j=1:num;
  
  a = mean(X(:, j));
	b = std(X(:, j));
  
  X_norm(:,j)=X_norm(:,j)-a;
  X_norm(:,j)=X_norm(:,j)/b;
  
  mu(j) = a;
	sigma(j) = b;
  
  end
end
