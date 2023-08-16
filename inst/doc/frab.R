## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
options(rmarkdown.html_vignette.check_title = FALSE)
library("frab")
library("mvtnorm")
set.seed(1)

## ----label=badtables----------------------------------------------------------
xl <- c("a","a","b","c","d","d","a")
yl <- c("a","a","b","d","d","d","e")
zl <- c("a","a","b","d","d","e","f")
x <- table(xl)
y <- table(yl)
z <- table(zl)

## ----label=addtableswrong-----------------------------------------------------
x
y
x+y

## ----label=addtablesgiveserror,error=TRUE-------------------------------------
x
z
x+z

## -----------------------------------------------------------------------------
x <- c(a=1,b=2,c=3)
y <- c(c=4,b=1,a=1)

## -----------------------------------------------------------------------------
(x <- frab(c(a=1,b=2,d=7)))
(y <- frab(c(c=4,b=1,a=-1)))
x+y

## -----------------------------------------------------------------------------
x <- frab(c(x=5,d=1,e=2,f=4,a=3,c=3,g=9))
x
x>3
x<3
x[x>3]
x[x<3]
x[x<3] <- 100
x

## -----------------------------------------------------------------------------
a <- rfrab()
b <- table(sample(letters[1:8],12,replace=T))
a
b
a+b

## ----label=twodeetables-------------------------------------------------------
(x <- rspar2(9))
(y <- rspar2(9))
x+y

## ----label=threedeetables-----------------------------------------------------
A <- matrix(0.95,3,3)
diag(A) <- 1
x <- round(rmvnorm(300,mean=rep(10,3),sigma=A/7))
x[] <- letters[x]
head(x)
(sx  <- sparsetable(x))

## ----label=showthreedeeadd----------------------------------------------------
(sz <- sparsetable(matrix(sample(letters[9:11],12,replace=TRUE),ncol=3),1001:1004))

## ----label=usualsemantics-----------------------------------------------------
sx + sz

