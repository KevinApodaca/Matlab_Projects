pobj = parpool(2);

tic
parfor i=1:10
    disp(i);
    pause(3);
end
toc
delete(pobj);
