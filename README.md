# Using R Markdown for Epidemiological Reports

This repo contains an example workflow of using R and [R Markdown](https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-process.html) to create epidemiological reports. These reports contain broef summaries and figures using publicly available COVID-19 data from Ontario, Canada. The underlying data can be accessed at [Public Health Ontario's Data Tool](https://www.publichealthontario.ca/en/data-and-analysis/infectious-disease/covid-19-data-surveillance/covid-19-data-tool?tab=trends). Current outputs only include `.html` file format.

Three examples are included:
 1. A self-contained R Markdown report using both the `Knit` button and `rmarkdown::render()` to describe hospitalization trends by year.
 2. [Parameterized](https://bookdown.org/yihui/rmarkdown-cookbook/parameterized-reports.html) R Markdown to create multiple reports describing hospitalization trends by year for a specific jurisdiction (e.g. local public health unit)
 3. R Markdown report with [child document](https://bookdown.org/yihui/rmarkdown-cookbook/child-document.html) to create a larger report with information on case, hospitalization, and death trends by year.

An example of hospitalizations trends by year is below. Caution should be exercised with interpreting these figures as reporting has changes throughout the COVID-19 pandemic.

## COVID-19 Hospitalizations in Ontario across 2020, 2021, and 2022
![download (1)](https://user-images.githubusercontent.com/24900779/210120992-cb34a570-b046-4c85-b5e3-3e2f77aee39f.png)
