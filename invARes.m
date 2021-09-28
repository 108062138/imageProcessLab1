function [x] = invARes(A, x, y, augx,augy)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [numRows,numCols] = size(A);
    if x ~= numRows && y ~=numCols
        M = [x y x*y 1;
            x y+1 x*(y+1) 1;
            (x+1) y (x+1)*y 1;
            (x+1) (y+1) (x+1)*(y+1) 1];
        invM = inv(M);
        v = [A(x,y) A(x,y+1) A(x+1,y) A(x+1,y+1)];
        vTran = double(v');
        C = invM * vTran;
        x = [augx augy augx*augy 1]*C;
    elseif x==numRows && y~=numCols
        M = [y 1; 
            y+1 1];
        invM = inv(M);
        v = [A(x,y) A(x,y+1)];
        vTran = double(v');
        
        C = invM * vTran;
        x = [augy 1]*C;
    elseif x~=numRows && y==numCols
        M = [x 1;
            x+1 1];
        invM = inv(M);
        v = [A(x,y) A(x+1)];
        vTran = double(v');
        C = invM * vTran;
        x = [augx 1] * C;
    else 
        x= A(x,y);
    end
end