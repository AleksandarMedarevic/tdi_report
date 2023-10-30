### Mapiranje za tabelu 9.1.1 iz .sjz.rs baze: ----
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
### Type of treatment centre = Tip_centra_programa_za_lechenje
### Outpatient treatment centres = (1 - Ambulantno lechenje/dnevna bolnica)
### Inpatient treatment centres = (2 - Bolnichko lechenje)
### Treatment units in prison = (3 - Lechenje u zatvoru)
### General practitioners = (4 - Izabrani lekar)
### Low threshold agencies = (6 - Agencija niskog praga)
### Other¹ = (5 - Drugo)
### Not known / missing   = ("0 - Nepoznato")
### Total = Zbir svega 
### ---

## Sracunaj vrednosti za  TDI tabelu 9.1.1 ----


# Za outpatient centres only ----------------------------------------------


baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "1 - Ambulantno lečenje/dnevna bolnica")

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

c1r33 <- c1r1 + c1r7 + c1r11 + c1r17 + c1r22 + c1r26+ c1r27 + c1r31 + c1r32


# Za inpatient centres only -----------------------------------------------


baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "2 - Bolničko lečenje")

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

c2r33 <- c2r1 + c2r7 + c2r11 + c2r17 + c2r22 + c2r26+ c2r27 + c2r31 + c2r32


# Prison treatment  --------------------------------------------------------

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "3 - Lečenje u zatvoru")

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

# General practitioner -------------------------------------------------

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "4 - Izabrani lekar")

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

c4r33 <- c4r1 + c4r7 + c4r11 + c4r17 + c4r22 + c4r26 +c4r27 + c4r31 + c4r32


# Low threshold agency -----------------------------------------------------
## "6 - Agencija niskog praga" ako se bude unosilo u buducnosti


baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "6 - Agencija niskog praga")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c5r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c5r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c5r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c5r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c5r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c5r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c5r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c5r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c5r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c5r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c5r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c5r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c5r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c5r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c5r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c5r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c5r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c5r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c5r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c5r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c5r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c5r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c5r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c5r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c5r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c5r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c5r29 <- 0

c5r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c5r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c5r32 <- 0

c5r33 <- c5r1 + c5r7 + c5r11 + c5r17 + c5r22 + c5r26 +c5r27 + c5r31 + c5r32

# Other -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "5 - Drugo")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c6r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c6r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c6r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c6r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c6r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c6r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c6r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c6r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c6r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c6r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c6r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c6r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c6r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c6r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c6r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c6r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c6r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c6r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c6r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c6r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c6r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c6r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c6r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c6r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c6r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c6r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c6r29 <- 0

c6r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c6r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c6r32 <- 0

c6r33 <- c6r1 + c6r7 + c6r11 + c6r17 + c6r22 + c6r26+ c6r27 + c6r31 + c6r32


# Missing -------------------------------------------------------------------
## "6 - Nepoznato"

baza_working <- baza |> 
  filter(Tip_centra_programa_za_lechenje == "0 - Nepoznato")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c7r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c7r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c7r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c7r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c7r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c7r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c7r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c7r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c7r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c7r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c7r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c7r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c7r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c7r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c7r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c7r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c7r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c7r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c7r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c7r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c7r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c7r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c7r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c7r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c7r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c7r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c7r29 <- 0

c7r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c7r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c7r32 <- 0

c7r33 <- c7r1 + c7r7 + c7r11 + c7r17 + c7r22 + c7r26 + c7r27 + c7r31 + c7r32


# Total -------------------------------------------------------------------

baza_working <- baza

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c8r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c8r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c8r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c8r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c8r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c8r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c8r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c8r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c8r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c8r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c8r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c8r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c8r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c8r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c8r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c8r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c8r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c8r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c8r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c8r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c8r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c8r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c8r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c8r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c8r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c8r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c8r29 <- 0

c8r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c8r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c8r32 <- 0

c8r33 <- c8r1 + c8r7 + c8r11 + c8r17 + c8r22 + c6r26 + c8r27 + c8r31 + c8r32

# Create sheet and file with Table_9.11  ----------------------------------

tabela_9.1.1 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","1.1 heroin","1.2 methadone misused","1.3 buprenorphine misused","1.4 fentanils misused","1.5 other opioids (1) ","2. Cocaine (Total)","2.1 powder cocaine (HCL)"," 2.2 crack cocaine","2.3 other (1)","3. Stimulants other than cocaine (Total)","3.1 amphetamines","3.2 methamphetamines","3.3 MDMA and derivates","3.4 synthetic cathinones","3.5 other stimulants (1)","4. Hypnotics and Sedatives (Total)","4.1 barbiturates misused","4.2 benzodiazepines misused","4.3 GHB / GBL","4.4 other hypnotics and sedatives (1)"," 5. Hallucinogens (Total)","5.1 LSD","5.2 ketamine","5.3 other hallucinogens (1)","6. Volatile Inhalants","7. Cannabis (Total)","7.1 Herbal cannabis or resin"," 7.2 Synthetic cannabinoids","7.3 others (please specify)","9. Other Substances (Total)","99. Not known / missing","TOTAL"), 
  outpatientTreatmentCentres = c("Outpatient treatment centres", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13, c1r14, c1r15, c1r16, c1r17, c1r18, c1r19, c1r20, c1r21, c1r22, c1r23, c1r24, c1r25, c1r26, c1r27, c1r28, c1r29, c1r30, c1r31, c1r32, c1r33),
  inpatientTreatmentCentres = c("Inpatient treatment centres", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13, c2r14, c2r15, c2r16, c2r17, c2r18, c2r19, c2r20, c2r21, c2r22, c2r23, c2r24, c2r25, c2r26, c2r27, c2r28, c2r29, c2r30, c2r31, c2r32, c2r33),
  treatmentUnitsInPrison = c("Treatment units in prison", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13, c3r14, c3r15, c3r16, c3r17, c3r18, c3r19, c3r20, c3r21, c3r22, c3r23, c3r24, c3r25, c3r26, c3r27, c3r28, c3r29, c3r30, c3r31, c3r32, c3r33),
  generalPractitioners = c("General practitioners", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13, c4r14, c4r15, c4r16, c4r17, c4r18, c4r19, c4r20, c4r21, c4r22, c4r23, c4r24, c4r25, c4r26, c4r27, c4r28, c4r29, c4r30, c4r31, c4r32, c4r33),
  lowThresholdAgencies = c("Low threshold agencie", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10, c5r11, c5r12, c5r13, c5r14, c5r15, c5r16, c5r17, c5r18, c5r19, c5r20, c5r21, c5r22, c5r23, c5r24, c5r25, c5r26, c5r27, c5r28, c5r29, c5r30, c5r31, c5r32, c5r33),
  other = c("Other¹", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10, c6r11, c6r12, c6r13, c6r14, c6r15, c6r16, c6r17, c6r18, c6r19, c6r20, c6r21, c6r22, c6r23, c6r24, c6r25, c6r26, c6r27, c6r28, c6r29, c6r30, c6r31, c6r32, c6r33),
  notKnownMissing = c("Not known / missing", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7, c7r8, c7r9, c7r10, c7r11, c7r12, c7r13, c7r14, c7r15, c7r16, c7r17, c7r18, c7r19, c7r20, c7r21, c7r22, c7r23, c7r24, c7r25, c7r26, c7r27, c7r28, c7r29, c7r30, c7r31, c7r32, c7r33),
  total = c("Total", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7, c8r8, c8r9, c8r10, c8r11, c8r12, c8r13, c8r14, c8r15, c8r16, c8r17, c8r18, c8r19, c8r20, c8r21, c8r22, c8r23, c8r24, c8r25, c8r26, c8r27, c8r28, c8r29, c8r30, c8r31, c8r32, c8r33)
)
#print(tabela_9.1.1) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_9.1.1, file="data/izlazniPodaci.xlsx", sheetName="tabela_9.1.1", append=TRUE, col.names=FALSE, row.names=FALSE)

