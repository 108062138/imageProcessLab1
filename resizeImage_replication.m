function [resizedImage] = resizeImage_replication(originalImage, scalingFactor)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [numRows,numCols] = size(originalImage);
    newRows = floor(numRows*scalingFactor);
    newCols = floor(numCols*scalingFactor);
    disp(numRows);
    disp(numCols);
    disp(newRows);
    disp(newCols);

    resizedImage = zeros(newRows,newCols);
    for i = 1:newRows
        for j = 1:newCols
            oriI = floor(1+i/scalingFactor);
            oriJ = floor(1+j/scalingFactor);
            if oriI > numRows
                oriI = numRows;
            end
            if oriJ > numCols
                oriJ = numCols;
            end
            resizedImage(i,j)= originalImage(oriI,oriJ);
        end
    end
end
%{
if scalingFactor == 1 
        resizedImage = originalImage;
    elseif scalingFactor > 1 %enlarge        
        for newI = 1:newRows
            for newJ = 1:newCols
                oriI = floor(newI/scalingFactor);
                oriJ = floor(newJ/scalingFactor);
                resizedImage(newI,newJ)=originalImage(oriI,oriJ);
            end
        end
    else %shrink
        for i = 1:newRows
            for j = 1:newCols
                oriI = floor(1 + 1/scalingFactor*(i-1));
                oriJ = fooor(1+ 1/scalingFactor*(j-1));
                resizedImage(i,j) = originalImage(oriI,oriJ);
            end
        end
    end
%}