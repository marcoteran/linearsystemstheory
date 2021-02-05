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
Ieq=Irgb;

Ieq(:,:,3)=Ieq(:,:,3)+70; %BLUE
Ieq(:,:,1)=Ieq(:,:,1)-70; %RED
Ieq(:,:,2)=Ieq(:,:,2)+70; %RED


Ir=Irgb(:,:,1);
Ig=Irgb(:,:,2);
Ib=Irgb(:,:,3);

figure()
subplot(121)
imshow(Irgb)
subplot(122)
imshow(Ieq)

figure()
subplot(221)
imshow(Irgb)
subplot(222)
imshow(Ir)
subplot(223)
imshow(Ig)
subplot(224)
imshow(Ib)