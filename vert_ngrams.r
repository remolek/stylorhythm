###################################
# A script to compute "vertical" n-grams
# (i.e. n-grams of the verse endings)
###################################

library(stylo)
setwd("data")

# define function to take the last n characters (and omit 'E')
# Adapted from: https://stackoverflow.com/questions/7963898/extracting-the-last-n-characters-from-a-string-in-r
substrRight <- function(x, n){
  substr(x, nchar(x)-n, nchar(x)-1)
}
# define function to do that for each line of a text
substrRightText <- function(x,n){
  sapply(x, function(y) substrRight(y,n),simplify = "array")
}
# load corpus
corpus=load.corpus(corpus.dir = "corpus/boen-aken")
# get the line endings
vcorpus=lapply(corpus, function(x) substrRightText(x,3))
# set word n-gram size here
vcorpus=lapply(vcorpus, function(x) make.ngrams(x,ngram.size = 2))
# pass it to stylo (it does not care about n-gram settings now)
res=stylo(parsed.corpus = vcorpus)
