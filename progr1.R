#Re-adapted from http://r-nold.blogspot.co.uk/2013/03/overlapping-histogram-in-r.html

#Random numbers
h2<-rnorm(1000,4)
h1<-rnorm(1000,6)

# Histogram Colored (blue and red)
hist(h1, col=rgb(1,0,0,0.5),xlim=c(0,10), ylim=c(0,200), main="Overlapping Histogram", xlab="Variable")
hist(h2, col=rgb(0,0,1,0.5), add=T)
box()
