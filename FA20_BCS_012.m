function FA20_BCS_012(image)

    %The Image provided by the user is read from the directory.
    Original_image = imread(image);
    %Image Converted into the Gray Scale
    Gray_Scaled = rgb2gray(Original_image);
    
    
    %Question:1 (Applying unsharp Filtering)
    
    %Getting the number of pixels of Original Image ffor further use.
    [Row ,Col] = size(Gray_Scaled);
    %This Image represents the blurred form of original Image after
    %computation.
    blurred_image = zeros(Row, Col);
    
    %I have applied 5x5 Avg Filter to Blur the Image
    for i=3:1:Row-2
        for j=3:1:Col-2
            
            %Getting 25 Neighbours
            neighbours = Gray_Scaled(i-2:i+2, j-2:j+2);
            %Coverting the 2D matrix to 1D
            neighbours_reshaped = reshape(neighbours.',1,[]);
            %Sum of all the neighbours
            Sum = sum(neighbours_reshaped);
            %Taking Average and storing it to respective position in Blurred
            %Image
            avg = Sum / 25;
            blurred_image(i,j) = avg;
        end
    end
    
    %Displaying and Storing the output Images
    
    Edged_image = 1.4*Gray_Scaled ;
    Edged_image = double(Edged_image) - blurred_image;
    Sharped_Image = double(Gray_Scaled) + Edged_image;
    
    figure;imshow(Gray_Scaled)
    imwrite(Gray_Scaled,"original_image.bmp");
    
    figure;imshow(blurred_image,[])
    imwrite(uint8(blurred_image),"Blurred_Image.jpeg");
    
    figure;imshow(Edged_image)
    imwrite(Edged_image,"Edged_Image.bmp");
    
    figure;imshow(Sharped_Image,[])
    imwrite(uint8(Sharped_Image), 'unsharped_masked_image.jpeg');
    
    
    %Question:2 (Denoising an Image)
    
    %Adding noise to Original Image
    Noised_Image = imnoise(Gray_Scaled,"salt & pepper",0.1);
    
    %Getting size of noised Image
    [R ,C] = size(Noised_Image);
    
    denoisedimage_median = zeros(R, C);
    
    %Applying 3x3 Median filter
    for i=2:1:R-1
        for j=2:1:C-1
            %Getting 9 Neighbours
            temp = Noised_Image(i-1:i+1, j-1:j+1);
            %Converting into 1D
            ntemp = reshape(temp.',1,[]);
            %Getting Median value
            value = median(ntemp);
            %Storing it in respective place in Denoised Image
            denoisedimage_median(i,j) = value;
        end
    end
    
    %Displaying and Storing Output Images
    figure;imshow(Original_image)
    figure;imshow(Gray_Scaled,[])
    
    figure;imshow(Noised_Image,[])
    imwrite(uint8(Noised_Image),'Noised_Image.jpeg');
    
    figure;imshow(denoisedimage_median,[]);
    imwrite(uint8(denoisedimage_median),'denoisedimage_median.bmp');
