%{
   Logistic Regression Model
   Kevin Apodaca
   Data Mining
%}
function [predicate] = LogisticRegression(test_data , coefficients)

    coefficients = transpose(coefficients); % The transpose of the coefficients.
    for i=1: length(test_data)
        Z = coefficients(1) + sum(times(coefficients(2:end), test_data(i, 1:end)));
        
        % Formula provided in the lessons.
        Z = 1./ (1 + exp(-Z));

        % Greater than 0.5 is a positive result.
        if Z > 0.5
            predicate(i) = 1;
        % Less than 0.5 is a negative result.    
        else
            predicate(i) = 0; 
        end
    end
end
