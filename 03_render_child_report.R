
# Render R Markdown using R Script - Parameterized ------------------------
# 2022-12-19

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(janitor)
library(lubridate)
library(rmarkdown)
library(here)

d0 <- read_csv(here("data", "pho_data_tool_case_trends_2022-12-19.csv"))
d0 <- clean_names(d0)

d <- d0 %>% 
  mutate(new_date = as.Date(date, format = "%B %d, %Y")) %>% 
  mutate(across(where(is.character), ~ifelse(. == "-", NA, .))) %>% 
  mutate(yr = year(new_date)) %>% 
  mutate(z = as.numeric(format(new_date, "%m%d"))) %>% 
  group_by(yr) %>% 
  mutate(day = row_number() + min(z) - 99) %>% 
  ungroup() %>% 
  mutate(day = yday(new_date)) %>% 
  mutate(out_date = format(new_date, "%b %d")) %>% 
  select(new_date, public_health_unit, yr, day, out_date, matches("^cases|hosp|death")) 


# Parameterized Report ----------------------------------------------------
# pass parameters into R Markdown file, in example is year
wd <- here::here()
year_input <- 2020
render(
    input = here("rmd", "03_child_report.rmd"),
    output_format = "html_document",
    output_file = paste0("COVID_measures_ON_", year_input, "_", Sys.Date()),
    output_dir = here("rmd_output"),
    clean = TRUE,
    quiet = FALSE,
    encoding = "UTF-8",
    params = list(
      yr = year_input
    )
  )

