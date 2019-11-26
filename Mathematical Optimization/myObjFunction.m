%{
Kevin Apodaca
CS 4362
Mathematical Optimization exercise
Desctiption: Find the optimized values for how much each family should give away of their rice produced.
This runner file contains the data being passed to the function calculator.
%}

function [fval] = myObjFunction(x, data, avg)
%fval = 1.0 + X * X;
%fval = (X(1) + 2 * X(2) - 7) ^ 2 + (2 * X(1) + X(2) - 5) ^ 2;
%fval = (1.5 - X(1) + X(1)* X(2)) ^ 2 + (2.25 - X(1) + X(1) * (X(2) ^ 2) ^ 2 + (2.625 - X(1) + X(1) * X(2) ^ 3) ^ 2);
%fval = (1.5 - x(1) + x(1) * x(2))^2 + (2.25 - x(1) + x(1) * x(2)^2)^2 + (2.65 - x(1) + x(1) * x(2)^3)^2;
%fval = abs((data(1) - x(1) - avg) + (data(2) - x(2) - avg) + (data(3) - x(3) - avg) + (data(4) - x(4) - avg) + (data(5) - (5) - avg));

temp = 0;
for i=1:length(data)
    temp = temp + abs((data(i) - x(i) - avg));
end
fval = temp;

end