A = rgb2gray(imread("img\profile.jpg"));
[R ,C] = size(A);
B = zeros(R, C);
thresh = 127;
for i=2:1:R-1
    for j=2:1:C-1
        temp = A(i-1:i+1, j-1:j+1);
        ntemp = reshape(temp.',1,[]);
        sumtemp = sum(ntemp);
        value = sumtemp/9;
        B(i,j) = value;
    end
end

figure;imshow(B,[])
figure;imshow(A)