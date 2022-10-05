function [predictions,no_of_images]= predict_n(n,foldername,feature_list)
    
    %this function will return to predicted image for all of the rows where
    %each row represents distance from a TestSet image to each of the
    %TrainingSet images

    x=[];
    for i=1:10
        A(i)=0;
    end
    
    test=extract_from_folder(foldername);
    o=[];
    sz=size(test);
    for i=1:sz(2)
        size(test{i});
        padded_image=pad_single_image(test{i});
        if isnan(padded_image)
            continue;
        else
            image=feature_extraction_single_image(padded_image);
            z=conc_dist_matrices(image,feature_list);
            o=vertcat(o,z);
        end
    end
    for i=1:n

        [~,idx] = min(o,[],2);
        x=horzcat(x,check_interval_return_int(idx));
        
        %set the smallest distances which are already detected to inf in
        %order to detect the next smallest distance.
        for i=1:size(idx)  
            o(i,idx(i,1))=inf;
        end
    end
        %detect the most repeated values in each row
        predictions=mode(x,2);    
        no_of_images=sz(2);
end
