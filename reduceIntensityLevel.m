function [quantizedImage] =  reduceIntensityLevel(originalImage,intensityLevel)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
basicRange = 256/intensityLevel;
[numRows,numCols, brightLevel] = size(originalImage);
for i = 1:numRows
    for j = 1:numCols
        numRanges = ceil(originalImage(i,j)/basicRange);
        originalImage(i,j) = numRanges * basicRange;
    end
end
disp(numRows);
disp(numCols);
disp(brightLevel);
quantizedImage = originalImage;
end

