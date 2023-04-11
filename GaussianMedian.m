A = imnoise(rgb2gray(imread("img\profile.jpg")),"salt & pepper",0.1);
[R ,C] = size(A);
B = zeros(R, C);
thresh = 127;
for i=2:1:R-1
    for j=2:1:C-1
        temp = A(i-1:i+1, j-1:j+1);
        ntemp = reshape(temp.',1,[]);
        value = median(ntemp);
        B(i,j) = value;
    end
end
figure;imshow(A)
figure;imshow(B,[])
