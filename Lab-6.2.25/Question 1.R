values <- c(1:12)
dims <- c(3, 2, 2)
dimnames_list <- list(c("Row1", "Row2", "Row3"), c("Col1", "Col2"), c("Table1", "Table2"))
my_array <- array(values, dim = dims, dimnames = dimnames_list)
print(my_array)