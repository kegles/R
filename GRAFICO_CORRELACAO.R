#
# Instalar os pacotes:
# install.packages("ggpubr","Hmisc", "corrplot","PerformanceAnalytics")   
#
# URL: https://www.rpubs.com/rcleoni/correlacao
#

# carregar o pacote
library(corrplot)

#carrega o arquivo
my_data <- read.csv(file=file.choose(),header=TRUE,sep=";")

#gera a matriz
corr<-cor(my_data,use="complete.obs")
corr1<-as.matrix(corr)

#imprime a matriz
head(corr1, 6)

#gera o gráfico
corrplot(corr1, type="lower")
