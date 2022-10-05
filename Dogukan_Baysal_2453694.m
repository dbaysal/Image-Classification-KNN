
%I downloaded Image Processing Toolbox, Computer Vision Toolbox, Statistics
%and Machine Learning Toolbox, Deep Learning Toolbox



%Storing Training Set datas into matrices.


airplanes_raw=extract_from_folder('TrainingSet/airplanes');
bonsai_raw=extract_from_folder('TrainingSet/bonsai');
chair_raw=extract_from_folder('TrainingSet/chair');
ewer_raw=extract_from_folder('TrainingSet/ewer');
faces_raw=extract_from_folder('TrainingSet/faces');
flamingo_raw=extract_from_folder('TrainingSet/flamingo');
guitar_raw=extract_from_folder('TrainingSet/guitar');
leopards_raw=extract_from_folder('TrainingSet/leopards');
motorbikes_raw=extract_from_folder('TrainingSet/motorbikes');
starfish_raw=extract_from_folder('TrainingSet/starfish');


%I padded images in order to be consistent while working with matrices
airplanes=pad_image(airplanes_raw);
bonsai=pad_image(bonsai_raw);
chair=pad_image(chair_raw);
ewer=pad_image(ewer_raw);
faces=pad_image(faces_raw);
flamingo=pad_image(flamingo_raw);
guitar=pad_image(guitar_raw);
leopards=pad_image(leopards_raw);
motorbikes=pad_image(motorbikes_raw);
starfish=pad_image(starfish_raw);








%Extraction of the features of each image and storing them into matrices.

airplanes_features=feature_extraction_imageList(airplanes);
bonsai_features=feature_extraction_imageList(bonsai);
chair_features=feature_extraction_imageList(chair);
ewer_features=feature_extraction_imageList(ewer);
faces_features=feature_extraction_imageList(faces);
flamingo_features=feature_extraction_imageList(flamingo);
guitar_features=feature_extraction_imageList(guitar);
leopards_features=feature_extraction_imageList(leopards);
motorbikes_features=feature_extraction_imageList(motorbikes);
starfish_features=feature_extraction_imageList(starfish);


%I created "invariant_features" and "rotated_features" to increase
%ValidationSet accuracy. Not the highest accuracy but the overall accuracy
%for k values increased in both techniques so I decided to use
%"invariant_features" to increase my training data and increase accuracy

invariant_airplanes_features=invariant_features(airplanes_raw);
invariant_bonsai_features=invariant_features(bonsai_raw);
invariant_chair_features=invariant_features(chair_raw);
invariant_ewer_features=invariant_features(ewer_raw);
invariant_faces_features=invariant_features(faces_raw);
invariant_flamingo_features=invariant_features(flamingo_raw);
invariant_guitar_features=invariant_features(guitar_raw);
invariant_leopards_features=invariant_features(leopards_raw);
invariant_motorbikes_features=invariant_features(motorbikes_raw);
invariant_starfish_features=invariant_features(starfish_raw);


% rotated_airplanes_features=rotate_x_extract_features(airplanes_raw);
% rotated_bonsai_features=rotate_x_extract_features(bonsai_raw);
% rotated_chair_features=rotate_x_extract_features(chair_raw);
% rotated_ewer_features=rotate_x_extract_features(ewer_raw);
% rotated_faces_features=rotate_x_extract_features(faces_raw);
% rotated_flamingo_features=rotate_x_extract_features(flamingo_raw);
% rotated_guitar_features=rotate_x_extract_features(guitar_raw);
% rotated_leopards_features=rotate_x_extract_features(leopards_raw);
% rotated_motorbikes_features=rotate_x_extract_features(motorbikes_raw);
% rotated_starfish_features=rotate_x_extract_features(starfish_raw);





feature_list={airplanes_features,bonsai_features,chair_features,ewer_features,faces_features,...
    flamingo_features,guitar_features,leopards_features,...
    motorbikes_features,starfish_features,...
    invariant_airplanes_features,invariant_bonsai_features,...
    invariant_chair_features,invariant_ewer_features,invariant_faces_features,...
    invariant_flamingo_features,invariant_guitar_features,invariant_leopards_features,...
    invariant_motorbikes_features,invariant_starfish_features};







i=1;
%for every k value predict each image and keep track of the accuracy
for k= [1,3,5,7,9]
    
    [t1,s1]=predict_n(k,'TestSet/airplanes',feature_list);
    [t2,s2]=predict_n(k,'TestSet/bonsai',feature_list);
    [t3,s3]=predict_n(k,'TestSet/chair',feature_list);
    [t4,s4]=predict_n(k,'TestSet/ewer',feature_list);
    [t5,s5]=predict_n(k,'TestSet/faces',feature_list);
    [t6,s6]=predict_n(k,'TestSet/flamingo',feature_list);
    [t7,s7]=predict_n(k,'TestSet/guitar',feature_list);
    [t8,s8]=predict_n(k,'TestSet/leopards',feature_list);
    [t9,s9]=predict_n(k,'TestSet/motorbikes',feature_list);
    [t10,s10]=predict_n(k,'TestSet/starfish',feature_list);
    
    total_images=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10;

    %check if the prediction is correct
    corrects=check(t1,1)+check(t2,2)+check(t3,3)+check(t4,4)+check(t5,5)+check(t6,6)+check(t7,7)+check(t8,8)+check(t9,9)+check(t10,10);
    %disp(k);
    percentage=(corrects/total_images)*100;
    %disp(percentage);
    
    percentage_value(i)=percentage;
    k_val(i) = k;
    i=i+1;
    

end


[p_val,a]=max(percentage_value);


plot(k_val,percentage_value,'MarkerEdgeColor','k','MarkerIndices',5);
hold on;

plot(k_val,percentage_value,'ok','MarkerEdgeColor','k','MarkerFaceColor','c','MarkerSize',10);
hold on;

fprintf("Maximum accuracy is for k = %d which is = %.4f%% ", k_val(a),p_val);


    












