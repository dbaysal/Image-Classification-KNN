function [padded_images]= pad_image (images)

        %Each image will be padded to 750x750 in order to get consistent
        %feature matrix sizes. If size is greater than 750x750 image
        %won't be accepted

    sz=size(images);
    ii=1;
    while ii<=sz(2)
         
        [m,n]=size(images{ii});
        if m>750 || n>750
            fprintf("Image size is incompatible for classification. Please use images that have dimensions less than 750!");
        else    
            I = rand(m,n) ; 
            x = zeros(1000,1000) ;
            x(1:m,1:n) = I ;
            padded_images{ii}=x;
            ii=ii+1;
        
        end
    end
end
