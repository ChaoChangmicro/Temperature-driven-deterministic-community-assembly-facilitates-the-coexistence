library(vegan) 
#加载工作目录，这里需要更换为你自己的
#加载otu表
otutab = read.delim("./otutab.txt", row.names=1)
#求和查看每个样本的和
colSums(otutab)
#使用该代码进行抽平

m=c(1:100)
out <- vector("list", length(m))
for (i in m) {
  out[[i]] <- as.data.frame(t(rrarefy(t(otutab), min(colSums(otutab)))))
  }

str(out)

t=c(2:100)
bb <- out[[1]]
for(j in t){
  bb=bb+out[[j]]
  j=j+1 }

cc <- bb/100
result <- as.data.frame(round(cc))
colSums(result) 
write.csv(result,file ="asv100.csv" )
 # mean <-(out[[1]]+out[[2]]+out[[3]]+out[[4]]+out[[5]]+
 #   out[[6]]+out[[7]]+out[[8]]+out[[9]]+out[[10]]+
 #  out[[11]]+out[[12]]+out[[13]]+out[[14]]+out[[15]]+
 #  out[[16]]+out[[17]]+out[[18]]+out[[19]]+out[[20]]+
 #  out[[21]]+out[[22]]+out[[23]]+out[[24]]+out[[25]]+
 #  out[[26]]+out[[27]]+out[[28]]+out[[29]]+out[[30]]+
 #  out[[31]]+out[[32]]+out[[33]]+out[[34]]+out[[35]]+
 #  out[[36]]+out[[37]]+out[[38]]+out[[39]]+out[[40]]+
 #  out[[41]]+out[[42]]+out[[43]]+out[[44]]+out[[45]]+
 #  out[[46]]+out[[47]]+out[[48]]+out[[49]]+out[[50]]+
 #  out[[51]]+out[[52]]+out[[53]]+out[[54]]+out[[55]]+
 #  out[[56]]+out[[57]]+out[[58]]+out[[59]]+out[[60]]+
 #  out[[61]]+out[[62]]+out[[63]]+out[[64]]+out[[65]]+
 #  out[[66]]+out[[67]]+out[[68]]+out[[69]]+out[[70]]+
 #  out[[71]]+out[[72]]+out[[73]]+out[[74]]+out[[75]]+
 #  out[[76]]+out[[77]]+out[[78]]+out[[79]]+out[[80]]+
 #  out[[81]]+out[[82]]+out[[83]]+out[[84]]+out[[85]]+
 #  out[[86]]+out[[87]]+out[[88]]+out[[89]]+out[[90]]+
 #  out[[91]]+out[[92]]+out[[93]]+out[[94]]+out[[95]]+
 #  out[[96]]+out[[97]]+out[[98]]+out[[99]]+out[[100]])/100

#  mean
#  result <- as.data.frame(round( mean))
# colSums(result) 
# write.csv(result,file ="asv100.csv" )
