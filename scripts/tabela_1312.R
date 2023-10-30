### Mapiranje za tabelu 13.1.2 iz .sjz.rs baze: ----
### ---
### Primary drug  = Glavni_uzrok_zavisnosti
### 1. Opioids (Total)  = ("11 - Heroin")+("12 - Metadon")+("13 - Buprenorfin")+("14 - Fentanil")+("15 - Tramadol")+("16 - Opioid, bez detaljnih informacija")+("17 - Drugi opioidi (navedite)")
### 2. Cocaine (Total) = ("21 - Prah kokaina")+("22 - Krek")+("23 - Drugi kokain (navedite)")
### 3. Stimulants other than cocaine (Total)  = ("31 - Amfetamin")+("32 - Metamfetamin")+("33 - Ekstazi (MDMA i derivati)")+("34 - Sintetički katinoni")+("35 - Stimulans, bez detaljnih informacija ")+("36 - Drugi stimulansi (navedite)")
### 4. Hypnotics and Sedatives (Total)  = ("41 - Barbiturati")+("42 - Benzodiazepini")+("43 - GHB/GBL")+("44 - Pregabalin")+("45 - Hipnotik i sedativ, bez detaljnih informacija")+("46 - Drugi hipnotici i sedativi (navedite)")
### 5. Hallucinogens (Total)  = ("51 - LSD")+("52 - Ketamin")+("53 - Halucinogen, bez detaljnih informacija")+("54 - Drugi halucinogeni (navedite)")
### 6. Volatile Inhalants = ("60 - Isparljivi inhalanti")
### 7. Cannabis (Total)  = ("70 - Marihuana")+("71 - Hašiš")+("72 - Kanabis bez detaljnih informacija")+("73 - Drugi kanabis (navedite)")
### 9. Other Substances (Total)  = ("88 - Druga supstanca (navedite)")
### 99. Not known / missing = Uvek Nula
### TOTAL = ("11 - Heroin")+("12 - Metadon")+("13 - Buprenorfin")+("14 - Fentanil")+("15 - Tramadol")+("16 - Opioid, bez detaljnih informacija")+("17 - Drugi opioidi (navedite)")+("21 - Prah kokaina")+("22 - Krek")+("23 - Drugi kokain (navedite)")+("31 - Amfetamin")+("32 - Metamfetamin")+("33 - Ekstazi (MDMA i derivati)")+("34 - Sintetički katinoni")+("35 - Stimulans, bez detaljnih informacija ")+("36 - Drugi stimulansi (navedite)")+("41 - Barbiturati")+("42 - Benzodiazepini")+("43 - GHB/GBL")+("44 - Pregabalin")+("45 - Hipnotik i sedativ, bez detaljnih informacija")+("46 - Drugi hipnotici i sedativi (navedite)")+("51 - LSD")+("52 - Ketamin")+("53 - Halucinogen, bez detaljnih informacija")+("54 - Drugi halucinogeni (navedite)")+("60 - Isparljivi inhalanti")+("70 - Marihuana")+("71 - Hašiš")+("72 - Kanabis bez detaljnih informacija")+("73 - Drugi kanabis (navedite)")+("88 - Druga supstanca (navedite)")
### --
### Source of referral = Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja
### 1. court /probation /  police  = "9 - Sud/pravosudni organ/policija"
### 2. general practitioner = "6 - Izabrani lekar"
### 3. other drug treatment center   = "5 - Drugi centar za lečenje zavisnosti"
### 4. other health or social services  = "7 - Druga zdravstvena ustanova"
### 4. other health or social services  = "8 - Ustanova socijalne zaštite"
### 5. educational services = "10 - Obrazovna institucija"
### 6. self referral, family, friends    = "1 - Lična odluka"
### 6. self referral, family, friends    = "2 - Porodica"
### 6. self referral, family, friends    = "3 - Rođak"
### 6. self referral, family, friends    = "4 - Prijatelj"
### 7. other   = "11 - Drugo"
### 8. not know/ missing= "0 - Nepoznat podatak"
### Total = Zbir svega 
### ------
### Never previously treated
### Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo"
### ---
### Primary drug by source of referral– Never previously treated 
###---

## Sracunaj vrednosti za  TDI tabelu 13.1.1 --------

# Za court/probation/police only ----------------------------------------------

baza_working <- baza |>
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "9 - Sud/pravosudni organ/policija")

c1r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c1r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c1r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c1r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c1r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c1r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c1r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c1r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c1r9 <- 0

c1r10 <- c1r1 + c1r2 + c1r3 + c1r4 + c1r5 + c1r6 + c1r7 + c1r8 + c1r9

# Za general practitioner only ---------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "6 - Izabrani lekar")

c2r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c2r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c2r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c2r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c2r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c2r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c2r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c2r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c2r9 <- 0

c2r10 <- c2r1 + c2r2 + c2r3 + c2r4 + c2r5 + c2r6 + c2r7 + c2r8 + c2r9

# Za other drug treatment centre only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "5 - Drugi centar za lečenje zavisnosti")

c3r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c3r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c3r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c3r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c3r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c3r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c3r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c3r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c3r9 <- 0

c3r10 <- c3r1 + c3r2 + c3r3 + c3r4 + c3r5 + c3r6 + c3r7 + c3r8 + c3r9

# Za other health insitution or social institute centre only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "7 - Druga zdravstvena ustanova" |
           Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "8 - Ustanova socijalne zaštite" )

c4r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c4r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c4r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c4r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c4r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c4r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c4r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c4r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c4r9 <- 0

c4r10 <- c4r1 + c4r2 + c4r3 + c4r4 + c4r5 + c4r6 + c4r7 + c4r8 + c4r9

# Za educational institutions only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "10 - Obrazovna institucija")


c5r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c5r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c5r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c5r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c5r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c5r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c5r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c5r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c5r9 <- 0

c5r10 <- c5r1 + c5r2 + c5r3 + c5r4 + c5r5 + c5r6 + c5r7 + c5r8 + c5r9

# Za self/friends/family refereal only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "1 - Lična odluka" |
           Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "2 - Porodica" |
           Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "3 - Rođak" |
           Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "4 - Prijatelj")

c6r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c6r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c6r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c6r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c6r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c6r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c6r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c6r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c6r9 <- 0

c6r10 <- c6r1 + c6r2 + c6r3 + c6r4 + c6r5 + c6r6 + c6r7 + c6r8 + c6r9

# Za other only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "11 - Drugo")

c7r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c7r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c7r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c7r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c7r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c7r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c7r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c7r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c7r9 <- 0

c7r10 <- c7r1 + c7r2 + c7r3 + c7r4 + c7r5 + c7r6 + c7r7 + c7r8 + c7r9

# Za missing only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo") |> 
  filter(Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja == "0 - Nepoznat podatak")


c8r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c8r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c8r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c8r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c8r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c8r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c8r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c8r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c8r9 <- 0

c8r10 <- c8r1 + c8r2 + c8r3 + c8r4 + c8r5 + c8r6 + c8r7 + c8r8 + c8r9

# Za total only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c9r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c9r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c9r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c9r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c9r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c9r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c9r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c9r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c9r9 <- 0

c9r10 <- c9r1 + c9r2 + c9r3 + c9r4 + c9r5 + c9r6 + c9r7 + c9r8 + c9r9

# Create sheet and file with Table_13.1.2  ----------------------------------

tabela_13.1.2 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","2. Cocaine (Total)","3. Stimulants other than cocaine (Total)","4. Hypnotics and Sedatives (Total)", "5. Hallucinogens (Total)","6. Volatile Inhalants","7. Cannabis (Total)","9. Other Substances (Total)"," 99. Not known / missing"," TOTAL"), 
  court = c("1. court / probation / police", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10),
  gp= c("2. general practice", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10),
  otherDrugCentre = c("3. other drug treatment centre", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10),
  otherHealthSocial = c("4. other health,\nmedical or \nsocial service", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10),
  educational = c("5. educational \nservices", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10),
  selfFriendsFamily = c("6. self-referral,\neferral from \nfamily, friends, \netc.;", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10),
  other= c("7. other", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7, c7r8, c7r9, c7r10),
  missingData= c("99. not known \nmissing", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7, c8r8, c8r9, c8r10),
  total = c("Total", c9r1, c9r2, c9r3, c9r4, c9r5, c9r6, c9r7, c9r8, c9r9, c9r10)
)
#print(tabela_13.1.2) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_13.1.2, file="data/izlazniPodaci.xlsx", sheetName="tabela_13.1.2", append=TRUE, col.names=FALSE, row.names=FALSE)

