fol_path='/Users/5danalfaro/Documents/practicas_vc/practicasVC/ODI/';
file_path='6.JPG';
I = imread(strcat(fol_path,file_path));
%open in different colors 
pixel = I(2,3,2);
R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);
subplot(2,2,1), imshow(R)
subplot(2,2,2), imshow(G)
subplot(2,2,3), imshow(B)
subplot(2,2,4), imshow(I)

%imtool
%imtool(I)

%write image
%imwrite(R,'frameRchannel.jpg');

%conversion de color
frameRGB = ycbcr2rgb(I);
%figure;
%imshow(frameRGB)
%imwrite(R,'frameRGB.jpg');

%ABRIR CON CAMERA

url="http://10.151.72.89:8888";
camera=ipcam(url);
