I=imread('grayscale.png');
[n_rows, n_colums]=size(I);

Ilight=I+100;
Idark=I-100;

figure(1)
imshow(I)
figure(2)
imshow(Idark)