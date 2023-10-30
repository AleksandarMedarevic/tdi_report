### Mapiranje za tabelu 27.1.2 iz .sjz.rs baze: ----
### ---
### HIV testing  = Testiranje_na_Hepatits_C
### 1. never tested = "1 - Nije testiran/a"
### 2. ever tested = "2 - Da, u poslednjih 12 meseci"
### 2. ever tested = "3 - Da, ali ne u poslednjih 12 meseci"
### 2.1 tested, but not in the last 12 months = 
### 2.2 tested in the last 12 months = 
### 3. don't want to answer = "4 - Ne želi da odgovori"
### 99. not known/ missing = "0 - Nepoznat podatak"
### total
### ---
### Injecting behaviour = Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem
###
### 1.never injected = "1. Ne,nikad"
### 2.ever injected = "2 - Da, u poslednjih 30 dana"
### 2.ever injected = "3 - Da, u poslednjih 12 meseci, ali ne i u poslednjih 30 dana"
### 2.ever injected = "4 - Da, pre više od 12 meseci"
### 2.1 injected but not in the last 12 months = "4 - Da, pre više od 12 meseci"
### 2.2 injected in last 12 months, but not in the last 30 days = "3 - Da, u poslednjih 12 meseci, ali ne i u poslednjih 30 dana"
### 2.3 currently injecting = "2 - Da, u poslednjih 30 dana"
### 3. do not want to answer = "5 - Ne želi da odgovori"
### 99. not know /missing = "0 - Nepoznat podatak"
### Total = Zbir svega 
### ------
### Never previously treated
### Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo"
### ---
### 27.1.2 HCV testing by Injecting behaviour –  Never previously treated 
### ---
### Sracunaj vrednosti za  TDI tabelu 27.1.2 ----

# Za never injected only ----------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "1 - Ne, nikada")

c1r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c1r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c1r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c1r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c1r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c1r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |>  
  nrow()

c1r7 <- baza_working |> 
  nrow()


# Za ever injected only -----------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "2 - Da, u poslednjih 30 dana" |
           Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "3 - Da, u poslednjih 12 meseci, ali ne i u poslednjih 30 dana" |
           Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "4 - Da, pre više od 12 meseci")

c2r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c2r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c2r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c2r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c2r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c2r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |> 
  nrow()

c2r7 <- baza_working |> 
  nrow()

# Za injected but not in the last 12 months only  --------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "4 - Da, pre više od 12 meseci")

c3r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c3r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c3r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c3r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c3r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c3r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |> 
  nrow()

c3r7 <- baza_working |> 
  nrow()

# Za injected in the last 12 months, but not in the last 30 days -------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "3 - Da, u poslednjih 12 meseci, ali ne i u poslednjih 30 dana")

c4r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c4r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c4r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c4r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c4r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c4r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |> 
  nrow()

c4r7 <- baza_working |> 
  nrow()

# Za currently injecting -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "2 - Da, u poslednjih 30 dana")

c5r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c5r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c5r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c5r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c5r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c5r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |>  
  nrow()

c5r7 <- baza_working |> 
  nrow()

# Za don't want to answer -----------------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "5 - Ne želi da odgovori")

c6r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c6r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c6r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c6r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c6r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c6r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |> 
  nrow()

c6r7 <- baza_working |> 
  nrow()

# Za  not know missing  -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem == "0 - Nepoznat podatak")

c7r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c7r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c7r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c7r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c7r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c7r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |> 
  nrow()

c7r7 <- baza_working |> 
  nrow()

# Za total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c8r1 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "1 - Nije testiran/a") |> 
  nrow()

c8r2 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci" |
           Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c8r3 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "3 - Da, ali ne u poslednjih 12 meseci") |> 
  nrow()

c8r4 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "2 - Da, u poslednjih 12 meseci") |> 
  nrow()

c8r5 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "4 - Ne želi da odgovori") |> 
  nrow()

c8r6 <- baza_working |> 
  filter(Testiranje_na_Hepatits_C == "0 - Nepoznat podatak") |> 
  nrow()

c8r7 <- baza_working |> 
  nrow()

# Create sheet and file with Table_27.1.2  ----------------------------------

tabela_27.1.2 <- data.frame(
  rowName = c ("", "1. never tested","2. ever tested","2.1 tested, but not in the last 12 months","2.2 tested in the last 12 months","3. don't want to answer","99. Not known / missing","Total"), 
  ne_never = c("1. never \n injected", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7),
  yes_included = c("2. ever \n injected", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7),
  yes_not_12 = c("2.1. injected \n but not in the \n last 12 months", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7),
  yes_30_12 = c("2.2. injected \n in the last \n 12 months, but\nnot in the \n last 30 days", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7),
  yes_30 = c("2.3. currently \n injecting", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7),
  do_not_answer = c("3. don't want \nto answer", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7),
  not_know = c("99. not known \nmissing", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7),
  total = c("Total", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7)
)

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_27.1.2, file="data/izlazniPodaci.xlsx", sheetName="tabela_27.1.2", append=TRUE, col.names=FALSE, row.names=FALSE)

