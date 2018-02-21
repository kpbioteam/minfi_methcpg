require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output1 = args[2]
output2 = args[3]

MSet <- get(load(input))

getMeth <- getMeth(MSet)
getUnmeth <- getUnmeth(MSet)

write.table(getMeth, output1)
write.table(getUnmeth, output2)
