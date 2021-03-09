'''
This script takes the list of high schools in the United States from the below TikTok link from Emily Carey.
https://vm.tiktok.com/ZMersQLqR/

It will randomly choose a school from the list to eliminate. Then, only one school will be left standing...Go Irish!
'''

df <- read.csv('C:\\Users\\Jed\\iCloudDrive\\Documents\\Learn\\R\\Go Irish\\All High Schools in the USA for Tik Tok - Final.csv')[, 1]
end <- length(df) - 1
rip <- character()
for (i in 1:end) {
  remove <- sample(1:length(df), 1)
  print(paste('Removing #', i, ' - ', df[c(remove)], '. ', length(df) - 1, ' school(s) remain.', sep = ''))
  df <- df[-c(remove)]
  rip <- c(rip, df[remove])
}
print(paste('The last school standing is:', df))