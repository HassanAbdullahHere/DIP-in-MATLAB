A = rgb2gray(imread("img/stars.PNG"));
B = imgaussfilt(A,2);
C = (imbinarize((B)));
D = double(A) .* double(C);
figure;imshow(A)
figure;imshow(B,[])
figure;imshow(C,[])
figure;imshow(D,[])
