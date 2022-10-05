function [feature_matrix]=feature_extraction_single_image (image)
        
        %This function will extract pca features from image
         
        %I changed the type of the image matrix to make it compatible with
        %the pca() function.
        
        c=cast(image,'double');
        coeff= pca(c) ;
        
       
       feature_matrix=coeff;

%          [wcoeff,~,~,~,~] = pca(c,'VariableWeights','variance');
%          coefforth = diag(std(c))\wcoeff;
%          feature_matrix=coefforth;
        
end
    



    

        

        




