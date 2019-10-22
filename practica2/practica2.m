fol_path='/Users/5danalfaro/Documents/practicas_vc/practicasVC/ODI/';
file_path='1.JPG';
I = imread(strcat(fol_path,file_path));
%imshow(I);
[rows, columns, numberOfColorChannels] = size(I);
str=strcat('ODI size is: ',num2str(rows),'x',num2str(columns));
disp(str);
disp(strcat('color channels: ',num2str(numberOfColorChannels)));

%resize image
J=imresize(I,[1000,1000]);
subplot(3,2,1), imshow(J), title('normal') 
subplot(3,2,2), imshow(rgb2lab(J)), title('lab') 
subplot(3,2,3), imshow(rgb2ntsc(J)), title('ntsc') 
subplot(3,2,4), imshow(rgb2xyz(J)), title('xyz') 
subplot(3,2,5), imshow(rgb2ycbcr(J)), title('ycbcr')

%which one is better
disp('cualquier espacio de color es bueno, por ser un unico color')

%se prodría hacer en escala de grises
%si

