function[padded_image]=pad_single_image(image)
    
     
        %Each image will be padded to 750x750 in order to get consistent
        %feature matrix sizes. If size is greater than 750x750 image
        %won't be accepted
        [m,n]=size(image);
        if m>750 || n>750
            fprintf("Image size is incompatible for classification. Please use images that have dimensions less than 750!");
            padded_image=nan;
        else    
            I = rand(m,n) ; 
            x = zeros(1000,1000) ;
            x(1:m,1:n) = I ;
            padded_image=x;
     
        
        end
    end