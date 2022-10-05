function [invar_features]=invariant_features(images)
    
    %For every image in the TrainingSet create a augmented copy where a
    %random rotation, scaling is performed. With this technique Training
    %data will increase which will result in higher accuracy.
    
    augmenter = imageDataAugmenter( ...
    'RandRotation',[0 360], ...
    'RandScale',[0.5 1]);
    
    
    augI = augment(augmenter,images);

    temp=pad_image(augI);
    invar_features=feature_extraction_imageList(temp);


end

