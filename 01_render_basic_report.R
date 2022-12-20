
# Render R Markdown using R Script - Basic --------------------------------
# 2022-12-19
library(rmarkdown)
library(here)

# Basic Report ------------------------------------------------------------
# this .rmd file is self-contained and be also be run using the "Knit" button in RStudio.
render(
  input = here("rmd", "01_basic_report.rmd"),
  output_format = "html_document",
  output_file = paste0("01_basic_report_", Sys.Date()),
  output_dir = here("rmd_output"),
  clean = TRUE,
  quiet = FALSE,
  encoding = "UTF-8",
  params = NULL
)

