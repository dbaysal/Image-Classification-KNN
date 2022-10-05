
function [imageArray] = extract_from_folder(myFolder)
    %extarct images from a specific folder and add it into an image array
    filePattern = fullfile(myFolder, '*.jpg');
    jpegFiles = dir(filePattern);
    nfiles=length(jpegFiles);
    ii=1;
    for ii=1:nfiles
        baseFileName = jpegFiles(ii).name;
        fullFileName = fullfile(myFolder, baseFileName);
        
        myimage=imread(fullFileName);

        %I decided to turn the images into gray for simplicity
        gray_image= im2gray(myimage);
        imageArray{ii}=gray_image;
        
         
        
        
    end
end

    


