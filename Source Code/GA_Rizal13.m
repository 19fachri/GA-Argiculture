%membaca data pada excel
data=xlsread('data.xlsx','c1:e6');

%memasukkan modal dan luas lahan pemilik
modal=50000;
lahan=10;

%memulai perhitungan GA
[produk, perhitungan, generasi, statistik_fitness]=GA(modal,lahan,data);

%menampilkan hasil
display(produk);
display(perhitungan);
display(generasi);
bar(statistik_fitness);
