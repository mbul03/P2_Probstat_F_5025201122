# P2_Probstat_F_5025201122
## Identitas
Nama : Marsyavero Charisyah Putra
NRP : 5025201122
Kelas : Probstat F

## Nomor 1
### A
Untuk mencari standar deviasi, dapat digunakan `sd()`. Data yang ada dimasukkan kedalam sd() dan kemudian dicari standar deviasinya. Sehingga akan didapatkan hasil sebagai berikut,
![image](https://user-images.githubusercontent.com/72655925/170872031-8ed8f743-7655-481f-b80f-27182904cf7d.png)

### B
Untuk mencari nilai `t (p-value)`, dapat digunakan `t.test()` dengan parameter `sebelum`, `sesudah`, `alternative = "greater"`, `var.equal = FALSE`. Hasilnya adalah sebagai berikut,
![image](https://user-images.githubusercontent.com/72655925/170872151-e2ce0de9-ad7b-4623-8463-1244f33020f1.png)

### C 
Mean dan confidence yang didapat sama dengan No. 1 B, yang berbeda adalah p-value dan df. Dari sini, dapat ditarik kesimpulan bahwa tidak ada pengaruh yang signifikan. Hal ini didapatkan dengan cara mengecek hasil perbandingan 2 variabel dengan `var.test()` dan melihat pengaruh tingkat signifikansi tersebut dengan `t.test()`.
![image](https://user-images.githubusercontent.com/72655925/170872287-f0903987-3c44-41b3-ac32-3bb9f08092fd.png)
