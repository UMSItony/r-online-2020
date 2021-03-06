# Missing values answer

# Some reminders:
x <- c(NA, 2, NA, 4, NA, 6, NA)
is.na(x)  # boolean vector: which are missing?
sum(is.na(x))  # how many are missing
sum(!is.na(x))  # how many are not missing?
x[!is.na(x)]  # elements from x that are not missing
table(x)  # tally distinct values
table(x, useNA="ifany")  # tally and include NA as a category
x[is.na(x)] <- c(1, 3, 5, 7)  # replace missing values with other values
x  # see the change

# run this, then do the tasks below
set.seed(2345)
animals <- sample(c("pig", "cow", "horse", "duck", NA), 30, replace=TRUE)

# what did the above do?  investigate animals by displaying the contents and 
# getting the length
animals
length(animals)

# make a table animals to show counts of each type
# hint: option for showing missing was useNA="ifany"
table(animals, useNA="ifany")

# how many missing elements in animals?
sum(is.na(animals))

# how many elements are not missing?
# hint: ! is not, and can go in front of is.na
sum(!is.na(animals))

# drop the missing values from animals
# hint: select from animals the not missing animals
animals[!is.na(animals)]

# to actually change animals: 
animals <- animals[!is.na(animals)]
