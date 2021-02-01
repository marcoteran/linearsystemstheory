I=imread('grayscale.png');
[n_rows, n_colums]=size(I);

Ilight=I+100;
Idark=I-100;

figure(1)
imshow(I)
figure(2)
imshow(Idark)

Irgb=imread('lena.png');
size(Irgb)

Ir=Irgb(:,:,1);
Ig=Irgb(:,:,2);
Ib=Irgb(:,:,3);

figure()
subplot(221)
imshow(Irgb)
subplot(222)
imshow(Ir)
subplot(223)
imshow(Ig)
subplot(224)
imshow(Ib)