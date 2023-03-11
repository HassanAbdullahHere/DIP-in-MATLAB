A = rgb2gray(imread("img\profile.jpg"));
[R ,C] = size(A);
B = zeros(R, C);
thresh = 127;
for i=1:1:R
    for j=1:1:C
        if(A(i,j)>127)
            B(i,j) = 255;
        end
    end
end

figure;imshow(B)
     
