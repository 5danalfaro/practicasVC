fol_path='/Users/5danalfaro/Documents/practicas_vc/practicasVC/ODI/';
file_path='6.JPG';
I =imread(strcat(fol_path,file_path));
J=imadjust(I,stretchlim(I),[]);
%J=rgb2gray(J);
J=J(:,:,1);

J=imcomplement(J);

%J=rgb2gray(I);
figure;
imshow(J);

q_try=double(quantile(J(:),0.14));
binarize=q_try/255;
J=imbinarize(J,'adaptive','ForegroundPolarity','bright','Sensitivity',binarize);
%J=imcomplement(J);

figure;
imshow(J);

BW=edge(J,'canny');
[B,L]=bwboundaries(BW); 
figure;
imshow(label2rgb(L,@jet,[.5,.5,.5]));

BW2=imfill(BW,'holes');
[B,L]=bwboundaries(BW2); 
figure;
imshow(label2rgb(L,@jet,[.5,.5,.5]));


%caract=regionprops(L,'all');