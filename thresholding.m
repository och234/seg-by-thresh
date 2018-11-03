%importing the image
image = imread('tea.jpg');
imshow(image)
%converting the image to grayscale
gray_image = rgb2gray(image);
imshow(gray_image)

%creating the gray level threshold
level = graythresh(gray_image);

%pixels whose gray level is less than or equal to the threshold level are considered 
%to be the background and those higher than the threshold are said to be the objects

BW_image = imbinarize(gray_image,level);
imshow(BW_image)

%constructing label matrix
con_com = bwconncomp(BW_image);

lab_mat = labelmatrix(con_com);

%using pseudo code to inspect the labelled matrix
RGB_label = label2rgb(lab_mat, @copper, 'c', 'shuffle');
imshow(RGB_label,'InitialMagnification','fit')
