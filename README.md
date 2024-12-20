# Introduction 
This repository focuses on transforming Armed Forces Active Duty data to analyze the distribution of female soldiers across ranks and branches. The assignment involved cleaning and reshaping a frequency table into a tidy data frame, combining it with rank and pay grade data scraped from a website for further analysis.
# Implementation 
The task was implemented in R using the following steps:

Data Preparation: Transformed the provided frequency table into a tidy data frame using basic data manipulation functions.

Web Scraping: Collected additional rank and pay grade data to augment the transformed dataset.

Challenges: Encountered challenges in ensuring the proper separation of values and maintaining simplicity. Resolved using manual iteration and precise column transformations.
```r
female_table <- soldiers_data %>%
  filter(Gender == "Female") %>%
  tabyl(Rank, Branch) %>%
  adorn_totals(where = c("row", "col")) %>%
  adorn_percentages(denominator = "all") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns(position = "front") %>%
  adorn_title("combined")
```

# Results 
The final analysis resulted in a tidy data frame with 240 rows and 5 columns, accurately representing individual soldier records. Below is an example visualization showcasing the distribution of female soldiers by rank:

<img width="699" alt="image" src="https://github.com/user-attachments/assets/8f30dc07-3d1f-4128-8cb4-3e9810d55211">

# Contact
For any inquiries, feel free to reach me at pap5520@psu.edu.
