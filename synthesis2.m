function [imgnshow]=synthesis2(mask,w,I)
[m,n]=size(mask);
imgn=im2double(rand(256+w,256+2*w));       
imgn(1:m,1:n)=mask;
nc=mod(256+2*w,n);
mr=(256+2*w-nc)/n;
for iw=2:mr
    imgn(1:w,n*(iw-1)+1:n*iw)=mask(1:w,1:n);
end
imgn(1:w,n*iw+1:256+2*w)=mask(1:w,1:nc);
for i=1+w:256+w
    for j=1+w:256+w 
       d=ssd2(mask,imgn(i-w:i,j-w:j+w),I);
       [r,c]=find(d==min(min(d)));
       ii=r(1); jj=c(1);
       imgn(i,j)=mask(ii+w,jj+w);     
    end
end
imgnshow=imgn(1+w:256+w,1+w:256+w);
end