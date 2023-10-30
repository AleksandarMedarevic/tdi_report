### Mapiranje za tabelu 10.1.3 iz .sjz.rs baze: ----
### ---
### Primary drug  = Glavni_uzrok_zavisnosti
### 1. Opioids (Total)  = ("11 - Heroin")+("12 - Metadon")+("13 - Buprenorfin")+("14 - Fentanil")+("15 - Tramadol")+("16 - Opioid, bez detaljnih informacija")+("17 - Drugi opioidi (navedite)")
### 1.1 heroin = ("11 - Heroin")
### 1.2 methadone misused = ("12 - Metadon")
### 1.3 buprenorphine misused = ("13 - Buprenorfin")
### 1.4 fentanils misused = ("14 - Fentanil")
### 1.5 other opioids (1) = ("15 - Tramadol")+("16 - Opioid, bez detaljnih informacija")+("17 - Drugi opioidi (navedite)")
### 2. Cocaine (Total) = ("21 - Prah kokaina")+("22 - Krek")+("23 - Drugi kokain (navedite)")
### 2.1 powder cocaine (HCL) = ("21 - Prah kokaina")
### 2.2 crack cocaine = ("22 - Krek")
### 2.3 other (1) = ("23 - Drugi kokain (navedite)")
### 3. Stimulants other than cocaine (Total)  = ("31 - Amfetamin")+("32 - Metamfetamin")+("33 - Ekstazi (MDMA i derivati)")+("34 - Sintetički katinoni")+("35 - Stimulans, bez detaljnih informacija ")+("36 - Drugi stimulansi (navedite)")
### 3.1 amphetamines = ("31 - Amfetamin")
### 3.2 methamphetamines = ("32 - Metamfetamin")
### 3.3 MDMA and derivates = ("33 - Ekstazi (MDMA i derivati)")
### 3.4 synthetic cathinones = ("34 - Sintetički katinoni")
### 3.5 other stimulants (1) = ("35 - Stimulans, bez detaljnih informacija ")+("36 - Drugi stimulansi (navedite)")
### 4. Hypnotics and Sedatives (Total)  = ("41 - Barbiturati")+("42 - Benzodiazepini")+("43 - GHB/GBL")+("44 - Pregabalin")+("45 - Hipnotik i sedativ, bez detaljnih informacija")+("46 - Drugi hipnotici i sedativi (navedite)")
### 4.1 barbiturates misused = ("41 - Barbiturati")
### 4.2 benzodiazepines misused = ("42 - Benzodiazepini")
### 4.3 GHB / GBL = ("43 - GHB/GBL")
### 4.4 other hypnotics and sedatives (1) = ("44 - Pregabalin")+("45 - Hipnotik i sedativ, bez detaljnih informacija")+("46 - Drugi hipnotici i sedativi (navedite)")
### 5. Hallucinogens (Total)  = ("51 - LSD")+("52 - Ketamin")+("53 - Halucinogen, bez detaljnih informacija")+("54 - Drugi halucinogeni (navedite)")
### 5.1 LSD = ("51 - LSD")
### 5.2 ketamine = ("52 - Ketamin")
### 5.3 other hallucinogens (1) = ("53 - Halucinogen, bez detaljnih informacija")+("54 - Drugi halucinogeni (navedite)")
### 6. Volatile Inhalants = ("60 - Isparljivi inhalanti")
### 7. Cannabis (Total)  = ("70 - Marihuana")+("71 - Hašiš")+("72 - Kanabis bez detaljnih informacija")+("73 - Drugi kanabis (navedite)")
### 7.1 Herbal cannabis or resin = ("70 - Marihuana")+("71 - Hašiš")
### 7.2 Synthetic cannabinoids = Uvek Nula
### 7.3 others (please specify) = ("72 - Kanabis bez detaljnih informacija")+("73 - Drugi kanabis (navedite)")
### 9. Other Substances (Total)  = ("88 - Druga supstanca (navedite)")
### 99. Not known / missing = Uvek Nula
### TOTAL = ("11 - Heroin")+("12 - Metadon")+("13 - Buprenorfin")+("14 - Fentanil")+("15 - Tramadol")+("16 - Opioid, bez detaljnih informacija")+("17 - Drugi opioidi (navedite)")+("21 - Prah kokaina")+("22 - Krek")+("23 - Drugi kokain (navedite)")+("31 - Amfetamin")+("32 - Metamfetamin")+("33 - Ekstazi (MDMA i derivati)")+("34 - Sintetički katinoni")+("35 - Stimulans, bez detaljnih informacija ")+("36 - Drugi stimulansi (navedite)")+("41 - Barbiturati")+("42 - Benzodiazepini")+("43 - GHB/GBL")+("44 - Pregabalin")+("45 - Hipnotik i sedativ, bez detaljnih informacija")+("46 - Drugi hipnotici i sedativi (navedite)")+("51 - LSD")+("52 - Ketamin")+("53 - Halucinogen, bez detaljnih informacija")+("54 - Drugi halucinogeni (navedite)")+("60 - Isparljivi inhalanti")+("70 - Marihuana")+("71 - Hašiš")+("72 - Kanabis bez detaljnih informacija")+("73 - Drugi kanabis (navedite)")+("88 - Druga supstanca (navedite)")
### --
### Sex = Pol
### Male = "Muško"
### Female = "Žensko"
### Not known / missing   = "Nepoznato"
### Total = Zbir svega 
### ---
### Previously treated 
### Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama = "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci"
### Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama = "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci"
###---

## Sracunaj vrednosti za  TDI tabelu 10.1.3 --------


# Za males only ----------------------------------------------


baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" |
           Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  filter(Pol == "Muško")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c1r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c1r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c1r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c1r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c1r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c1r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c1r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c1r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c1r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c1r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c1r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c1r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c1r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c1r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c1r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c1r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c1r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c1r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c1r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c1r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c1r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c1r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c1r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c1r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c1r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c1r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c1r29 <- 0

c1r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c1r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c1r32 <- 0

c1r33 <- c1r1 + c1r7 + c1r11 + c1r17 + c1r22 + c1r26 + c1r27 + c1r31 + c1r32


# Za females only ---------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" |
           Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  filter(Pol == "Žensko")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c2r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c2r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c2r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c2r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c2r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c2r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c2r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c2r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c2r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c2r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c2r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c2r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c2r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c2r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c2r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c2r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c2r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c2r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c2r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c2r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c2r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c2r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c2r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c2r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c2r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c2r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c2r29 <- 0

c2r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c2r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c2r32 <- 0

c2r33 <- c2r1 + c2r7 + c2r11 + c2r17 + c2r22 + c2r26 + c2r27 + c2r31 + c2r32


# Za missing pol only -----------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" |
           Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci") |> 
  filter(Tip_centra_programa_za_lechenje == "Nepoznato")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c3r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c3r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c3r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c3r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c3r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c3r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c3r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c3r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c3r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c3r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c3r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c3r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c3r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c3r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c3r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c3r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c3r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c3r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c3r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c3r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c3r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c3r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c3r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c3r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c3r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c3r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c3r29 <- 0

c3r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c3r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c3r32 <- 0

c3r33 <- c3r1 + c3r7 + c3r11 + c3r17 + c3r22 + c3r26 + c3r27 + c3r31 + c3r32


# Za total sex only -------------------------------------------------------

baza_working <- baza |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "2 - Da, ranije se lečilo u istom centru, ali ne u poslednjih 6 meseci" |
           Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "4 - Da, ranije se lečilo u drugom centru, ali ne u poslednjih 6 meseci")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c4r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c4r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c4r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c4r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c4r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c4r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c4r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c4r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c4r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c4r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c4r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c4r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c4r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c4r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c4r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c4r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c4r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c4r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c4r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c4r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c4r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c4r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c4r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c4r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c4r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c4r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c4r29 <- 0

c4r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c4r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c4r32 <- 0

c4r33 <- c4r1 + c4r7 + c4r11 + c4r17 + c4r22 + c4r26 + c4r27 + c4r31 + c4r32

# Create sheet and file with Table_10.1.3  ----------------------------------

tabela_10.1.3 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","1.1 heroin","1.2 methadone misused","1.3 buprenorphine misused","1.4 fentanils misused","1.5 other opioids (1) ","2. Cocaine (Total)","2.1 powder cocaine (HCL)"," 2.2 crack cocaine","2.3 other (1)","3. Stimulants other than cocaine (Total)","3.1 amphetamines","3.2 methamphetamines","3.3 MDMA and derivates","3.4 synthetic cathinones","3.5 other stimulants (1)","4. Hypnotics and Sedatives (Total)","4.1 barbiturates misused","4.2 benzodiazepines misused","4.3 GHB / GBL","4.4 other hypnotics and sedatives (1)"," 5. Hallucinogens (Total)","5.1 LSD","5.2 ketamine","5.3 other hallucinogens (1)","6. Volatile Inhalants","7. Cannabis (Total)","7.1 Herbal cannabis or resin"," 7.2 Synthetic cannabinoids","7.3 others (please specify)","9. Other Substances (Total)","99. Not known / missing","TOTAL"), 
  males = c("Males", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13, c1r14, c1r15, c1r16, c1r17, c1r18, c1r19, c1r20, c1r21, c1r22, c1r23, c1r24, c1r25, c1r26, c1r27, c1r28, c1r29, c1r30, c1r31, c1r32, c1r33),
  females = c("Females", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13, c2r14, c2r15, c2r16, c2r17, c2r18, c2r19, c2r20, c2r21, c2r22, c2r23, c2r24, c2r25, c2r26, c2r27, c2r28, c2r29, c2r30, c2r31, c2r32, c2r33),
  missing = c("Not known \n missing", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13, c3r14, c3r15, c3r16, c3r17, c3r18, c3r19, c3r20, c3r21, c3r22, c3r23, c3r24, c3r25, c3r26, c3r27, c3r28, c3r29, c3r30, c3r31, c3r32, c3r33),
  total = c("Total", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13, c4r14, c4r15, c4r16, c4r17, c4r18, c4r19, c4r20, c4r21, c4r22, c4r23, c4r24, c4r25, c4r26, c4r27, c4r28, c4r29, c4r30, c4r31, c4r32, c4r33)
)
#print(tabela_10.1.3) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_10.1.3, file="data/izlazniPodaci.xlsx", sheetName="tabela_10.1.3", append=TRUE, col.names=FALSE, row.names=FALSE)

