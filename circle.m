A = zeros(400, 400);
Cx = 200;
Cy = 200;
myrad = 70;
for i=1 :1:400
    for j=1:1:400
        if sqrt((i-Cx)^2 + (j-Cy)^2) <=myrad
            A(i,j) = 255;
        else
            continue
        end
    end
end

figure;imshow(A)