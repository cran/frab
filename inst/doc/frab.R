## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
options(rmarkdown.html_vignette.check_title = FALSE)
library("frab")
library("mvtnorm")
set.seed(1)

## ----out.width='20%', out.extra='style="float:right; padding:10px"',echo=FALSE----
knitr::include_graphics(system.file("help/figures/frab.png", package = "frab"))

## ----label=badtables----------------------------------------------------------
x <- table(c("a","a","b","c","d","d","a"))
y <- table(c("a","a","b","d","d","d","e"))
z <- table(c("a","a","b","d","d","e","f"))

## ----label=addtableswrong-----------------------------------------------------
x
y
x+y

## ----label=addtablesgiveserror------------------------------------------------
x
z

## ----label=twonamedvectors----------------------------------------------------
x <- c(a=1,b=2,c=3)
y <- c(c=4,b=1,a=1)

## ----label=coercetofrabs------------------------------------------------------
(x <- frab(c(a=1,b=2,d=7)))
(y <- frab(c(c=4,b=1,a=-1)))
x+y

## ----label=showextraction-----------------------------------------------------
x <- frab(c(x=5,d=1,e=2,f=4,a=3,c=3,g=9))
x
x>3
x<3
x[x>3]
x[x<3]
x[x<3] <- 100
x

## ----label=showrfrab----------------------------------------------------------
a <- rfrab()
b <- table(sample(letters[1:8],12,replace=T))
a
b
a+b

## ----label=repeatedentries----------------------------------------------------
frab(c(a=4,b=2,a=1))

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

