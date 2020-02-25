load('netIntel');

[filename,filepath]=uigetfile({'*.jeg'},'Select and image');
selectedImage = imread(strcat(filepath, filename));
% imshow(selectedImage);

aug = augmentedImageDatastore([224 224], selectedImage, 'ColorPreprocessing', 'gray2rgb');


[YPred,probs] = classify(net,aug)
