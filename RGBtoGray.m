rgb_scale = imread("profile.jpg");
gray_scale = rgb2gray(rgb_scale);
gray_rescale = gray_scale ./2;
figure;imshow(gray_rescale)
figure;imshow(gray_scale)
figure;imshow(rgb_scale)