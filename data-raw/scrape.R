library(tidyverse)

page <- xml2::read_html("https://dev.w3.org/html5/html-author/charref")
entities <- xml2::xml_find_all(page, ".//tr/td[2]")
descriptions <- xml2::xml_find_all(page, ".//tr/td[5]")

ents <- entities %>%
  xml2::xml_text() %>%
  map(str_split, " ") %>%
  map(flatten_chr) %>%
  map(1)

desc <- descriptions %>%
  xml2::xml_text() %>%
  str_trim() %>%
  tolower()

ents <- setNames(ents, desc)
devtools::use_data(ents)
