function [features_of_image] = feature_extraction_imageList(my_image_list)

    %This function has the same usage with feature_extraction_single_image
    %but it is for a list of images.
    
    L=length(my_image_list);
    for ii=1:L
        
       
       c=cast(my_image_list{ii},'double');
       
       coeff=pca(c);
       
       features_of_image{ii}=coeff;
       

%          [wcoeff,~,~,~,~] = pca(c,'VariableWeights','variance');
%          coefforth = diag(std(c))\wcoeff;
%          features_of_image{ii}=coefforth;
    end
end
    






    



    
    



        
        
        
        
        
        

