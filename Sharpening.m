A = rgb2gray(imread("img\profile.jpg"));
myfilter1 = [-1 -1 -1; -1 9 -1; -1 -1 -1];
myfilter2 = [0 0 0; 0 1 0; 0 0 0];
myfilter3 = 1/9*eye(9);
myfilter4 = [-1 -1 0; -1 0 1; 0 1 1];
myfilter5 = ones(7,7);
C = 1.4*A;
B = imfilter(C,myfilter1);



figure;imshow(A)
figure;imshow(C,[])