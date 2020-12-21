samplesize<-1000
group1_cog1<-rnorm(.6*samplesize,100,15)
group2_cog1<-rnorm(.1*samplesize,110,15)
group3_cog1<-rnorm(.2*samplesize,115,15)
group4_cog1<-rnorm(.1*samplesize,115,15)

group1_cog2<-rnorm(.6*samplesize,80,15)
group2_cog2<-rnorm(.1*samplesize,80,15)
group3_cog2<-rnorm(.2*samplesize,85,15)
group4_cog2<-rnorm(.1*samplesize,85,15)


group1_cog3<-rnorm(.6*samplesize,20,15)
group2_cog3<-rnorm(.1*samplesize,10,15)
group3_cog3<-rnorm(.2*samplesize,35,15)
group4_cog3<-rnorm(.1*samplesize,30,15)



plotdata_wide<-data.frame(c(group1_cog1,group2_cog1,group3_cog1,group4_cog1),
                          c(group1_cog2,group2_cog2,group3_cog2,group4_cog2),
                          c(group1_cog3,group2_cog3,group3_cog3,group4_cog3),
                          c(rep('group1',times=.6*samplesize),rep('group2',times=.1*samplesize),rep('group3',times=.2*samplesize),rep('group4',times=.1*samplesize))
)

colnames(plotdata_wide)<-c('cog1','cog2','cog3','group')

plotdata_long<-melt(plotdata_wide)
f1 <- ggplot(plotdata_long,aes(value,group=group,fill=group))+
  geom_jitter(data = plotdata_long, aes(value,y=-0.01, color=group), height = 0.005, alpha = .5) + ##added
  geom_density(adjust=2,alpha=.1)+
  geom_histogram(aes(y=..density..),binwidth=5, alpha = .4) +
  facet_grid(group~variable)+
  theme_classic(base_size=22)
f1

png("4*3_raincloud.png", type = "cairo")
print(f1)
dev.off()

ggsave('4*3_rainclouds.pdf')


#or just grab 1
ggplot(dplyr::filter(plotdata_long,variable=='cog1'),aes(value,fill=group)) +
  geom_jitter(data = plotdata_long %>% filter(variable=='cog1'),aes(value,y=-0.01), height = 0.005, alpha = .3) + ##added
  geom_density(adjust=2,alpha=.6) +
  theme_classic(base_size=12) +
  facet_wrap(~group,ncol=1) #+

ggsave("cog1_raincloud.png", dpi = 300)


capabilities()

png("abc", type = "cairo")

dev.off()

data = d %>% filter(x =="1"), aes(x = xj), color = 'dodgerblue', size = 1.5, 
           alpha = .6) +