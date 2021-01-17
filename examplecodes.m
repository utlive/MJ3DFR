% Exmaple codes of using the 3D FR QA codes described in 
%  Ming-Jun Chen, Che-Chun Su, Do-Kyoung Kwon, Lawrence K. Cormack, Alan C. Bovik, 
% "Full-reference quality assessment of stereopairs accounting for rivalry, Signal Processing: Image Communication, 2013.



addpath ( genpath ( 'MJ3DQA' ) );
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Load Reference image
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
imRef = imread('Ref.bmp');
imRef = rgb2gray(imRef);
sizeTemp = size (imRef);
imRL = imRef(:,1:sizeTemp(2)/2,:);
imRR = imRef(:,sizeTemp(2)/2+1:end,:);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Load Test image
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

imTest = imread('Test.bmp');
imTest = rgb2gray(imTest);
imDL = imTest(:,1:sizeTemp(2)/2,:);
imDR = imTest(:,sizeTemp(2)/2+1:end,:);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Compute 3D QA score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MSSSIM_mj = MJ3DQA(imRL, imRR,imDL,imDR);
disp(MSSSIM_mj);
        
        
      
        

    




