%{
Kevin Apodaca
CS 4362
Naive Bayes Classification exercise
Desctiption: Apply the naive bayes algorithm to classify the training data.
%}

data_train = dlmread("trainingData.txt");
label_train = dlmread("trainingLabels.txt");
data_test = dlmread("TestData.txt");
label_test = dlmread("TestLabels.txt");

mdl = fitcnb(data_train, label_train);
p = predict(mdl, data_test);

cMat = confusionmat(p,label_test);

function f = calcForm(n);
    for i = 1:length(idx)
    end
end
