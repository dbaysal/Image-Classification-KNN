function[rotated_features]= rotate_x_extract_features(images)
    sz=size(images);

    for ii=1:sz(2)
        %take mirror reflection of the image
        rotated_img{ii}= flip(images{ii}, 2);
    end

    temp=pad_image(rotated_img);
    rotated_features=feature_extraction_imageList(temp);
end

        
        
