function [quantizedImage] =  reduceIntensityLevel(originalImage,intensityLevel)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
basicRange = uint8(256/(intensityLevel-1));
[numRows,numCols] = size(originalImage);

for i = 1:numRows
    for j = 1:numCols
        numRanges = floor(originalImage(i,j)/basicRange);
        originalImage(i,j) = numRanges * basicRange;
    end
end
quantizedImage = originalImage;

end

