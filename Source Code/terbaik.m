function [ indiv_terkuat, fitness_tertinggi ] = terbaik( pop, fitness )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%menggabungkan populasi dengan nilai fitnesnya
data=[pop fitness];

%mengambil indiviu dan fitness terbaik
[m,n]=size(data);
terurut=sortrows(data,-n);
hasil=terurut(1,:);

%mengembalikan hasil
indiv_terkuat=hasil(1,1:n-1);
fitness_tertinggi=hasil(1,n);

end

