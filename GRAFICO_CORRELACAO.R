#
# Instalar os pacotes:
# install.packages("ggpubr","Hmisc", "corrplot","PerformanceAnalytics")   
#
# URL: https://www.rpubs.com/rcleoni/correlacao
#

#limpa o terminal
cls <- function() {       
  require(rcom)       
  wsh <- comCreateObject("Wscript.Shell")       
  comInvoke(wsh, "SendKeys", "\014")       
  invisible(wsh)
}
cls()

#carregar o pacote corrplot
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
