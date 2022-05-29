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

## Nomor 2
### A
Apakah Anda setuju dengan klaim tersebut?

*Setuju*
### B
![image](https://user-images.githubusercontent.com/72655925/170872914-a561b92f-2ffa-4dd9-9501-87a057ad2ff5.png)
Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900 Maka null hipotesis adalah
`H0 : μ = 20000`
Alternatif hipotesisnya yaitu
`H1 : μ > 20000`

### C
Nilai dari P adalah 1
`P(Z > 8.9744) = 1 - P(Z < 8.977)
= 1 - 1
= 0
Oleh karena itu, Hipotesis awal (H0) bahwa "Mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun" diterima.

## 3
### A
H0 dan H1 dilakukan perhitungan H0 sebagai berikut
![image](https://user-images.githubusercontent.com/72655925/170874497-300f8856-b58f-43e3-a2b7-d114869bf4ef.png)
dilakukan perhitungan H1 sebagai berikut
![image](https://user-images.githubusercontent.com/72655925/170874556-095c8f1f-0691-46de-8352-855b731d44cd.png)

### B
 Untuk menghitung Sampel Statistik dapat menggunakan fungsi `tsum.test` yaitu sebagai berikut
![image]( https://user-images.githubusercontent.com/72655925/170874105-220ea352-7bb0-44a2-a6e8-bec890b7519b.png)

### C
lakukan uji statistik (df=2)
![image](https://user-images.githubusercontent.com/72655925/170874762-61908432-1e72-46ec-b358-ec982272b797.png)

### D
 Nilai Kritikal Untuk menghitung sampel statistik dapat dicari menggunakan fungsi qchisq dengan df=2 
Sehingga Hasilnya sebagai berikut:
![image](https://user-images.githubusercontent.com/72655925/170874399-3dba2267-fd33-4e38-9ab9-84354d9593ae.png)

### E
 Keputusan Untuk mendapatkan keputusan diperlukan bantuan dengan Teori Keputusan

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : `({a}_{a∈A})` Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan) Maka keputusan dapat dibuat dengan `t.test`
### F
Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

## 4
### A
Subjek 3 grup
grup 1

![image](https://user-images.githubusercontent.com/72655925/170875305-48ab9919-a20d-4971-9ea9-d58b8d888b8b.png)

grup 2

![image](https://user-images.githubusercontent.com/72655925/170875342-e77be3fa-25a3-4d61-ae77-4eaa67ed681e.png)

grup 3

![image](https://user-images.githubusercontent.com/72655925/170875393-43fc11dd-5e8f-4966-aed4-5226322f4133.png)

### B-E
![image](https://user-images.githubusercontent.com/72655925/170875507-78539c98-0e08-4b50-a48e-389ec68506c2.png)

## 5
### A
Simple plot
![image](https://user-images.githubusercontent.com/72655925/170875869-2bbfc19f-8475-4515-8e87-f4a4468bb2c7.png)

### B
Uji anova 2 arah
![image](https://user-images.githubusercontent.com/72655925/170875954-f1183b09-818e-4cbe-ab5e-c969ceb06b66.png)
### C
Tabel dengan mean dan standar deviasi cahaya
![image](https://user-images.githubusercontent.com/72655925/170876124-0429dc96-ace2-4cc4-b8c9-8d429d46f6a9.png)
### D
Tukey test
![image](https://user-images.githubusercontent.com/72655925/170876226-64be4423-ed57-4d2a-a2fb-0715918342dd.png)

### E
Compact Letter Display
![image](https://user-images.githubusercontent.com/72655925/170876323-1c058b45-a49e-46b5-891e-01a0454ed38a.png)
