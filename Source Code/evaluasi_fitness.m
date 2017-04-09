function [ output ] = evaluasi_fitness( populasi, data, modal, lahan )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(populasi);

%mengalikan populasi dengan data
hasil = populasi*data;

%membuat temperory untuk menyimpan fitness
fitness=zeros(m,1);

for i=1:m
    %aturan untuk selisih modal
    if hasil(i,1)>modal && hasil(i,1)<modal*2
        selisih_modal=(hasil(i,1)-modal)/modal;
    elseif hasil(i,1)<modal
        selisih_modal=0;
    else
        selisih_modal=1;
    end
    
    %aturan untuk selisih lahan
    if hasil(i,2)>lahan && hasil(i,2)<lahan*2
        selisih_lahan=(hasil(i,2)-lahan)/lahan;
    elseif hasil(i,2)<lahan
        selisih_lahan=0;
    else
        selisih_lahan=1;
    end
    
    %aturan untuk keuntungan
    if selisih_modal==0 && selisih_lahan==0
        keuntungan=hasil(i,3);
    else
        keuntungan=1;
    end;
    
    %menghitung fitness
    fitness(i,1)=(2-selisih_modal-selisih_lahan)*keuntungan;
end

output=fitness;
end

