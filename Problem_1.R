## NOTE: readability: leave some blank linkes between the code to make it more readable

# (a)
x<-c(4,1,1,4)
x

# (b)
y<-c(1,4)
y

# (c)
z<-x-y
z

# R takes the shorter vector (y) and makes it as long as x - recycling; 
# the result is a new vector (z) where each element of x is diminished with the correspondig element in y
# (d)
s<-c(x,y)
s

# (e)
rep(s,10)
length(rep(s,10))

# (f)
rep(s,each=3)

# (g) i)seq

## NOTE: by = 1 is the default

seq(7,21,by=1)

# (g) ii):
7:21

# (h)
length(seq(7,21,by=1))

