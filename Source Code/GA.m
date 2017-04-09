function [ produk, perhitungan, generasi, statistik_fitness ] = GA( modal, lahan, data )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%representasi kromosom
popAwal=randi([0,10],100,5);

a=1;
while a<1000
    %evaluasi dengan menghitung fitness
    fitness=evaluasi_fitness(popAwal,data,modal,lahan);
    
    %mendapatkan satu individu dan fitness terbaik
    [indiv_terkuat, fitness_tertinggi]=terbaik(popAwal,fitness);
    
    %menyimpan fitness terbaik pada setiap generasi
    if a==1
        stat_fit=fitness_tertinggi(1,:);
    else
        stat_fit=[stat_fit; fitness_tertinggi(1,:)];
    end
    
    %cek data
    hasil = indiv_terkuat*data;
    if hasil(1,1)<modal && hasil(1,2)<lahan && hasil(1,3)>hasil(1,1)*(1.1)
        break;
    end

    %seleksi roulette wheel
    prob_kom=seleksi_roulette_wheel(popAwal, fitness);

    %crossover
    pop_cross=crossOver(popAwal, prob_kom);
    
    %mutasi
    pop_mut=mutasi(pop_cross);

    %populasi baru
    popBaru=pop_mut;
    
    popAwal=popBaru;
    a=a+1;
end
%mengembalikan hasil
produk=indiv_terkuat;
perhitungan=indiv_terkuat*data;
generasi=a;
statistik_fitness=stat_fit;
end