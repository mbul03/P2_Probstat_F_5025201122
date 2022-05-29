# Nama : Marsyavero Charisyah Putra
# NRP : 5025201122
# Kelas : Probstat F

# No. 1
# A
sebelum <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
sesudah <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

standdev_sebelum <- sd(sebelum)
print(standdev_sebelum)

standdev_sesudah <- sd(sesudah)
print(standdev_sesudah)

standdev_soal1<- sd(sebelum - sesudah)
print(standdev_soal1)

# B
t.test(sebelum, sesudah, alternative = "greater", var.equal = FALSE)

# C
var.test(sebelum, sesudah)

t.test(sebelum, sesudah, mu = 0, alternative = "two.sided", var.equal = TRUE)

# No. 2
# A
# Setuju

# B 
install.packages("BSDA")
library(BSDA)

tsum.test(mean.x=23500, sd(3900), n.x=100)

# C
# Jawaban di README

# No.3
# A
# H0 dan H1
# H0 = 9.50 && H1 = 10.98


# B
# Hitung Sampel Statistik

tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# C
# Lakukan Uji Statistik (df = 2)

install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="orange")

# D
# Nilai Kritikal

qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# E
# Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. 

# F
# Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

# NO.4
dataoneway <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt",h=T)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("Grup 1", "Grup 2", "Grup 3"))

class(dataoneway$Group)

# A

Group1 <- subset(dataoneway, Group == "Grup 1")
Group2 <- subset(dataoneway, Group == "Grup 2")
Group3 <- subset(dataoneway, Group == "Grup 3")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# B
bartlett.test(Length ~ Group, data = dataoneway)

# C
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

#D
# nilai p adalah 0.8054, maka H0 ditolak

# E
# Post-hoc test Tukey HSD
TukeyHSD(aov(model1))
# hasil dari test post-hoc model 1 adalah grup 1 lebih panjang
# dari grup yang lain
#Data visualisation

# No.5

library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)
# A
# plot sederhana
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

#variabel untuk anova
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

# B
# uji anova dua arah
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# C
# tabel dengan mean dan standar deviasi keluaran cahaya
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# D
# Tukey's test
print("Uji Tukey:")
tukey <- TukeyHSD(anova)
print(tukey)

# E
# compact letter display
print("Compact Letter Display:")
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)