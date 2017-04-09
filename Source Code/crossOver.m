function [ output ] = crossOver( pop, jatah )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%membuat temperory untuk hasil crosover
[m,n]=size(pop);
tmp=zeros(m, n);

%proses crosover
for i=1:m
    %pemilihan induk
    induk1=induk(pop,jatah);
    induk2=induk(pop,jatah);
    
    %penyilangan
    tmp(i,:)=silang(induk1,induk2); 
end

%mengembalikan hasil
output = tmp;
end