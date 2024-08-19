#作業ディレクトリの変更　「Session」→「Set Working Directory」→「Choose Directory」

#tidyverseパッケージの読み込み
library(tidyverse)
library(dplyr)
#１.生データを読み込みなさい
#パスに\を追加する
#２.semester_dummy_1.csvについては、1⾏⽬を列名としなさい skip=1で一行目削除
sd1 <- read.csv("C:\\Users\\poohm\\OneDrive\\デスクトップ\\warmup training package\\01_data\\raw\\semester_dummy\\semester_data_1.csv",skip=1)
sd2 <- read.csv("C:\\Users\\poohm\\OneDrive\\デスクトップ\\warmup training package\\01_data\\raw\\semester_dummy\\semester_data_2.csv")
names(sd1)

#３.2つのデータを適切に結合しなさい　ヒント：型に注意
names(sd2)
sd2_1 <- rename(sd2,unitid=x1,instnm=x2,semester=x3,quarter=x4,year=x5,Y=x6) #列名を変更
head(sd2_1)

semester_data <- bind_rows(sd1,sd2_1)　#２つのデータを結合
semester_data
