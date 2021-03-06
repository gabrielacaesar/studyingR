# passo a passo
# importar um df com os links da API com as infos de cada deputado
# arquivo CSV em 'deputados' https://dadosabertos.camara.leg.br/swagger/api.html#staticfile
# mudar a coluna 'nome' para o nome de cada deputado em lower, sem acento, separado com traço

# acessar o xml e pegar a url dentro de 'urlFoto'
# salvar foto com o id de cada deputado
# repetir procedimento para cada um dos 513 deputados eleitos

# trocar o id de cada deputado por 'nome'


# etapa 1
## carregar as bibliotecas
install.packages("abjutils")
install.packages("stringr")
install.packages("XML")
install.packages("xml2")
install.packages("methods")
install.packages("httr")
install.packages("purrr")
library(dplyr)
library(readr)
library(readxl)
library(data.table)
library(abjutils)
library(stringr)
library(XML)
library(xml2)
library(methods)
library(httr)
library(jsonlite)
library(lubridate)
library(httr)
library(purrr)

getwd()
setwd("~/Downloads")

# importar o csv
deputados <- fread("deputados_26jun2019.csv", encoding = "UTF-8")

# filtrar pela atual legislatura
# tirar acentos e colocar em caixa baixa
# substituir espaço por traço
deputados_new <- deputados %>%
  filter(idLegislaturaFinal == 56) %>%
  mutate(nome = iconv(str_to_lower(nome), from = "UTF-8", to = "ascii//translit")) %>%
  mutate(nome = str_replace_all(nome, " ", "-")) %>%
  mutate(nome = str_replace_all(nome, "\\.", "")) %>%
  arrange(nome)


# deletar colunas desnecessárias
deputados$idLegislaturaInicial <- NULL
deputados$idLegislaturaFinal <- NULL
deputados$cpf <- NULL
deputados$siglaSexo <- NULL
deputados$urlRedeSocial <- NULL
deputados$urlWebsite <- NULL
deputados$dataNascimento <- NULL
deputados$dataFalecimento <- NULL
deputados$municipioNascimento <- NULL


# criar um novo diretório em downloads
# entrar neste novo diretório
setwd("~/Downloads/")
dir.create("deputados-new")
setwd("~/Downloads/deputados-new")


# loop para baixar todos os arquivos de fotos
# acessar o xml e pega a url dentro de 'urlFoto'
# e ignorar links que não funcionam
i <- 1
while(i <= 514) {
  tryCatch({
    url <- deputados_new$uri[i]
    api_content <- rawToChar(GET(url)$content)
    pessoa_info <- jsonlite::fromJSON(api_content)
    pessoa_foto <- pessoa_info$dados$ultimoStatus$urlFoto
    download.file(pessoa_foto, basename(pessoa_foto), mode = "wb", header = TRUE)
    Sys.sleep(5)
  }, error = function(e) return(NULL)
  )
  i <- i + 1
}


photos <- list.files(
  recursive = TRUE,
  full.names = TRUE
)


# loop para renomear as fotos
# em vez de id, queremos 'name-lower'
for (p in photos) {
  id <- basename(p)
  id <- gsub(".jpg$", "", id)
  name <- deputados_new$nome[match(id, basename(deputados_new$uri))]
  fname <- paste0(dirname(p), "/", name, ".jpg")
  file.rename(p, fname)
  
  #optional
  cat("renaming", basename(p), "to", name, "\n")
}
