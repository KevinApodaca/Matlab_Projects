%{
Kevin Apodaca
CS 4362
Mathematical Optimization exercise
Desctiption: Find the optimized values for how much each family should give away of their rice produced.
This runner file contains the data being passed to the function calculator.
%}

options = optimset( 'Display', 'iter', 'MaxFunEvals', 6000, ...
'TolFun', 1.0e-15,...
'MaxIter', 400);

x = [2,2,2,2,2];
data = [8,7,6,3,10];
avg = mean(data);

myPenalty = @(x)myObjFunction(x, data, avg);
% [xx, fval] = fminunc(@myObjFunction, x, options);
[xx, fval] = fminunc(myPenalty,x, options);
