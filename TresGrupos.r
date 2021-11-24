#Luis Fernando Amador Beltrán
#tasa de aprendizaje 0.01
#4 capas ocultas

Data <- read.csv("C:/users/lui_1/Desktop/tresgrupos.csv")
names(Data) <- c("x1", "x2", "y1", "y2", "y3")

head(Data)

#install.packages("neuralnet", dependencies = TRUE)
library(neuralnet)

Train <- Data

mod1 <- neuralnet(y1 + y2 + y3 ~ x1 + x2, Train, hidden = 4)

#install.packages("ggplot2", dependencies = TRUE)

plot(mod1)
Predict.Test <- compute(mod1, Data)

print(data.frame(Data[c("y1","y2","y3")], Predict.Test$net.result))
