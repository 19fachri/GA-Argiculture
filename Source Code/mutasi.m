function [ output ] = mutasi( pop )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%menghitung total gen
[m,n]=size(pop);
total_gen=m*n;

%melakukan mutasi sebanyak 1%
jmlh_mutasi=0.01*total_gen;

%proses mutasi
for i=1:jmlh_mutasi
    %mengacak posisi gen
    posisi=randi(total_gen);
    
    %mengacak angka baru untuk gen
    baru=randi([0,10]);
    
    %melakukan mutasi
    pop(posisi)=baru;
end

%mengembalikan hasil
output=pop;
end

