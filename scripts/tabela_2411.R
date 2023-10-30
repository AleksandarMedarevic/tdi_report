### Mapiranje za tabelu 24.1.1 iz .sjz.rs baze:----
### ---
### Polydrug use problem = Da_li_je_lice_koristilo_vishe_vrsta_supstanci_istovremeno_u_poslednjih_30_dana
### Yes = "1 - Da"
### No = "2 - Ne"
### Not known / missing = "3 - Nepoznato"
### Total = Zbir svega 
### ---
### treatment status = Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama
### 1. Never previously treated = "5 - Ne, nije se nikad ranije lečilo"
### 2. Previously treated = "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci"+"4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci"
### 3. Not known / Missing = "0 - Nepoznat podatak"
### 4. All treatment entrants = 1+2+3 = Zbir svega iznad
### ---
### 24.1.1 Polydrug use problem existing by treatment status
### ---

## Sracunaj vrednosti za  TDI tabelu 24.1.1

## baza_working je uvek radna verzija baze

baza_working <- baza |> 
  filter(Da_li_je_lice_koristilo_vishe_vrsta_supstanci_istovremeno_u_poslednjih_30_dana == "1 - Da")


a1 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  nrow()

b1 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" | 
            Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  nrow()

c1 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "0 - Nepoznat podatak") |> 
  nrow()

d1 <- a1 + b1 + c1

baza_working <- baza |> 
  filter(Da_li_je_lice_koristilo_vishe_vrsta_supstanci_istovremeno_u_poslednjih_30_dana == "2 - Ne")

a2 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  nrow()

b2 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" | Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  nrow()

c2 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "0 - Nepoznat podatak") |> 
  nrow()

d2 <- a2 + b2 + c2

baza_working <- baza |> 
  filter(Da_li_je_lice_koristilo_vishe_vrsta_supstanci_istovremeno_u_poslednjih_30_dana == "3 - Nepoznato")

a3 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  nrow()

b3 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" | Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  nrow()

c3 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "0 - Nepoznat podatak") |> 
  nrow()

d3 <- a3 + b3 + c3

baza_working <- baza

a4 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  nrow()

b4 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" | Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  nrow()

c4 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "0 - Nepoznat podatak") |> 
  nrow()

d4 <- a4 + b4 + c4


## Kreiraj TDI tabelu 24.1.1
tabela_24.1.1 <- data.frame(
  rowName = c ("", "1. Never previously treated","2. Previously treated","3. Not known / Missing","4. All treatment entrants  (1+2+3) "), 
  polydrug_use_yes = c("1. Yes", a1 , b1, c1, d1),
  polydrug_use_no = c("2. No", a2, b2, c2, d2),
  polydrug_use_not_known = c("99. Not know", a3, b3, c3, d3),
  polydrug_use_total = c("Total", a4, b4, c4, d4)
)
#print(tabela_24.1.1) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_24.1.1, file="data/izlazniPodaci.xlsx", sheetName="tabela_24.1.1", col.names=FALSE, row.names=FALSE, append = T)
