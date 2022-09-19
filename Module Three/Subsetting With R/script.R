library(tidyverse)
library(rio)
library(skimr)

df <- mtcars
head(df, 10)
tail(df)

nrow(df)
ncol(df)
dim(df)

glimpse(df)

df_samp <- slice_sample(df, n = 3)
df_samp2 <- slice_sample(df, prop = .2)

skim(df)

df2 <- as.data.frame(df)


tbl <- tibble(df)

tbl <- rownames_to_column(df, "car")
tbl <- rename(tbl, MPG = mpg)
tbl <- rename_with(tbl, tolower)

#Part Two
cars <- mtcars
cars$mpg
mpg <- cars$mpg
cars$mpgBywt <- cars$mpg/cars$wt

pull(cars, mpg)
mpg <- select(cars, -wt)


ndf <- cars %>% 
       select(-ends_with("t"))

#part three
cars <- mtcars

list <- c(20, 21, 22)
subst <- cars %>% 
         filter(mpg %in% list)

subst <- cars %>% 
  filter(mpg >20 | cyl == 4)


which(select(cars,cyl) == 4)

#Part Four

subst <- cars %>% 
         filter(mpg > 20 & cyl == 4) %>% 
         select(cyl, hp)

subst <- cars %>% 
  filter(mpg > 20 & cyl == 4) %>% 
  select(cyl, hp)  %>% 
  mutate(cylByhp = cyl*hp) %>% 
  select(hp, cyl, cylByhp)

subst <- cars %>% 
  filter(mpg > 20 & cyl == 4) %>% 
  relocate(wt, .before=mpg) %>% 
  arrange(desc(wt))
