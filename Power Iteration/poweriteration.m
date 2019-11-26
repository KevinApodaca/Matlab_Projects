%{
Kevin Apodaca
CS 4362
Power Iteration Rank Page Algorithm exercise
Desctiption: Implement the power iteration method onto a matrix, to find the ranking of the pages.
%}
A = [1,1,0;1,0,0;0,1,1];
temp = sum(A);
M = A;
Beta = 0.8;
u = ones(size(A,1), size(A,2));
u = u/ size(A,1);

for i = 1:size(A,1)
    M(:,i) = M(:,i)/temp(i);
end

r = ones(size(A, 1), 1);
rprev = r;

tempsum = 0;
for i = 0:2000
   rprev = r;
   r = Beta*(M*r) + (1-Beta);
   tempsum = tempsum + 1;
   if(sum(abs(r-rprev)) < 0.00000005)
       break;
   end
end