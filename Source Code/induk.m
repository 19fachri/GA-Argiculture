function [ output ] = induk( pop, prob_kom )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%merandom angka 0-1
acak=rand();
a=1;

%mengecek probbalitas komulatif dengan angka acak
pilihan=prob_kom(a);
while(pilihan<acak)
    a=a+1;
    pilihan=prob_kom(a);
end

%mengembalikan hasil
output=pop(a,:);

end