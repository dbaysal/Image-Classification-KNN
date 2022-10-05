function [distance_matrix] = create_dist_matrix(image_features,list_of_features)
    
    %This is a function to calculate euclidean distance between every
    %element of the matrices and sum them up.
        z=size(list_of_features);
        i=1;
        while i<=z(2)
           
            q=size (image_features);
            w=size(list_of_features{i});

            %if matrices are not equal distance can't be calculated
            if  q~=w
                fprintf( "Feature matrix size is not compatible!");
            else

            difference=(image_features)-(list_of_features{i});
            a=power(difference,2);
            k=sum(a,'all');
            distance_matrix(i)=sqrt(k);
            i=i+1;
            end
           
                     
            
        end

        
end


%These are the other 2 techniques I tried to use while calculating
%euclidean distance between 2 matrices.

% function [distance_matrix] = create_dist_matrix(image_features,list_of_features)
%     
%         
%         z=size(list_of_features);
%         k=z(2);
%         
%         for i=1:k
%             l=pdist2(image_features,list_of_features{i},'euclidean');
%              c=sum(l,'all');
%             distance_matrix(i)=c;
%         end
%         
% end


% function [distance_matrix] = create_dist_matrix(image_features,list_of_features)
%     
%         
%         z=size(list_of_features);
%         k=z(2);
%         
%         for i=1:k
%             l=sqrt(sum(diag(transpose(image_features-list_of_features{i})*(image_features-list_of_features{i}))));
%              
%             distance_matrix(i)=l;
%         end
%         
% end
