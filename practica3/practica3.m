fol_path='/Users/5danalfaro/Documents/practicas_vc/practicasVC/ODI/';
file_path='1.JPG';
I = imread(strcat(fol_path,file_path));

%equilise
%J=histeq(I,40);

J=imadjust(I,stretchlim(I),[]);
figure;

imshow(J);
figure;

J=rgb2gray(J);
%J=I(:,:,3);
%figure;
%imshow(I);
%figure;
%imshow(J);

%histogram of pixels color distribution
%bins=40;
%figure;
%plot(imhist(J,40));

%get the best fit to binirize image
im_median=median(J(:));
q3=quantile(J(:),0.75);
q1=quantile(J(:),0.25);
s=10;

%try for 20 different values of filter
for c = 1:2
    for r = 1:s
        num=(c-1)*10+r;
        %subplot(10,2,num),imshow(imbinarize(J,num/20)),title(num2str(num/20))
    end
end

%try for a manual value
%figure;
q_try=double(quantile(J(:),0.15));
binarize=q_try/255;
imshow(imbinarize(J,binarize))


%add noise
N=imnoise(I,'salt & pepper',0.02);

%figure;
%imshow(N);

%Kaverage = filter2(fspecial('average',3),N)/255;

%figure;
%imshow(Kaverage);

