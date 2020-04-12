library(RefManageR)
library(here)

BibOptions(check.entries = FALSE,
           bib.style = "authoryear",
           cite.style = "alphabetic",
           style = "markdown",
           first.inits = FALSE,
           hyperlink = "to.doc",
           dashed = TRUE,
           max.names = 2)

path_bib <- here::here("content", "xaringa", "references.bib")
my_refs <- RefManageR::ReadBib(path_bib, check = FALSE, .Encoding = "UTF-8")
