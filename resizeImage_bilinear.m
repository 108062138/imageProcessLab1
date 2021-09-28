function [resizedImage] = resizeImage_bilinear(originalImage, scalingFactor)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [numRows,numCols] = size(originalImage);
    newRows = floor(numRows*scalingFactor);
    newCols = floor(numCols*scalingFactor);
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
            augI = 1+i/scalingFactor;
            augJ = 1+j/scalingFactor;
            if augI>numRows
                augI = numRows;
            end 
            if augJ > numCols;
                augJ =numCols;
            end
            resizedImage(i,j) = invARes(originalImage,oriI,oriJ,augI,augJ);
        end 
    end
    resizedImage = uint8(resizedImage);
end