library(readxl)

population <-read_excel("~/DataVizards_FinalDataFrame.xlsx")

population

region26 <- read_excel("~/DataVizards_FinalDataFrame.xlsx", sheet = "26 Bölge")

migration<- read_excel("~/DataVizards_FinalDataFrame.xlsx", sheet = "Göç Bilgileri")
migration

population$`Bölge 2 İd`<- ""
for (i in 1:nrow(population)) {
  city <- population$City[i]
  
  for (j in 1:length(region26$Bölge)) {
    if (grepl(city, region26$Bölge[j])) {
      population$`Bölge 2 İd`[i] <- paste(region26$`Bölge 2 İd`[j])
      break 
    }
  }
}





