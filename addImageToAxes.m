function [ imageObject ] = addImageToAxes( imageFilename, axesHandle, axesWidth )
%ADDIMAGETOAXES Adds an image to an axes
% Opens image filename and adds it to the axes
% Returns a handle to the image object.
% If axesWidth = 0 then use the image default pixel size.


% Open the file to get the imageData
%imgData = imread(imageFilename);

% This version of addImageToAxes has been modified to allow png transparenc
[imgData,map,alphaChannel] = imread('wildthumper.png');

% Create an image object and make the parent the axes
imageObject = image(imgData, 'Parent', axesHandle, 'AlphaData', alphaChannel);

% Make unit of axes 'pixels'
% Visible off
set(axesHandle, 'Visible', 'off', 'Units', 'pixels');

% Get the current 'Position' of the Axes so that we can use the x and y.
currentPosition = get(axesHandle, 'Position');

% Get the number of rows and columns of the image
[rows_height,cols_width,depth] = size(imgData);
axesHeight = axesWidth*rows_height/cols_width;
% Check for the magic axesWidth == 0 feature.
if axesWidth == 0
    axesWidth = cols_width;
    axesHeight = rows_height;
end

% set the new 'Position' on the axes
set(axesHandle, 'Position', [currentPosition(1), currentPosition(2), axesWidth, axesHeight]);

end

