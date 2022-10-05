function [conc_matrix]=conc_dist_matrices (image,feature_list)
    
    %this function will concatenate distance matrices which are obtained
    %from create_dist_matrix function horizontally

    z1=create_dist_matrix(image,feature_list{1});
    z2=create_dist_matrix(image,feature_list{2});   
    z3=create_dist_matrix(image,feature_list{3});   
    z4=create_dist_matrix(image,feature_list{4});
    z5=create_dist_matrix(image,feature_list{5});
    z6=create_dist_matrix(image,feature_list{6});
    z7=create_dist_matrix(image,feature_list{7});
    z8=create_dist_matrix(image,feature_list{8});
    z9=create_dist_matrix(image,feature_list{9});
    z10=create_dist_matrix(image,feature_list{10});

    conc_matrix=horzcat(z1,z2,z3,z4,z5,z6,z7,z8,z9,z10);
end
