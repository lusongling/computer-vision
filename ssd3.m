%function Z = ssd(X, Y)
%Computes the sum of squared distances between X and Y for each possible
% overlap of Y on X.  Y is thus smaller than X
%
%Inputs:
%   X - larger image
%   Y - smaller image
%
%Outputs:
%   Each pixel of Z contains the ssd for Y overlaid on X at that pixel

function Z = ssd3(X, Y,I)



for k=1:size(X,3),
    A = X(:,:,k);
    B = Y(:,:,k).*I;
    
    a2 = filter2(I, A.^2, 'valid');
    b2 = sum(sum(B.^2));
    ab = filter2(B, A, 'valid').*2;

    if( k == 1 )
        Z = ((a2 - ab) + b2);
    else
        Z = Z + ((a2 - ab) + b2);
    end;
end;