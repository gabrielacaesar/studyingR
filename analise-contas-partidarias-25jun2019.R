
################################################################
###                                                          ###
###              An�lise das contas partid�rias              ###
###                                                          ###
###                      gabriela caesar                     ###
###                                                          ###
################################################################

# Esta an�lise se prop�e a explorar os dados 
# de contas partid�rias de partidos em 2017. 
# Os dados s�o do reposit�rio do TSE.

library(data.table)
library(tidyverse)

setwd("~/Downloads/prestacao_contas_anual_partidaria_2017-25jun2019")

despesa_2017 <- fread("despesa_anual_2017_BRASIL.csv")
receita_2017 <- fread("receita_anual_2017_BRASIL.csv")


################################################################
###                     principais gastos                    ###
################################################################

despesa_2017_total <- despesa_2017 %>%
  separate(DS_GASTO, c("categoria", "detalhe", "cota"), sep = " - ") %>%
  mutate(detalhe = ifelse(is.na(detalhe), categoria, detalhe)) %>%
  mutate(cota = ifelse(is.na(cota), detalhe, cota)) %>%
  mutate(VR_PAGAMENTO = str_replace_all(VR_PAGAMENTO, "\\,", "."),
         VR_GASTO = str_replace_all(VR_GASTO, "\\,", "."),
         VR_DOCUMENTO = str_replace_all(VR_DOCUMENTO, "\\,", "."))


despesa_2017_total_categoria <- despesa_2017_total %>%
  group_by(SG_PARTIDO, categoria) %>%
  summarise(VR_GASTO = sum(as.numeric(VR_GASTO))) %>%
  group_by(SG_PARTIDO) %>%
  mutate(total_partido = sum(VR_GASTO)) %>%
  mutate(perc_total = (VR_GASTO / total_partido) * 100)



################################################################
###                  d�vidas de campanhas                    ###
################################################################

despesa_2017_total_dividas_campanhas <- despesa_2017_total %>%
  filter(str_detect(categoria, "ASSUN��O DE D�VIDAS DE CAMPANHA")) %>%
  group_by(SG_PARTIDO) %>%
  summarise(VR_GASTO = sum(as.numeric(VR_GASTO)))

despesa_2017_comparacao <- despesa_2017_total %>%
  group_by(SG_PARTIDO) %>%
  summarise(VR_GASTO = sum(as.numeric(VR_GASTO)))

despesa_2017_comp_dividas_campanhas <- despesa_2017_comparacao %>%
  left_join(despesa_2017_total_dividas_campanhas, by = "SG_PARTIDO") %>%
  `colnames<-`(c("partido", "total_gasto", "divida_campanha")) %>%
  mutate(divida_campanha = ifelse(is.na(divida_campanha), 0, divida_campanha)) %>%
  mutate(perc_total = (divida_campanha / total_gasto) * 100)

################################################################
###                        funda��es                         ###
################################################################



################################################################
###                            cota                          ###
################################################################

# filtrar despesas por valor que cont�m 'MULHERES' EM DS_GASTO
# separar valores em mais colunas

despesa_2017_mulher <- despesa_2017 %>%
  filter(str_detect(DS_GASTO, "MULHERES")) %>%
  separate(DS_GASTO, c("categoria", "detalhe", "cota"), sep = " - ") %>%
  mutate(detalhe = ifelse(is.na(detalhe), categoria, detalhe)) %>%
  mutate(cota = ifelse(is.na(cota), detalhe, cota)) %>%
  mutate(VR_PAGAMENTO = str_replace_all(VR_PAGAMENTO, "\\,", "."),
         VR_GASTO = str_replace_all(VR_GASTO, "\\,", "."),
         VR_DOCUMENTO = str_replace_all(VR_DOCUMENTO, "\\,", "."))

# deletar colunas excedentes

despesa_2017_mulher$DT_GERACAO <- NULL
despesa_2017_mulher$HH_GERACAO <- NULL
despesa_2017_mulher$NM_PARTIDO <- NULL
despesa_2017_mulher$CD_TP_DOCUMENTO <- NULL
despesa_2017_mulher$CD_TP_FORNECEDOR <- NULL
despesa_2017_mulher$CD_TP_ESFERA_PARTIDARIA <- NULL

# agrupar por partido e categoria 

despesa_2017_mulher_categoria <- despesa_2017_mulher %>%
  group_by(SG_PARTIDO, categoria) %>%
  summarise(VR_GASTO = sum(as.numeric(VR_GASTO))) %>%
  group_by(SG_PARTIDO) %>%
  mutate(total_partido = sum(VR_GASTO)) %>%
  mutate(perc_total = (VR_GASTO / total_partido) * 100)

# agrupar por partido e calcular percentual das mulheres

despesa_2017_mulher_total <- despesa_2017_mulher %>%
  group_by(SG_PARTIDO) %>%
  summarise(VR_GASTO = sum(as.numeric(VR_GASTO))) 

despesa_2017_comparacao <- despesa_2017_total %>%
  group_by(SG_PARTIDO) %>%
  summarise(VR_GASTO = sum(as.numeric(VR_GASTO)))

despesa_2017_comparacao_df <- despesa_2017_comparacao %>%
  left_join(despesa_2017_mulher_total, by = "SG_PARTIDO") %>%
  `colnames<-`(c("partido", "gasto_total", "gasto_mulher")) %>%
  mutate(perc_total = (gasto_mulher / gasto_total) * 100) %>%
  arrange(desc(gasto_mulher))


################################################################
###                   tipo de diret�rio                      ###
################################################################


################################################################
###                fornecedores e filiados                   ###
################################################################

