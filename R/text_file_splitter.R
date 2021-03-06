# SAIL Labs
# ~Mihir

## Description:
##-------------
#* You can use this file to cut N rows from text files.
##-------------


library(NCmisc)
options(scipen = 9999)

#goes together with python file text_file_gatherer.py, duplicate_check_remove.R

# first read all the files in USC month folder (Give the path to folder, ending /)
setwd('./path_to_text_files/')

#filenames
files <- list.files( pattern="*txt$")

#split each file based on rows/size
for(i in seq_along(files)){
  
  file.split(files[i], size = 1000000,same.dir = F, 
             verbose = T,suf = "part", win = T)
}

setwd('..') #goes back once

#EOF
