%%
%Project_2
clc;
clear;
%video reader
vid = VideoReader('gasstove_infrared.avi');
blob = vision.BlobAnalysis('MinimumBlobArea',1000, 'MaximumBlobArea', 15000);
%vidfr = vid.readFrame();
%size(vidfr);

ax = axes;
while vid.hasFrame()
 vidf  = vid.readFrame();
%  vi = imfill(vidf,'holes');
%  [L n] = bwlabel(vi);
[BW,maskedRGBImage] = createMask_1(vidf);
[onject_area,onject_centroid,bounding_box] = step(blob,BW);
Imshape = insertShape(maskedRGBImage,'Rectangle',bounding_box);
%blobs = regionprops(L,'BoundingBox')
imshow(Imshape, 'parent', ax);
 pause(1.0/vid.FrameRate);
 end


