fileName="../words.txt"
res <- readLines(fileName)
h <- new.env(hash=T, parent=emptyenv())

for (r in res){
    sortedWord = paste(sort(unlist(strsplit(r, ""))), collapse = "")
    h[[sortedWord]] = paste(h[[sortedWord]],r)
}

for (v in ls(h)) {
    cat(paste(h[[v]], '\n'))
}

