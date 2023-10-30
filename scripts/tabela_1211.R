### Mapiranje za tabelu 12.1.1 iz .sjz.rs baze: ----
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
### ---
### Age at entering current treatment = Datum_pochetka_ove_epizode_lechenja - Datum_rodjenja
### Age at entering current treatment, zaokruzna na manji broj zbog napunjenih godina zivota
### ---
### 12.1.1 Primary drug by age –  All treatment entrants  (Never previously treated + Previously treated + Not known/Missing)
### ---
## Sracunaj vrednosti za  TDI tabelu 12.1.1 --------

# ## Kreiraj dobne grupe za uzrast u trenutku pocetka epizode lecenje


# Za 0-14 age when entering the tretment only ----------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "0-14")


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

c1r33 <- c1r1+c1r7+c1r11+c1r17+c1r22+c1r26+c1r27+c1r31+c1r32

# Za 15-19 age of entering treatment only ---------------
  
baza_working <- baza |> 
  filter(year_complete_round_categories == "15-19")

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

c2r29 <- NaN

c2r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c2r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c2r32 <- 0

c2r33 <- c2r1+c2r7+c2r11+c2r17+c2r22+c2r26+c2r27+c2r31+c2r32

# Za 20-24 age of entering treatment only -----------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "20-24")

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
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)")|> 
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

c3r33 <- c3r1+c3r7+c3r11+c3r17+c3r22+c3r26+c3r27+c3r31+c3r32


# Za 25-29 age at the first use only -------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "25-29")


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

c4r33 <- c4r1+c4r7+c4r11+c4r17+c4r22+c4r26+c4r27+c4r31+c4r32


# Za 30-34 age of the first use -------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "30-34")

c5r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

(c5r1)

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
  filter(Glavni_uzrok_zavisnosti
         == "42 - Benzodiazepini") |> 
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

c5r33 <- c5r1+c5r7+c5r11+c5r17+c5r22+c5r26+c5r27+c5r31+c5r32

# Za 35-39 age of first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "35-39")

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

c6r33 <- c6r1+c6r7+c6r11+c6r17+c6r22+c6r26+c6r27+c6r31+c6r32

# Za 40-44 age of first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "40-44")


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

c7r14 <- baza_working|> 
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

c7r33 <- c7r1+c7r7+c7r11+c7r17+c7r22+c7r26+c7r27+c7r31+c7r32


# Za 45-49 age of first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "45-49")

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

c8r33 <- c8r1+c8r7+c8r11+c8r17+c8r22+c8r26+c8r27+c8r31+c8r32


# Za 50-54 age of the first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "50-54")

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
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c9r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c9r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c9r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c9r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c9r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti
         == "23 - Drugi kokain (navedite)") |> 
  nrow()

c9r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c9r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c9r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c9r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c9r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c9r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c9r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c9r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c9r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c9r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c9r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c9r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c9r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c9r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c9r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c9r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c9r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c9r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c9r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c9r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c9r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c9r29 <- 0

c9r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c9r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c9r32 <- 0

c9r33 <- c9r1+c9r7+c9r11+c9r17+c9r22+c9r26+c9r27+c9r31+c9r32

# Za 55-59 age of the first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "55-59")

c10r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |>
  nrow()

c10r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c10r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c10r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c10r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c10r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c10r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c10r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c10r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c10r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c10r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c10r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c10r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c10r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c10r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c10r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c10r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c10r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c10r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c10r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c10r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c10r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c10r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c10r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c10r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c10r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c10r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c10r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c10r29 <- 0

c10r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c10r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c10r32 <- 0

c10r33 <- c10r1+c10r7+c10r11+c10r17+c10r22+c10r26+c10r27+c10r31+c10r32

# Za  60-64 age of the first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "60-64")

c11r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |>
  nrow()

c11r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c11r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c11r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c11r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c11r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c11r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c11r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c11r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c11r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c11r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c11r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c11r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c11r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c11r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c11r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c11r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c11r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c11r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c11r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c11r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c11r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c11r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c11r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c11r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c11r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c11r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c11r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c11r29 <- 0

c11r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c11r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c11r32 <- 0

c11r33 <- c11r1+c11r7+c11r11+c11r17+c11r22+c11r26+c11r27+c11r31+c11r32

# Za 65+ age of the first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(year_complete_round_categories == "65+")

c12r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |>
  nrow()

c12r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c12r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c12r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c12r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c12r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c12r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c12r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c12r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c12r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c12r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c12r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c12r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c12r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c12r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c12r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c12r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c12r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c12r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c12r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c12r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c12r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c12r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c12r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c12r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c12r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c12r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c12r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c12r29 <- 0

c12r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c12r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c12r32 <- 0

c12r33 <- c12r1+c12r7+c12r11+c12r17+c12r22+c12r26+c12r27+c12r31+c12r32

# Za NA or NaN age of the first use only -----------------------------------------------------------------

baza_working <- baza |> 
  filter(is.na(year_complete_round_categories) |
           is.nan(year_complete_round_categories))

c13r1<- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |>
  nrow()

c13r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c13r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c13r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c13r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c13r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c13r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c13r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c13r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c13r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c13r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()


c13r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()


c13r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()


c13r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c13r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c13r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c13r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c13r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c13r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c13r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c13r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c13r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c13r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()


c13r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()


c13r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()


c13r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()


c13r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()


c13r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c13r29 <- 0

c13r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c13r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c13r32 <- 0

c13r33 <- c13r1+c13r7+c13r11+c13r17+c13r22+c13r26+c13r27+c13r31+c13r32

# Za NA or NaN age of the first use only -----------------------------------------------------------------

baza_working <- baza

c14r1<- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |>
  nrow()

c14r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c14r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c14r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c14r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c14r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c14r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c14r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c14r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c14r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c14r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()


c14r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()


c14r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()


c14r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c14r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c14r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c14r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c14r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c14r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c14r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c14r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c14r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c14r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()


c14r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()


c14r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()


c14r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()


c14r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()


c14r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c14r29 <- 0

c14r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c14r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c14r32 <- 0

c14r33 <- c14r1+c14r7+c14r11+c14r17+c14r22+c14r26+c14r27+c14r31+c14r32



# Create sheet and file with Table_12.1.1  ----------------------------------

tabela_12.1.1 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","1.1 heroin","1.2 methadone misused","1.3 buprenorphine misused","1.4 fentanils misused","1.5 other opioids (1) ","2. Cocaine (Total)","2.1 powder cocaine (HCL)"," 2.2 crack cocaine","2.3 other (1)","3. Stimulants other than cocaine (Total)","3.1 amphetamines","3.2 methamphetamines","3.3 MDMA and derivates","3.4 synthetic cathinones","3.5 other stimulants (1)","4. Hypnotics and Sedatives (Total)","4.1 barbiturates misused","4.2 benzodiazepines misused","4.3 GHB / GBL","4.4 other hypnotics and sedatives (1)"," 5. Hallucinogens (Total)","5.1 LSD","5.2 ketamine","5.3 other hallucinogens (1)","6. Volatile Inhalants","7. Cannabis (Total)","7.1 Herbal cannabis or resin"," 7.2 Synthetic cannabinoids","7.3 others (please specify)","9. Other Substances (Total)","99. Not known / missing","TOTAL"), 
  u15 = c("<15", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13, c1r14, c1r15, c1r16, c1r17, c1r18, c1r19, c1r20, c1r21, c1r22, c1r23, c1r24, c1r25, c1r26, c1r27, c1r28, c1r29, c1r30, c1r31, c1r32, c1r33),
  from15to19 = c("15-19", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13, c2r14, c2r15, c2r16, c2r17, c2r18, c2r19, c2r20, c2r21, c2r22, c2r23, c2r24, c2r25, c2r26, c2r27, c2r28, c2r29, c2r30, c2r31, c2r32, c2r33),
  from20to24 = c("20-24", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13, c3r14, c3r15, c3r16, c3r17, c3r18, c3r19, c3r20, c3r21, c3r22, c3r23, c3r24, c3r25, c3r26, c3r27, c3r28, c3r29, c3r30, c3r31, c3r32, c3r33),
  from25to29 = c("25-29", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13, c4r14, c4r15, c4r16, c4r17, c4r18, c4r19, c4r20, c4r21, c4r22, c4r23, c4r24, c4r25, c4r26, c4r27, c4r28, c4r29, c4r30, c4r31, c4r32, c4r33),
  from30to34 = c("30-34", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10, c5r11, c5r12, c5r13, c5r14, c5r15, c5r16, c5r17, c5r18, c5r19, c5r20, c5r21, c5r22, c5r23, c5r24, c5r25, c5r26, c5r27, c5r28, c5r29, c5r30, c5r31, c5r32, c5r33),
  from35to39 = c("35-39", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10, c6r11, c6r12, c6r13, c6r14, c6r15, c6r16, c6r17, c6r18, c6r19, c6r20, c6r21, c6r22, c6r23, c6r24, c6r25, c6r26, c6r27, c6r28, c6r29, c6r30, c6r31, c6r32, c6r33),
  from40to44 = c("40-44", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7, c7r8, c7r9, c7r10, c7r11, c7r12, c7r13, c7r14, c7r15, c7r16, c7r17, c7r18, c7r19, c7r20, c7r21, c7r22, c7r23, c7r24, c7r25, c7r26, c7r27, c7r28, c7r29, c7r30, c7r31, c7r32, c7r33),
  from45to49 = c("45-49", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7, c8r8, c8r9, c8r10, c8r11, c8r12, c8r13, c8r14, c8r15, c8r16, c8r17, c8r18, c8r19, c8r20, c8r21, c8r22, c8r23, c8r24, c8r25, c8r26, c8r27, c8r28, c8r29, c8r30, c8r31, c8r32, c8r33),
  from50to54 = c("50-54", c9r1, c9r2, c9r3, c9r4, c9r5, c9r6, c9r7, c9r8, c9r9, c9r10, c9r11, c9r12, c9r13, c9r14, c9r15, c9r16, c9r17, c9r18, c9r19, c9r20, c9r21, c9r22, c9r23, c9r24, c9r25, c9r26, c9r27, c9r28, c9r29, c9r30, c9r31, c9r32, c9r33),
  from55to59 = c("55-59", c10r1, c10r2, c10r3, c10r4, c10r5, c10r6, c10r7, c10r8, c10r9, c10r10, c10r11, c10r12, c10r13, c10r14, c10r15, c10r16, c10r17, c10r18, c10r19, c10r20, c10r21, c10r22, c10r23, c10r24, c10r25, c10r26, c10r27, c10r28, c10r29, c10r30, c10r31, c10r32, c10r33),
  from60to64 = c("60-64", c11r1, c11r2, c11r3, c11r4, c11r5, c11r6, c11r7, c11r8, c11r9, c11r10, c11r11, c11r12, c11r13, c11r14, c11r15, c11r16, c11r17, c11r18, c11r19, c11r20, c11r21, c11r22, c11r23, c11r24, c11r25, c11r26, c11r27, c11r28, c11r29, c11r30, c11r31, c11r32, c11r33),
  from65 = c("65+", c12r1, c12r2, c12r3, c12r4, c12r5, c12r6, c12r7, c12r8, c12r9, c12r10, c12r11, c12r12, c12r13, c12r14, c12r15, c12r16, c12r17, c12r18, c12r19, c12r20, c12r21, c12r22, c12r23, c12r24, c12r25, c12r26, c12r27, c12r28, c12r29, c12r30, c12r31, c12r32, c12r33),
  notKnow = c("Not known\nmissing", c13r1, c13r2, c13r3, c13r4, c13r5, c13r6, c13r7, c13r8, c13r9, c13r10, c13r11, c13r12, c13r13, c13r14, c13r15, c13r16, c13r17, c13r18, c13r19, c13r20, c13r21, c13r22, c13r23, c13r24, c13r25, c13r26, c13r27, c13r28, c13r29, c13r30, c13r31, c13r32, c13r33),
  total = c("Total", c14r1, c14r2, c14r3, c14r4, c14r5, c14r6, c14r7, c14r8, c14r9, c14r10, c14r11, c14r12, c14r13, c14r14, c14r15, c14r16, c14r17, c14r18, c14r19, c14r20, c14r21, c14r22, c14r23, c14r24, c14r25, c14r26, c14r27, c14r28, c14r29, c14r30, c14r31, c14r32, c14r33)
)

tabela_12.1.1[tabela_12.1.1 == "NaN"] <- NA
tabela_12.1.1[is.na(tabela_12.1.1)] <- ""  


#View(tabela_12.1.1)

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_12.1.1, file="data/izlazniPodaci.xlsx", sheetName="tabela_12.1.1", append=TRUE, col.names=FALSE, row.names=FALSE)

