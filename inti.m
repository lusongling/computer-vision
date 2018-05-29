function I=inti(w)
I=zeros(w+1,2*w+1);
for i=1:w
    for j=1:2*w+1
        I(i,j)=1-exp(-2*((w-i+1)^2+(w-j+1)^2)/w/w);
    end
end
for j=1:w
    I(w+1,j)=1-exp(-2*(w-j+1)^2/w/w);
end
end
