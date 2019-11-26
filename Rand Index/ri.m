%{
Kevin Apodaca
CS 4362
Rand Index exercise
Desctiption: Find the rand index given the data.
%}

%generating data
labels = dlmread("labels.txt");
data = dlmread("data.txt");
idx = kmeans(data, 3);

%initialize values
[FN, FP, TN, TP] = deal(0);

for i = 1:length(idx)
    for j = i+1:length(idx)
        if idx(i) == idx(j) %positive
            if labels(i) == labels(j) %true
                TP = TP + 1;
            else    %false
                FP = FP + 1;
            end
        else % negative
            if labels(i) ~= labels(j) %true
                TN = TN + 1;
            else %false
                FN = FN + 1;
            end
        end
    end
end

RI = (TP + TN) / (TP + FP + TN + FN);
