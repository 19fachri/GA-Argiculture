function [ output ] = seleksi_roulette_wheel( populasi, fitness )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(fitness);

%hitung total fitness
total_fit=sum(fitness(:));

%hitung probabilitas
prob_fit=fitness/total_fit;

%hitung probabilitas komulatif masing-masing individu
prob_kom=zeros(size(fitness));
for i=1 : m
    prob_kom(i,1)=sum(prob_fit(1:i));
end;

%mengembalikan hasil
output=prob_kom;
end

