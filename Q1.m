clear;
clc;
index=dir(strcat('texture\','*.jpg'));
w=input('w=');
switch w
    case 2
        I=inti(w);
       string='part1w=2\';
    case 3
       I=inti(w);
       string='part1w=3\';
    case 4
       I=inti(w);
       string='part1w=4\';
    case 8
       I=inti(w);
       string='part1w=8\';
    case 12
       I=inti(w);
       string='part1w=12\';
    case 20
       I=inti(w);
       string='part1w=20\';
    case 30
       I=inti(w);
       string='part1w=30\';   
end
for i=1:11
    Im=im2double(imread(strcat('texture\',index(i).name)));
    mysize=size(Im);
    if numel(mysize)>2
     [img]=synthesis3(Im,w,I);
    else
     [img]= synthesis2(Im,w,I);
    end
    imwrite(img,[string,num2str(i),'.jpg']);
end
        