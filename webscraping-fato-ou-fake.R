
################################################################
###                                                          ###
###                       Fato ou Fake                       ###
###                                                          ###
###                      gabriela caesar                     ###
###                                                          ###
################################################################

################################################################
###                 Inclus�o de checagem nova                ###
################################################################


library(tidyverse)
library(rvest)
library(xml2)


# xpath
# /html/body/div[2]/main/div[4]/article/div[4]/div[52]/blockquote
# /html/body/div[2]/main/div[4]/article/div[4]/div[17]/p
# /html/body/div[2]/main/div[4]/article/div[4]/div[24]/p

url <- "https://g1.globo.com/fato-ou-fake/noticia/2018/10/05/veja-o-que-e-fato-ou-fake-nas-falas-dos-presidenciaveis-no-debate-da-globo.ghtml"

titulo <- url %>%
  read_html() %>%
  html_nodes("h1.content-head__title") %>%
  html_text()

titulo

#

data <- url %>%
  read_html() %>%
  html_nodes("p.content-publication-data__updated") %>%
  html_text() %>%
  str_split(" ") %>%
  as.data.frame() %>%
  `colnames<-`("data") %>%
  .[3,] %>%
  as.data.frame()

data

#
#
hora <- url %>%
  read_html() %>%
  html_nodes("p.content-publication-data__updated") %>%
  html_text() %>%
  str_split(" ") %>%
  as.data.frame() %>%
  `colnames<-`("hora") %>%
  .[4,] %>%
  as.data.frame()

hora

#

autor <- url %>%
  read_html() %>%
  html_nodes("h2") %>%
  html_text()
autor

#

frase <- url %>%
  read_html() %>%
  html_nodes("blockquote.content-blockquote.theme-border-color-primary-before") %>%
  html_text() %>%
  str_remove_all('\"') %>%
  str_remove_all('"')
frase

#

rotulo <- url %>%
  read_html() %>%
  html_nodes("strong") %>%
  html_text() %>%
  str_remove_all("A declara��o � ") %>%
  str_remove_all(". Veja o porqu�:") %>%
  str_trim() %>%
  `colnames<-`("rotulo") %>%
  filter(rotulo == "#FATO",
         rotulo == "#FAKE",
         rotulo == "#N�O�BEMASSIM")
rotulo

# ou pegar textos / p / div que aparecem depois de quote ou img

texto <- url %>%
  read_html() %>%
  html_nodes("p.content-text__container") %>%
  html_text() %>%
  str_remove_all("A declara��o � #FAKE. Veja o porqu�:") %>%
  str_remove_all("A declara��o � #FATO. Veja o porqu�:") %>%
  str_remove_all("#N�O�BEMASSIM. Veja o porqu�:") %>%
  str_trim() %>%
  as.data.frame()
texto