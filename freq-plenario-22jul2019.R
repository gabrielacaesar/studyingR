
# carregar as bibliotecas
library(tidyverse)
library(foreign)
library(data.table)

# definir diret�rio
setwd("~/Downloads/votacoes-nominais/CD")

# ler os arquivos
CD190001 <- read.dbf("CD190001.dbf") # sess�o preparat�ria
CD190002 <- read.dbf("CD190002.dbf") # sess�o preparat�ria
CD190003 <- read.dbf("CD190003.dbf") # sess�o ordin�ria
CD190004 <- read.dbf("CD190004.dbf")
CD190005 <- read.dbf("CD190005.dbf")
CD190006 <- read.dbf("CD190006.dbf") # sess�o ordin�ria
CD190007 <- read.dbf("CD190007.dbf")
CD190008 <- read.dbf("CD190008.dbf") # sess�o extraordin�ria
CD190009 <- read.dbf("CD190009.dbf") # sess�o extraordin�ria
CD190010 <- read.dbf("CD190010.dbf")
CD190011 <- read.dbf("CD190011.dbf") # sess�o ordin�ria
CD190012 <- read.dbf("CD190012.dbf")
CD190013 <- read.dbf("CD190013.dbf")
CD190014 <- read.dbf("CD190014.dbf")
CD190015 <- read.dbf("CD190015.dbf")
CD190016 <- read.dbf("CD190016.dbf") # sess�o ordin�ria
CD190017 <- read.dbf("CD190017.dbf")
CD190018 <- read.dbf("CD190018.dbf")
CD190019 <- read.dbf("CD190019.dbf")
CD190020 <- read.dbf("CD190020.dbf")
CD190021 <- read.dbf("CD190021.dbf")
CD190022 <- read.dbf("CD190022.dbf")
CD190023 <- read.dbf("CD190023.dbf")
CD190024 <- read.dbf("CD190024.dbf") # sess�o extraordin�ria
CD190025 <- read.dbf("CD190025.dbf")
CD190026 <- read.dbf("CD190026.dbf")
CD190027 <- read.dbf("CD190027.dbf")
CD190028 <- read.dbf("CD190028.dbf") # sess�o extraordin�ria
CD190029 <- read.dbf("CD190029.dbf")
CD190030 <- read.dbf("CD190030.dbf") # sess�o extraordin�ria
CD190031 <- read.dbf("CD190031.dbf") # sess�o ordin�ria
CD190032 <- read.dbf("CD190032.dbf") # sess�o extraordin�ria
CD190033 <- read.dbf("CD190033.dbf") # sess�o ordin�ria
CD190034 <- read.dbf("CD190034.dbf")
CD190035 <- read.dbf("CD190035.dbf")
CD190036 <- read.dbf("CD190036.dbf") # sess�o ordin�ria
CD190037 <- read.dbf("CD190037.dbf") # sess�o extraordin�ria
CD190038 <- read.dbf("CD190038.dbf") # sess�o ordin�ria
CD190039 <- read.dbf("CD190039.dbf")
CD190040 <- read.dbf("CD190040.dbf")
CD190041 <- read.dbf("CD190041.dbf") # sess�o extraordin�ria
CD190042 <- read.dbf("CD190042.dbf")
CD190043 <- read.dbf("CD190043.dbf") # sess�o ordin�ria
CD190044 <- read.dbf("CD190044.dbf")
CD190045 <- read.dbf("CD190045.dbf")
CD190046 <- read.dbf("CD190046.dbf")
CD190047 <- read.dbf("CD190047.dbf")
CD190048 <- read.dbf("CD190048.dbf")
CD190049 <- read.dbf("CD190049.dbf")
CD190050 <- read.dbf("CD190050.dbf") # sess�o extraordin�ria
CD190051 <- read.dbf("CD190051.dbf")
CD190052 <- read.dbf("CD190052.dbf")
CD190053 <- read.dbf("CD190053.dbf")
CD190054 <- read.dbf("CD190054.dbf") # sess�o extraordin�ria
CD190055 <- read.dbf("CD190055.dbf") # sess�o ordin�ria
CD190056 <- read.dbf("CD190056.dbf")
CD190057 <- read.dbf("CD190057.dbf")
CD190058 <- read.dbf("CD190058.dbf")
CD190059 <- read.dbf("CD190059.dbf")
CD190060 <- read.dbf("CD190060.dbf") # sess�o extraordin�ria
CD190061 <- read.dbf("CD190061.dbf")
CD190062 <- read.dbf("CD190062.dbf")
CD190063 <- read.dbf("CD190063.dbf")
CD190064 <- read.dbf("CD190064.dbf")
CD190065 <- read.dbf("CD190065.dbf")
CD190066 <- read.dbf("CD190066.dbf")
CD190067 <- read.dbf("CD190067.dbf") # sess�o ordin�ria
CD190068 <- read.dbf("CD190068.dbf") # sess�o extraordin�ria
CD190069 <- read.dbf("CD190069.dbf") # sess�o extraordin�ria
CD190070 <- read.dbf("CD190070.dbf") # sess�o ordin�ria
CD190071 <- read.dbf("CD190071.dbf")
CD190072 <- read.dbf("CD190072.dbf") # sess�o ordin�ria
CD190073 <- read.dbf("CD190073.dbf") # sess�o extraordin�ria
CD190074 <- read.dbf("CD190074.dbf") # sess�o extraordin�ria
CD190075 <- read.dbf("CD190075.dbf") # sess�o ordin�ria
CD190076 <- read.dbf("CD190076.dbf") # sess�o extraordin�ria
CD190077 <- read.dbf("CD190077.dbf") # sess�o ordin�ria
CD190078 <- read.dbf("CD190078.dbf") # sess�o extraordin�ria
CD190079 <- read.dbf("CD190079.dbf") # sess�o extraordin�ria
CD190080 <- read.dbf("CD190080.dbf") # sess�o ordin�ria
CD190081 <- read.dbf("CD190081.dbf") # sess�o extraordin�ria
CD190082 <- read.dbf("CD190082.dbf") # sess�o ordin�ria
CD190083 <- read.dbf("CD190083.dbf") # sess�o ordin�ria
CD190084 <- read.dbf("CD190084.dbf")
CD190085 <- read.dbf("CD190085.dbf") # sess�o extraordin�ria
CD190086 <- read.dbf("CD190086.dbf") # sess�o extraordin�ria
CD190087 <- read.dbf("CD190087.dbf") # sess�o ordin�ria
CD190088 <- read.dbf("CD190088.dbf")
CD190089 <- read.dbf("CD190089.dbf")
CD190090 <- read.dbf("CD190090.dbf")
CD190091 <- read.dbf("CD190091.dbf")
CD190092 <- read.dbf("CD190092.dbf")
CD190093 <- read.dbf("CD190093.dbf") # sess�o extraordin�ria
CD190094 <- read.dbf("CD190094.dbf")
CD190095 <- read.dbf("CD190095.dbf")
CD190096 <- read.dbf("CD190096.dbf")
CD190097 <- read.dbf("CD190097.dbf")
CD190098 <- read.dbf("CD190098.dbf") # sess�o ordin�ria
CD190099 <- read.dbf("CD190099.dbf")
CD190100 <- read.dbf("CD190100.dbf")
CD190101 <- read.dbf("CD190101.dbf")
CD190102 <- read.dbf("CD190102.dbf")
CD190103 <- read.dbf("CD190103.dbf") # sess�o extraordin�ria
CD190104 <- read.dbf("CD190104.dbf") # sess�o ordin�ria
CD190105 <- read.dbf("CD190105.dbf")
CD190106 <- read.dbf("CD190106.dbf") # sess�o extraordin�ria
CD190107 <- read.dbf("CD190107.dbf") # sess�o ordin�ria
CD190108 <- read.dbf("CD190108.dbf") # sess�o ordin�ria
CD190109 <- read.dbf("CD190109.dbf")
CD190110 <- read.dbf("CD190110.dbf")
CD190111 <- read.dbf("CD190111.dbf")
CD190112 <- read.dbf("CD190112.dbf")
CD190113 <- read.dbf("CD190113.dbf") # sess�o extraordin�ria
CD190114 <- read.dbf("CD190114.dbf")
CD190115 <- read.dbf("CD190115.dbf") # sess�o extraordin�ria
CD190116 <- read.dbf("CD190116.dbf")
CD190117 <- read.dbf("CD190117.dbf") # sess�o extraordin�ria
CD190118 <- read.dbf("CD190118.dbf")
CD190119 <- read.dbf("CD190119.dbf") # sess�o extraordin�ria
CD190120 <- read.dbf("CD190120.dbf") # sess�o ordin�ria
CD190121 <- read.dbf("CD190121.dbf")
CD190122 <- read.dbf("CD190122.dbf")
CD190123 <- read.dbf("CD190123.dbf") # sess�o extraordin�ria
CD190124 <- read.dbf("CD190124.dbf")
CD190125 <- read.dbf("CD190125.dbf")
CD190126 <- read.dbf("CD190126.dbf")
CD190127 <- read.dbf("CD190127.dbf")
CD190128 <- read.dbf("CD190128.dbf")
CD190129 <- read.dbf("CD190129.dbf") # sess�o extraordin�ria
CD190130 <- read.dbf("CD190130.dbf")
CD190131 <- read.dbf("CD190131.dbf")
CD190132 <- read.dbf("CD190132.dbf")
CD190133 <- read.dbf("CD190133.dbf")
CD190134 <- read.dbf("CD190134.dbf")
CD190135 <- read.dbf("CD190135.dbf")
CD190136 <- read.dbf("CD190136.dbf")
CD190137 <- read.dbf("CD190137.dbf")
CD190138 <- read.dbf("CD190138.dbf") # sess�o extraordin�ria
CD190139 <- read.dbf("CD190139.dbf")
CD190140 <- read.dbf("CD190140.dbf")
CD190141 <- read.dbf("CD190141.dbf")
CD190142 <- read.dbf("CD190142.dbf")
CD190143 <- read.dbf("CD190143.dbf")
CD190144 <- read.dbf("CD190144.dbf")
CD190145 <- read.dbf("CD190145.dbf")
CD190146 <- read.dbf("CD190146.dbf")
CD190147 <- read.dbf("CD190147.dbf")
CD190148 <- read.dbf("CD190148.dbf")
CD190149 <- read.dbf("CD190149.dbf") # sess�o extraordin�ria
CD190150 <- read.dbf("CD190150.dbf")
CD190151 <- read.dbf("CD190151.dbf")
CD190152 <- read.dbf("CD190152.dbf")
CD190153 <- read.dbf("CD190153.dbf")
CD190154 <- read.dbf("CD190154.dbf") # sess�o extraordin�ria
CD190155 <- read.dbf("CD190155.dbf") # sess�o extraordin�ria
CD190156 <- read.dbf("CD190156.dbf")
CD190157 <- read.dbf("CD190157.dbf")
CD190158 <- read.dbf("CD190158.dbf")
CD190159 <- read.dbf("CD190159.dbf")
CD190160 <- read.dbf("CD190160.dbf")
CD190161 <- read.dbf("CD190161.dbf")
CD190162 <- read.dbf("CD190162.dbf")
CD190163 <- read.dbf("CD190163.dbf")
CD190164 <- read.dbf("CD190164.dbf") # sess�o extraordin�ria
CD190165 <- read.dbf("CD190165.dbf") # sess�o extraordin�ria
CD190166 <- read.dbf("CD190166.dbf") # sess�o extraordin�ria
CD190167 <- read.dbf("CD190167.dbf") # sess�o extraordin�ria
CD190168 <- read.dbf("CD190168.dbf") # sess�o extraordin�ria
CD190169 <- read.dbf("CD190169.dbf") # sess�o extraordin�ria
CD190170 <- read.dbf("CD190170.dbf")
CD190171 <- read.dbf("CD190171.dbf")
CD190172 <- read.dbf("CD190172.dbf") # sess�o ordin�ria
CD190173 <- read.dbf("CD190173.dbf") # sess�o extraordin�ria
CD190174 <- read.dbf("CD190174.dbf") # sess�o ordin�ria
CD190175 <- read.dbf("CD190175.dbf")
CD190176 <- read.dbf("CD190176.dbf")
CD190177 <- read.dbf("CD190177.dbf") # sess�o extraordin�ria
CD190178 <- read.dbf("CD190178.dbf")
CD190179 <- read.dbf("CD190179.dbf") # sess�o ordin�ria
CD190180 <- read.dbf("CD190180.dbf")
CD190181 <- read.dbf("CD190181.dbf")
CD190182 <- read.dbf("CD190182.dbf") # sess�o extraordin�ria
CD190183 <- read.dbf("CD190183.dbf") 
CD190184 <- read.dbf("CD190184.dbf") # sess�o extraordin�ria
CD190185 <- read.dbf("CD190185.dbf") # sess�o ordin�ria
CD190186 <- read.dbf("CD190186.dbf") # sess�o extraordin�ria
CD190187 <- read.dbf("CD190187.dbf") # sess�o extraordin�ria
CD190188 <- read.dbf("CD190188.dbf") # sess�o extraordin�ria
CD190189 <- read.dbf("CD190189.dbf")
CD190190 <- read.dbf("CD190190.dbf")
CD190191 <- read.dbf("CD190191.dbf") # sess�o extraordin�ria
CD190192 <- read.dbf("CD190192.dbf")
CD190193 <- read.dbf("CD190193.dbf")
CD190194 <- read.dbf("CD190194.dbf")
CD190195 <- read.dbf("CD190195.dbf")
CD190196 <- read.dbf("CD190196.dbf")
CD190197 <- read.dbf("CD190197.dbf") # sess�o extraordin�ria
CD190198 <- read.dbf("CD190198.dbf")
CD190199 <- read.dbf("CD190199.dbf")
CD190200 <- read.dbf("CD190200.dbf")
CD190201 <- read.dbf("CD190201.dbf") # sess�o extraordin�ria
CD190202 <- read.dbf("CD190202.dbf")
CD190203 <- read.dbf("CD190203.dbf")
CD190204 <- read.dbf("CD190204.dbf")
CD190205 <- read.dbf("CD190205.dbf")
CD190206 <- read.dbf("CD190206.dbf") # sess�o extraordin�ria
CD190207 <- read.dbf("CD190207.dbf")
CD190208 <- read.dbf("CD190208.dbf")
CD190209 <- read.dbf("CD190209.dbf")
CD190210 <- read.dbf("CD190210.dbf") # sess�o extraordin�ria
CD190211 <- read.dbf("CD190211.dbf")
CD190212 <- read.dbf("CD190212.dbf")
CD190213 <- read.dbf("CD190213.dbf")
CD190214 <- read.dbf("CD190214.dbf")
CD190215 <- read.dbf("CD190215.dbf") # sess�o extraordin�ria
CD190216 <- read.dbf("CD190216.dbf")
CD190217 <- read.dbf("CD190217.dbf")
CD190218 <- read.dbf("CD190218.dbf")
CD190219 <- read.dbf("CD190219.dbf")
CD190220 <- read.dbf("CD190220.dbf") # sess�o extraordin�ria
CD190221 <- read.dbf("CD190221.dbf")
CD190222 <- read.dbf("CD190222.dbf")
CD190223 <- read.dbf("CD190223.dbf")
CD190224 <- read.dbf("CD190224.dbf")
CD190225 <- read.dbf("CD190225.dbf") # sess�o extraordin�ria
CD190226 <- read.dbf("CD190226.dbf")
CD190227 <- read.dbf("CD190227.dbf")
CD190228 <- read.dbf("CD190228.dbf")
CD190229 <- read.dbf("CD190229.dbf")
CD190230 <- read.dbf("CD190230.dbf")


plenario_cd <- rbind(CD190001,
                     CD190002,
                     CD190003,
                     CD190004,
                     CD190005,
                     CD190006,
                     CD190007,
                     CD190008,
                     CD190009,
                     CD190010,
                     CD190011,
                     CD190012,
                     CD190013,
                     CD190014,
                     CD190015,
                     CD190016,
                     CD190017,
                     CD190018,
                     CD190019,
                     CD190020,
                     CD190021,
                     CD190022,
                     CD190023,
                     CD190024,
                     CD190025,
                     CD190026,
                     CD190027,
                     CD190028,
                     CD190029,
                     CD190030,
                     CD190031,
                     CD190032,
                     CD190033,
                     CD190034,
                     CD190035,
                     CD190036,
                     CD190037,
                     CD190038,
                     CD190039,
                     CD190040,
                     CD190041,
                     CD190042,
                     CD190043,
                     CD190044,
                     CD190045,
                     CD190046,
                     CD190047,
                     CD190048,
                     CD190049,
                     CD190050,
                     CD190051,
                     CD190052,
                     CD190053,
                     CD190054,
                     CD190055,
                     CD190056,
                     CD190057,
                     CD190058,
                     CD190059,
                     CD190060,
                     CD190061,
                     CD190062,
                     CD190063,
                     CD190064,
                     CD190065,
                     CD190066,
                     CD190067,
                     CD190068,
                     CD190069,
                     CD190070,
                     CD190071,
                     CD190072,
                     CD190073,
                     CD190074,
                     CD190075,
                     CD190076,
                     CD190077,
                     CD190078,
                     CD190079,
                     CD190080,
                     CD190081,
                     CD190082,
                     CD190083,
                     CD190084,
                     CD190085,
                     CD190086,
                     CD190087,
                     CD190088,
                     CD190089,
                     CD190090,
                     CD190091,
                     CD190092,
                     CD190093,
                     CD190094,
                     CD190095,
                     CD190096,
                     CD190097,
                     CD190098,
                     CD190099,
                     CD190100,
                     CD190101,
                     CD190102,
                     CD190103,
                     CD190104,
                     CD190105,
                     CD190106,
                     CD190107,
                     CD190108,
                     CD190109,
                     CD190110,
                     CD190111,
                     CD190112,
                     CD190113,
                     CD190114,
                     CD190115,
                     CD190116,
                     CD190117,
                     CD190118,
                     CD190119,
                     CD190120,
                     CD190121,
                     CD190122,
                     CD190123,
                     CD190124,
                     CD190125,
                     CD190126,
                     CD190127,
                     CD190128,
                     CD190129,
                     CD190130,
                     CD190131,
                     CD190132,
                     CD190133,
                     CD190134,
                     CD190135,
                     CD190136,
                     CD190137,
                     CD190138,
                     CD190139,
                     CD190140,
                     CD190141,
                     CD190142,
                     CD190143,
                     CD190144,
                     CD190145,
                     CD190146,
                     CD190147,
                     CD190148,
                     CD190149,
                     CD190150,
                     CD190151,
                     CD190152,
                     CD190153,
                     CD190154,
                     CD190155,
                     CD190156,
                     CD190157,
                     CD190158,
                     CD190159,
                     CD190160,
                     CD190161,
                     CD190162,
                     CD190163,
                     CD190164,
                     CD190165,
                     CD190166,
                     CD190167,
                     CD190168,
                     CD190169,
                     CD190170,
                     CD190171,
                     CD190172,
                     CD190173,
                     CD190174,
                     CD190175,
                     CD190176,
                     CD190177,
                     CD190178,
                     CD190179,
                     CD190180,
                     CD190181,
                     CD190182,
                     CD190183,
                     CD190184,
                     CD190185,
                     CD190186,
                     CD190187,
                     CD190188,
                     CD190189,
                     CD190190,
                     CD190191,
                     CD190192,
                     CD190193,
                     CD190194,
                     CD190195,
                     CD190196,
                     CD190197,
                     CD190198,
                     CD190199,
                     CD190200,
                     CD190201,
                     CD190202,
                     CD190203,
                     CD190204,
                     CD190205,
                     CD190206,
                     CD190207,
                     CD190208,
                     CD190209,
                     CD190210,
                     CD190211,
                     CD190212,
                     CD190213,
                     CD190214,
                     CD190215,
                     CD190216,
                     CD190217,
                     CD190218,
                     CD190219,
                     CD190220,
                     CD190221,
                     CD190222,
                     CD190223,
                     CD190224,
                     CD190225,
                     CD190226,
                     CD190227,
                     CD190228,
                     CD190229,
                     CD190230)

# criar DF com dados de sess�es no plen�rio
plenario_freq_sessao <- plenario_cd %>%
  filter(NUMVOT == "0000")

# criar DF com dados de vota��es no plen�rio
plenario_freq_votacao <- plenario_cd %>%
  filter(NUMVOT != "0000")

# agrupar por deputado - sess�es no plen�rio
plenario_freq_sessao_n <- plenario_freq_sessao %>%
  group_by(NOME_PAR, VOTO) %>%
  summarise(n()) %>%
  spread(VOTO, `n()`) %>%
  `colnames<-`(c("NOME_PAR", "ausente", "presente")) %>%
  mutate(ausente = replace_na(ausente, 0)) %>%
  mutate(presente = replace_na(presente, 0)) %>%
  mutate(total = ausente + presente) %>%
  mutate(ausente_perc = (ausente / total) * 100) %>%
  mutate(presente_perc = (presente / total) * 100)


# agrupar por deputado - vota��es no plen�rio
plenario_freq_votacao_n <- plenario_freq_votacao %>%
  group_by(NOME_PAR, VOTO) %>%
  summarise(n()) %>%
  spread(VOTO, `n()`) %>%
  `colnames<-`(c("NOME_PAR", "ausente", "abstencao", "naovotou", "nao", "obstrucao", "sim")) %>%
  mutate(ausente = replace_na(ausente, 0)) %>%
  mutate(abstencao = replace_na(abstencao, 0)) %>%
  mutate(naovotou = replace_na(naovotou, 0)) %>%
  mutate(nao = replace_na(nao, 0)) %>%
  mutate(obstrucao = replace_na(obstrucao, 0)) %>%
  mutate(sim = replace_na(sim, 0)) %>%
  mutate(total = ausente + abstencao + naovotou + nao + obstrucao + sim) %>%
  mutate(ausente_perc = (ausente / total) * 100) %>%
  mutate(presente_perc = ((abstencao + naovotou + nao + obstrucao + sim) / total) * 100)


# ler arquivo com dados de nominais
# identificar tipo de sess�o (preparat�ria X ordin�ria X extraordin�ria)
lista_plenario <- fread("lista-plenario.csv")


