> nums <- c(10,20,35, 40)
> mean(nums)
[1] 26.25
> df <- data.frame(nums, name = c("Tim", "Bob", "John", "Lyle"))
> df filter(nums > 30)
Error: unexpected symbol in "df filter"
> library(tidyverse)
── Attaching core tidyverse packages ───────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ readr     2.1.5
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   3.5.2     ✔ tibble    3.2.1
✔ lubridate 1.9.4     ✔ tidyr     1.3.1
✔ purrr     1.0.4     
── Conflicts ─────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
> df %>% filer(nums > 30)
Error in filer(., nums > 30) : could not find function "filer"
> df %>% filter(nums > 30)
nums name
1   35 John
2   40 Lyle
> ggplot(df, aes(x = name, y = nums)) + geom_col()
> df <- df %>% mutate (above_avg = nums - mean(nums))
> df <- df %>%
  +     mutate(
    +         above_avg = nums - mean(nums)
    +     )
> 
  > print(df)
nums name above_avg
1   10  Tim    -16.25
2   20  Bob     -6.25
3   35 John      8.75
4   40 Lyle     13.75
> ggplot(df, aes(x = name, y = nums)) +
  +     geom_col(fill = "steelblue") +
  +     geom_text(aes(label = round(above_avg, 1)), vjust = -0.5) +
  +     labs(title = "How Far Above Average Each Value Is")
> 
  > df %>%
  +     mutate(above_avg = nums - mean(nums)) %>%
  +     ggplot(aes(x = reorder(name, nums), y = nums)) +
  +     geom_col(fill = "darkgreen") +
  +     geom_text(aes(label = round(above_avg, 1)), vjust = -0.5)
> 
  > + coord_flip()
Error in `+.gg`:
  ! Cannot use `+` with a single argument.
ℹ Did you accidentally put `+` on a new line?
  Run `rlang::last_trace()` to see where the error occurred.
> df %>%
  +     filter(nums > mean(nums))
nums name above_avg
1   35 John      8.75
2   40 Lyle     13.75
> 
  > scores <- c(82, 95, 68, 77, 91)
> names <- c("Alice", "Bob", "Carla", "Derek", "Eva")
> df <- data.frame(name = names, score = scores)
> 
  > df <- df %>% mutate(above_avg = scores - mean(scores))
> df %>% filter(scores > mean(scores))
name score above_avg
1  Bob    95      12.4
2  Eva    91       8.4
> ggplot(df, aes(x = names, y = scores)) + geom_col(fill = pink) + geom_text(aes(label( = round(above_avg, 1)), vjust = -0.5) + coord_flip())
Error: unexpected '=' in "ggplot(df, aes(x = names, y = scores)) + geom_col(fill = pink) + geom_text(aes(label( ="
> > ggplot(df, aes(x = names, y = scores)) + geom_col(fill = pink) + geom_text(aes(label( = round(above_avg, 1))), vjust = -0.5) + coord_flip())
Error: unexpected '>' in ">"
> ggplot(df, aes(x = names, y = scores)) + geom_col(fill = pink) + geom_text(aes(label( = round(above_avg, 1))), vjust = -0.5) + coord_flip())
Error: unexpected '=' in "ggplot(df, aes(x = names, y = scores)) + geom_col(fill = pink) + geom_text(aes(label( ="
> ggplot(df, aes(x = names, y = scores)) + geom_col(fill = "pink"") + geom_text(aes(label = round(above_avg, 1))), vjust = -0.5) + coord_flip()
+ 
+ 
> ggplot(df, aes(x = names, y = scores)) +
+     geom_col(fill = "pink") +
+     geom_text(aes(label = round(above_avg, 1)), vjust = -0.5) +
+     coord_flip()
> 