A = imnoise(rgb2gray(imread("img\profile.jpg")),"salt & pepper");
[R ,C] = size(A);
B = zeros(R, C);
thresh = 127;
for i=3:1:R-2
    for j=3:1:C-2
        temp = A(i-2:i+2, j-2:j+2);
        ntemp = reshape(temp.',1,[]);
        sumtemp = sum(ntemp);
        value = sumtemp/25;
        B(i,j) = value;
    end
end

C = imbinarize(uint8(B));
figure;imshow(A)
figure;imshow(B,[])
figure;imshow(C)