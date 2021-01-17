

=======================================================================
-----------COPYRIGHT NOTICE STARTS WITH THIS LINE------------
Copyright (c) 2013 The University of Texas at Austin
All rights reserved.

Permission is hereby granted, without written agreement and without license or royalty fees, to use, copy, 
modify, and distribute this code (the source files) and its documentation for
any purpose, provided that the copyright notice in its entirety appear in all copies of this code, and the 
original source of this code, Laboratory for Image and Video Engineering (LIVE, http://live.ece.utexas.edu)
and Center for Perceptual Systems (CPS, http://www.cps.utexas.edu) at the University of Texas at Austin (UT Austin, 
http://www.utexas.edu), is acknowledged in any publication that reports research using this code. The research
is to be cited in the bibliography as:

1)Ming-Jun Chen, Che-Chun Su, Do-Kyoung Kwon, Lawrence K. Cormack, Alan C. Bovik, 
"Full-reference quality assessment of stereopairs accounting for rivalry, Signal Processing: Image Communication, 2013.

IN NO EVENT SHALL THE UNIVERSITY OF TEXAS AT AUSTIN BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, 
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OF THIS DATABASE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY OF TEXAS
AT AUSTIN HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE UNIVERSITY OF TEXAS AT AUSTIN SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE DATABASE PROVIDED HEREUNDER IS ON AN "AS IS" BASIS,
AND THE UNIVERSITY OF TEXAS AT AUSTIN HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.

-----------COPYRIGHT NOTICE ENDS WITH THIS LINE------------%

Author  : Ming-Jun Chen
Version : 1.0

The authors are with the Laboratory for Image and Video Engineering
(LIVE), Department of Electrical and Computer Engineering, The
University of Texas at Austin, Austin, TX.

Kindly report any suggestions or corrections to mjchen@utexas.edu

=======================================================================

This is a demonstration of the 3D Full Reference Quality Assessment algorithm described in:

Ming-Jun Chen, Che-Chun Su, Do-Kyoung Kwon, Lawrence K. Cormack, Alan C. Bovik, 
"Full-reference quality assessment of stereopairs accounting for rivalry, Signal Processing: Image Communication, 2013.

You can change this program as you like and use it anywhere, but please
refer to its original source (cite our paper).

=======================================================================
An exmaple ( Matlab codes and stereo imagepair) are provided to demonstrate how to use the package. 
Plesae run examplecodes.m 


Running on Matlab 

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
MJ3DQA(imRL, imRR,imDL,imDR);
