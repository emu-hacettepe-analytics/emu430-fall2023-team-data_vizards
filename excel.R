library(readxl)
library(tidyverse)

population <- read_excel("C:\\Users\\zeyne\\Desktop\\DataVizards_FinalDataFrame.xlsx")
region26 <- read_excel("C:\\Users\\zeyne\\Desktop\\DataVizards_FinalDataFrame.xlsx", sheet = "26 Bölge")
migration <- read_excel("C:\\Users\\zeyne\\Desktop\\DataVizards_FinalDataFrame.xlsx", sheet = "Göç Bilgileri")

migration %>% ggplot(aes(Kadın)) + geom_histogram()

region26 %>% ggplot(aes(Hanehalkı Kullanılabilir Gelire Göre(Gini Katsayısı),15-64 İşgücü(Bin)Kadın)) + geom_point(color="Bölge")


