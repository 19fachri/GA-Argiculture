function [ output ] = silang( indv1, indv2 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

%membuat temprory untuk individu baru
[m,n]=size(indv1);
new = zeros(1,n);

%proses penyilangan
for i=1:n
    if rand(10)<5
        new(1,i)=indv1(1,i);
    else
        new(1,i)=indv2(1,i);
    end
end

%mengembalikan hasil
output = new;
end

