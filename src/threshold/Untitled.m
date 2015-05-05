I=cell(1,78);
for i=1:78
    imageName=strcat(‘C:\Users\xiangyun\Desktop\CSE 237d\san_elijo\san_elijo\nir\num2str(i),'.jpg');
    I{i} = imread(imageName);
end

a = double(imread('1.jpg'));
NIR = a(:,:,1);
VIS = a(:,:,2);
NVDI = (NIR - VIS)./(NIR + VIS);
[width height] = size(NVDI);
Binary_nvdi = zeros(width,height);
for i = 1 : width
    for j = 1: height
        if (NVDI(i,j) > 0.2)
        Binary_nvdi(i,j) = 200;
        else 
        Binary_nvdi(i,j) = 8;  
        end
    end
end
imshow(uint8(Binary_nvdi))
