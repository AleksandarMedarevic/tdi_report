### Mapiranje za tabelu 8.1.1 iz .sjz.rs baze:----
### ---
### Type of treatment centre = Tip_centra_programa_za_lechenje
### Outpatient treatment centres = ("1 - Ambulantno lečenje/dnevna bolnica")
### Inpatient treatment centres = ("2 - Bolničko lečenje")
### Treatment units in prison = ("3 - Lečenje u zatvoru")
### General practitioners = ("4 - Izabrani lekar")
### Low threshold agencies = Uvek Nula
### Other¹ = ("5 - Drugo")
### Not known / missing   = Uvek Nula
### Total = Zbir svega 
### ---
### treatment status = Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama
### 1. Never previously treated = ("5 - Ne, nije se nikad ranije lečilo")
### 2. Previously treated = ("2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci")+("4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci")
### 3. Not known / Missing = ("0 - Nepoznat podatak")
### 4. All treatment entrants  (1+2+3) = Zbir svega iznad
### ---
### Samo muskarci
### pol = "Muško"

## Sracunaj vrednosti za  TDI tabelu 8.1.2

## baza_working je uvek radna verzija baze


baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "1 - Ambulantno lečenje/dnevna bolnica") |> 
  filter(Pol == "Muško")

a1 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  nrow()

b1 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" | Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  nrow()

c1 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "0 - Nepoznat podatak") |> 
  nrow()

d1 <- a1 + b1 + c1

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "2 - Bolničko lečenje") |> 
  filter(Pol == "Muško")

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
  filter(Tip_centra_programa_za_lechenje == "3 - Lečenje u zatvoru") |> 
  filter(Pol == "Muško")

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

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "4 - Izabrani lekar") |> 
  filter(Pol == "Muško")

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

a5 <- 0 ## !Hardcode!
b5 <- 0 ## !Hardcode!
c5 <- 0 ## !Hardcode!
d5 <- a5 + b5 + c5

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "5 - Drugo") |> 
  filter(Pol == "Muško")

a6 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  nrow()

b6 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" | Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  nrow()

c6 <- baza_working |> 
  filter (Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "0 - Nepoznat podatak") |> 
  nrow()

d6 <- a6 + b6 + c6

a7 <- 0 ## !Hardcode!
b7 <- 0 ## !Hardcode!
c7 <- 0 ## !Hardcode!
d7 <- a7 + b7 + c7

a8 <- a1 + a2 + a3 + a4 + a5 + a6 + a7
b8 <- b1 + b2 + b3 + b4 + b5 + b6 + b7
c8 <- c1 + c2 + c3 + c4 + c5 + c6 + c7
d8 <- d1 + d2 + d3 + d4 + d5 + d6 + d7

## Kreiraj TDI tabelu 8.1.2
tabela_8.1.2 <- data.frame(
  rowName = c ("", "1. Never previously treated","2. Previously treated","3. Not known / Missing","4. All treatment entrants  (1+2+3) "), 
  outpatientTreatmentCentres = c("Outpatient treatment centres", a1 , b1, c1, d1),
  inpatientTreatmentCentres = c("Inpatient treatment centres", a2, b2, c2, d2),
  treatmentUnitsInPrison = c("Treatment units in prison", a3, b3, c3, d3),
  generalPractitioners = c("General practitioners", a4, b4, c4, d4),
  lowThresholdAgencies = c("Low threshold agencie", a5, b5, c5, d5),
  other = c("Other¹", a6, b6, c6, d6),
  notKnownMissing = c("Not known / missing", a7, b7, c7, d7),
  total = c("Total", a8, b8, c8, d8)
)
#print(tabela_8.1.2) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_8.1.2, file="data/izlazniPodaci.xlsx", sheetName="tabela_8.1.2", col.names=FALSE, row.names=FALSE, append = T)
