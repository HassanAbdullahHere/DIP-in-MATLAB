A = rgb2gray(imread("img/stars.PNG"));

myFilter = ones(3,3);
B = imfilter(double(A),myFilter);
level = (graythresh(uint8(B)));
C = (imbinarize((B),'global'));
D = double(A) - (C);
figure;imshow(A)
figure;imshow(B,[])
figure;imshow(C,[])
figure;imshow(D,[])