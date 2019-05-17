#Book of R excercices
##### section 2 ####
#2.1
#a
a <- 2.3
(6*a+42)/3^(4.2-3.62)

#b
(-4)^2+2

#c
sqrt(((25.2+15+16.44+15.3+18.6)/5)/2)

#d
log(x=0.3)
x <- log(0.3)
#e
exp(log(x=0.3))
exp(x=-1.203973)
exp(x)

#f
x<- -0.00000000423546322
x

##2.2
#a
x <- (3^2)*4^(2/8)

#b
x <- x/2.33
x

#c
y <- -(8.2)*10^-(13)

#d
x*y

##2.3
#a
my_seq <- seq(from = 5, to = -11, by = -0.3)
my_seq

#b
my_seq <- sort(my_seq, decreasing = FALSE)
my_seq

#c
my_vector <- rep(c(-1,3,-5,7,-9), times=10)
sort(my_vector, decreasing = TRUE)
length(my_vector)
#d
my_vectorD<-c(6:12,rep(5.4,times=3),-3,seq(from=102,to=length(my_vector),
                                                        length.out=9))

#c
length(my_vectorD)

##2.4
#a 
my_vector <- c(seq(from=3,to=6,length.out=5),rep(c(2,-5.1,-33),times=2),7/42+2)
foo
#b
new_vector <- my_vector[c(1,length(my_vector))]
bar 
#c
new_vector2 <- my_vector[c(-1,-length(my_vector))]
baz
#d
recreated_vector <- c(new_vector[1], new_vector2, new_vector[2])

#e
my_vector <- sort(my_vector, decreasing = FALSE)
my_vector

#f
my_vector[length(my_vector):1]
sort(my_vector, decreasing = TRUE)


#g
c(rep(new_vector2[3], 3), rep(new_vector2[6], 4), new_vector2[length(new_vector2)])

new_vector2[c(rep(3,3),rep(6,4),length(new_vector2))] #ALTERNATE WAY

#h
new_vector3 <- my_vector
new_vector3[c(1,5:7, length(my_vector))] <- 99:95
new_vector3

##2.5
#a
c(2,0.5,1,2,0.5,1,2,0.5,1)/c(2,0.5,1)
#This is because the first vector is a repeating number! Then the second vector
#gets reused!

#b
F <- c(45, 77, 20, 19, 101, 120, 212)
(5/9)*(F-32)

#c
rep(x=c(2,4,6),times=2) #repeats the vector once after the first
rep(x=c(1,2),each=3) #repeats 1 three times, and then 2 three times
vector <- rep(x=c(2,4,6),times=2)*rep(x=c(1,2),each=3)
vector

#d
vector
vector[-c(1,6)]
vector[-c(1,6)] <- c(-0.1, -100)
vector

##### section 3 ####
##3.1
#a
my_matrix <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), 4, 2)
my_matrix

#b
dim(my_matrix[-4,]) 

#c
my_matrix[,2] <- sort(my_matrix[,2])
my_matrix

#d
my_matrix[-4,-1] #R returns what essentially is a vector

#e
my_matrix2 <- my_matrix[3:4,1:2]
dim(my_matrix2)

#f
my_matrix
my_matrix[c(4,1),2:1] <- -(1/2)*diag(my_matrix2)

#3.2
#a
my_matrix <- matrix(c(1,2,7,2,4,6), 3, 2)
my_matrix2 <- matrix(c(10,30,50,20,40,60), 3, 2)
2/7*(my_matrix-my_matrix2)

#ALTERNATE SOLUTION:
2/7*(cbind(c(1,2,7),c(2,4,6))-cbind(c(10,30,50),c(20,40,60)))

#b
A<- cbind(c(1,2,7))
B<- cbind(c(3,4,8))
#i
A*B     #the book says this is not possible, why? This uses a "scalar"
        #multiplication, which multiplies an entry with the corresponding index
        #entry in the other matrix. So, A[1,1] gets multiplied by B[1,1].
        #
        #The book uses a matrix product operator, %*%, which multiplies the 
        #in another way. WHY this is used I dont know
#ii
t(A)*B 
#does not work since t(A) transposes it to a vector length instead of column
#iii
t(B)*(A*t(A)) #Does not work for the same reason
#iv
(A*t(A))*t(B) #Same
#v
((B*t(B))+A*t(A)-100*solve(A))^-(1)

#THIS USES MATRIX PRODUCT OPERATOR, AND THEN ALL THE WIERD ONES WORK
##(i) Not possible
##(ii)
t(A)%*%B
##(iii)
t(B)%*%(A%*%t(A))
##(iv) Not possible
##(v)
solve(B%*%t(B)+A%*%t(A)-100*diag(3))

#c
A <- rbind(c(2,0,0,0),c(0,3,0,0),c(0,0,5,0),c(0,0,0,-1))
solve(A)%*%A-diag(4) 
#Solve(A) is an inverted matrix, while A-diag(4) is an identity matrix

#3.3
#a
my_array <- array(data=seq(from=4.8,to=0.1,length.out=48),dim=c(4,2,6))
#This creates an array with the dimensions 4,2,6, and fills it with data from
#4.8 to 0.1 in 48 steps

#b
my_array2 <- my_array[]




##### section 4 ####
