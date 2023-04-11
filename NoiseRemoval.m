A = (rgb2gray(imread("img\profile.jpg")));
[R ,C] = size(A);
B = zeros(R, C);
thresh = 127;
for i=3:1:R-2
    for j=3:1:C-2
        neighbours = A(i-2:i+2, j-2:j+2);
        neighbours_reshaped = reshape(neighbours.',1,[]);
        Max = sum(neighbours_reshaped);
        N = Max / 25;
        B(i,j) = N;
    end
end

c = 1.4*A ;
c = double(c) - B;
D = double(A) + c;
figure;imshow(A)
figure;imshow(B,[])
figure;imshow(c)
figure;imshow(D,[])