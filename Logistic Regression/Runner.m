%{
   Runner For Logistic Regression Model
   Kevin Apodaca
   Data Mining
%}
% Reading the files
test_data = dlmread('test_data.txt');
test_labels = dlmread('test_labels.txt');
train_data = dlmread('training_data.txt');
train_labels = dlmread('training_labels.txt');
% Declaring the variables for gmlfit and calling the function.
coefficients = glmfit(train_data, train_labels, 'binomial', 'link', 'logit');
predicateicate = LogisticRegression(test_data, coefficients);
% Defining the confusion matrix and assigning the values.
[tp, fp, tn, fn] = ConfusionMat(predicate, test_labels);
% Defining the values of tp, fp, tn, fn. These are the risk values of the companies.
true_and_risk = tp;
false_and_not_risk = fp;
true_and_not_risk = tn;
false_and_not_risk = fn;

% Function for the Logistic Regression Model
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

%Function for the Confusion Matrix
function [tp, fp, tn, fn] = ConfusionMat(test, labels)
    [tp,fp,tn,fn] = deal(0);
    % Iterate through the test data file.
    for i = 1 : length(test)
        % True positive values.
        if test(i) == labels(i) && labels(i) == 1
            tp = tp + 1;
        % False positive values.
        elseif test(i) == 1 && labels(i) ~= test(i)
            fp = fp + 1;
        % True negative values.
        elseif test(i) == labels(i) && labels(i) == 0
            tn = tn + 1;
        % False negative values.
        elseif test(i) == 0 && labels(i) ~= test(i)
            fn = fn + 1;
        end
    end
end
