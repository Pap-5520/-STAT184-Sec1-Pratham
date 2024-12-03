library(dplyr)
library(janitor)
library(knitr)
library(kableExtra)

file_path <- "/Users/prathampatel/Desktop/individualSoldiers.csv"

soldiers_data <- read.csv(file_path)

male_table <- soldiers_data %>%
  filter(Gender == "Male") %>%
  tabyl(Rank, Branch) %>%
  adorn_totals(where = c("row", "col")) %>%
  adorn_percentages(denominator = "all") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns(position = "front") %>%
  adorn_title("combined")

male_freq_table <- male_table %>%
  kable(caption = "Frequency Table for Male Soldiers (Rank by Branch with Absolute and Relative Frequencies)") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = FALSE, font_size = 14) %>%
  row_spec(nrow(male_table), bold = TRUE, background = "lightpink") %>%
  column_spec(1, width = "3cm")

female_table <- soldiers_data %>%
  filter(Gender == "Female") %>%
  tabyl(Rank, Branch) %>%
  adorn_totals(where = c("row", "col")) %>%
  adorn_percentages(denominator = "all") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns(position = "front") %>%
  adorn_title("combined")

female_freq_table <- female_table %>%
  kable(caption = "Frequency Table for Female Soldiers (Rank by Branch with Absolute and Relative Frequencies)") %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"), full_width = FALSE, font_size = 14) %>%
  row_spec(nrow(female_table), bold = TRUE, background = "lightgreen") %>%
  column_spec(1, width = "3cm")

male_freq_table
female_freq_table
