### Mapiranje za tabelu 25.1.6 iz .sjz.rs baze: ----
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
### 
### ---
### 25.1.6 Primary drug and other (secondary) drugs -  All treatment entrants  
### (Never previously treated + Previously treated + Not known/Missing)
###
### Sracunaj vrednosti za  TDI tabelu 25.1.6 ----


# Za injektiranjem only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "11 - Heroin" |
           Sporedni_uzrok_zavisnosti_1 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_1 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_1 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_1 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_1 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "17 - Drugi opioidi (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "11 - Heroin" |
           Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)"|
           Sporedni_uzrok_zavisnosti_3 == "11 - Heroin" |
           Sporedni_uzrok_zavisnosti_3 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_3 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_3 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_3 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_3 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "17 - Drugi opioidi (navedite)")

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

c1r31 <- 0

c1r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c1r33 <- 0

c1r34 <- c1r1 + c1r7 + c1r11 + c1r17 + c1r22 + c1r26+ c1r27 + c1r32 + c1r33

# Za Heroin only -----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "11 - Heroin" |
           Sporedni_uzrok_zavisnosti_2 == "11 - Heroin" |
           Sporedni_uzrok_zavisnosti_3 == "11 - Heroin")

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

c2r31 <- 0

c2r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c2r33 <- 0

c2r34 <- c2r1 + c2r7 + c2r11 + c2r17 + c2r22 + c2r26+ c2r27 + c2r32 + c2r33

# Za Methadon only  --------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "12 - Metadon" |
           Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" |
           Sporedni_uzrok_zavisnosti_3 == "12 - Metadon")

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

c3r31 <- 0

c3r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c3r33 <- 0

c3r34 <- c3r1 + c3r7 + c3r11 + c3r17 + c3r22 + c3r26 + c3r27 + c3r32 + c3r33

# Za Buprenorfin only -------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_3 == "13 - Buprenorfin")

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

c4r31 <- 0

c4r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c4r33 <- 0

c4r34 <- c4r1 + c4r7 + c4r11 + c4r17 + c4r22 + c4r26 +c4r27 + c4r32 + c4r33

# Za fentanily only -----------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_3 == "14 - Fentanil")

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

c5r31 <- 0

c5r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c5r33 <- 0

c5r34 <- c5r1 + c5r7 + c5r11 + c5r17 + c5r22 + c5r26 +c5r27 + c5r32 + c5r33

# Za other opiodis -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_1 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "17 - Drugi opioidi (navedite)"|
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)"|
           Sporedni_uzrok_zavisnosti_3 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_3 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "17 - Drugi opioidi (navedite)")

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

c6r31 <- 0

c6r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c6r33 <- 0

c6r34 <- c6r1 + c6r7 + c6r11 + c6r17 + c6r22 + c6r26+ c6r27 + c6r32 + c6r33

# Cocaine total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_1 == "22 - Krek" |
           Sporedni_uzrok_zavisnosti_1 == "23 - Drugi kokain (navedite)"|
           Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "22 - Krek" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)"|
           Sporedni_uzrok_zavisnosti_3 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_3 == "22 - Krek" |
           Sporedni_uzrok_zavisnosti_3 == "23 - Drugi kokain (navedite)")

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

c7r31 <- 0

c7r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c7r33 <- 0

c7r34 <- c7r1 + c7r7 + c7r11 + c7r17 + c7r22 + c7r26 + c7r27 + c7r32 + c7r33

# Powder cocaine total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_3 == "21 - Prah kokaina")

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

c8r31 <- 0

c8r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c8r33 <- 0

c8r34 <- c8r1 + c8r7 + c8r11 + c8r17 + c8r22 + c8r26 + c8r27 + c8r32 + c8r33

# Crack only -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "22 - Krek"|
           Sporedni_uzrok_zavisnosti_2 == "22 - Krek"|
           Sporedni_uzrok_zavisnosti_3 == "22 - Krek")

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
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
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

c9r31 <- 0

c9r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c9r33 <- 0

c9r34 <- c9r1 + c9r7 + c9r11 + c9r17 + c9r22 + c9r26 + c9r27 + c9r32 + c9r33

# Cocaine other  -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "23 - Drugi kokain (navedite)"|
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)"|
           Sporedni_uzrok_zavisnosti_3 == "23 - Drugi kokain (navedite)")

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

c10r31 <- 0

c10r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c10r33 <- 0

c10r34 <- c10r1 + c10r7 + c10r11 + c10r17 + c10r22 + c10r26 + c10r27 + c10r32 + c10r33

# Other stimulants total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_1 == "32 - Metamfetamin" |
           Sporedni_uzrok_zavisnosti_1 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_1 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_1 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "36 - Drugi stimulansi (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_3 == "32 - Metamfetamin" |
           Sporedni_uzrok_zavisnosti_3 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_3 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_3 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "36 - Drugi stimulansi (navedite)")

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

c11r31 <- 0

c11r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c11r33 <- 0

c11r34 <- c11r1 + c11r7 + c11r11 + c11r17 + c11r22 + c11r26 + c11r27 + c11r32 + c11r33

# Amphetamine total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_3 == "31 - Amfetamin")

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

c12r31 <- 0

c12r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c12r33 <- 0

c12r34 <- c12r1 + c12r7 + c12r11 + c12r17 + c12r22 + c12r26 + c12r27 + c12r32 + c12r33

# Methamphetamine total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "32 - Metamfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin" |
           Sporedni_uzrok_zavisnosti_3 == "32 - Metamfetamin")

c13r1 <- baza_working |> 
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

c13r31 <- 0

c13r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c13r33 <- 0

c13r34 <- c13r1 + c13r7 + c13r11 + c13r17 + c13r22 + c13r26 + c13r27 + c13r32 + c13r33

# MDMA total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_3 == "33 - Ekstazi (MDMA i derivati)")

c14r1 <- baza_working |> 
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

c14r31 <- 0

c14r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c14r33 <- 0

c14r34 <- c14r1 + c14r7 + c14r11 + c14r17 + c14r22 + c14r26 + c14r27 + c14r32 + c14r33

# Sintetic catatoni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_3 == "34 - Sintetički katinoni")

c15r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c15r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c15r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c15r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c15r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c15r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c15r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c15r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c15r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c15r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c15r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c15r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c15r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c15r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c15r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c15r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c15r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c15r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c15r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c15r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c15r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c15r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c15r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c15r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c15r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c15r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c15r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c15r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c15r29 <- 0

c15r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c15r31 <- 0

c15r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c15r33 <- 0

c15r34 <- c15r1 + c15r7 + c15r11 + c15r17 + c15r22 + c15r26 + c15r27 + c15r32 + c15r33

# Sintetic catatoni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "36 - Drugi stimulansi (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "36 - Drugi stimulansi (navedite)")


c16r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c16r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c16r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c16r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c16r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c16r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c16r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c16r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c16r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c16r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c16r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c16r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c16r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c16r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c16r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c16r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c16r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c16r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c16r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c16r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c16r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c16r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c16r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c16r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c16r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c16r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c16r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c16r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c16r29 <- 0

c16r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c16r31 <- 0

c16r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c16r33 <- 0

c16r34 <- c16r1 + c16r7 + c16r11 + c16r17 + c16r22 + c16r26 + c16r27 + c16r32 + c16r33

# Hypnotics and Sedatives total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_1 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_1 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_1 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_1 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "46 - Drugi hipnotici i sedativi (navedite)" |
           Sporedni_uzrok_zavisnosti_1 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_3 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_3 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_3 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_3 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "46 - Drugi hipnotici i sedativi (navedite)")


c17r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()


c17r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c17r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c17r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c17r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c17r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c17r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c17r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c17r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c17r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c17r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c17r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c17r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c17r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c17r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c17r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c17r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c17r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c17r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c17r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c17r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c17r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c17r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c17r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c17r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c17r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c17r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c17r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c17r29 <- 0

c17r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c17r31 <- 0

c17r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c17r33 <- 0

c17r34 <- c17r1 + c17r7 + c17r11 + c17r17 + c17r22 + c17r26 + c17r27 + c17r32 + c17r33

# Za barbiturate total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_1 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_3 == "41 - Barbiturati")

c18r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c18r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c18r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c18r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c18r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c18r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c18r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c18r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c18r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c18r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c18r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c18r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c18r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c18r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c18r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c18r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c18r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c18r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c18r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c18r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c18r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c18r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c18r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c18r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c18r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c18r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c18r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c18r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c18r29 <- 0

c18r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c18r31 <- 0

c18r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c18r33 <- 0

c18r34 <- c18r1 + c18r7 + c18r11 + c18r17 + c18r22 + c18r26 + c18r27 + c18r32 + c18r33

# Benzodiazepines total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_3 == "42 - Benzodiazepini")

c19r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c19r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c19r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c19r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c19r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c19r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c19r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c19r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c19r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c19r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c19r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c19r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c19r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c19r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c19r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c19r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c19r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c19r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c19r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c19r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c19r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c19r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c19r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c19r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c19r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c19r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c19r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c19r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c19r29 <- 0

c19r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c19r31 <- 0

c19r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c19r33 <- 0

c19r34 <- c19r1 + c19r7 + c19r11 + c19r17 + c19r22 + c19r26 + c19r27 + c19r32 + c19r33

# Za GHB/ GBL total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_3 == "43 - GHB/GBL")

c20r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c20r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c20r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c20r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c20r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c20r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c20r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c20r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c20r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c20r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c20r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c20r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c20r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c20r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c20r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c20r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c20r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c20r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c20r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c20r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c20r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c20r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c20r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c20r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c20r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c20r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c20r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c20r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c20r29 <- 0

c20r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c20r31 <- 0

c20r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c20r33 <- 0

c20r34 <- c20r1 + c20r7 + c20r11 + c20r17 + c20r22 + c20r26 + c20r27 + c20r32 + c20r33

# Other hypnotics and sedatives total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_1 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "46 - Drugi hipnotici i sedativi (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_3 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "46 - Drugi hipnotici i sedativi (navedite)")

c21r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c21r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c21r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c21r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c21r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c21r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c21r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c21r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c21r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c21r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c21r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c21r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c21r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c21r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c21r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c21r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c21r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c21r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c21r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c21r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c21r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c21r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c21r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c21r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c21r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c21r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c21r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c21r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c21r29 <- 0

c21r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c21r31 <- 0

c21r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c21r33 <- 0

c21r34 <- c21r1 + c21r7 + c21r11 + c21r17 + c21r22 + c21r26 + c21r27 + c21r32 + c21r33

# Halucinogeni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_1 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_1 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_3 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_3 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "54 - Drugi halucinogeni (navedite)")

c22r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c22r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c22r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c22r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c22r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c22r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c22r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c22r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c22r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c22r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c22r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c22r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c22r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c22r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c22r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c22r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c22r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c22r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c22r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c22r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c22r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c22r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c22r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c22r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c22r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c22r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c22r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c22r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c22r29 <- 0

c22r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c22r31 <- 0

c22r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c22r33 <- 0

c22r34 <- c22r1 + c22r7 + c22r11 + c22r17 + c22r22 + c22r26 + c22r27 + c22r32 + c22r33

# Sintetic catatoni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_3 == "51 - LSD")

c23r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c23r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c23r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c23r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c23r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c23r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c23r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c23r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c23r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c23r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c23r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c23r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c23r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c23r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c23r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c23r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c23r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c23r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c23r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c23r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c23r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c23r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c23r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c23r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c23r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c23r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c23r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c23r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c23r29 <- 0

c23r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c23r31 <- 0

c23r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c23r33 <- 0

c23r34 <- c23r1 + c23r7 + c23r11 + c23r17 + c23r22 + c23r26 + c23r27 + c23r32 + c23r33

# Sintetic catatoni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_3 == "52 - Ketamin")

c24r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c24r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c24r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c24r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c24r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c24r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c24r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c24r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c24r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c24r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c24r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c24r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c24r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c24r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c24r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c24r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c24r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c24r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c24r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c24r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c24r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c24r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c24r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c24r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c24r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c24r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c24r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c24r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c24r29 <- 0

c24r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c24r31 <- 0

c24r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c24r33 <- 0

c24r34 <- c24r1 + c24r7 + c24r11 + c24r17 + c24r22 + c24r26 + c24r27 + c24r32 + c24r33

# Other halucinogeni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "54 - Drugi halucinogeni (navedite)")

c25r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c25r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c25r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c25r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c25r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c25r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c25r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c25r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c25r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c25r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c25r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c25r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c25r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c25r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c25r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c25r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c25r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c25r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c25r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c25r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c25r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c25r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c25r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c25r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c25r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c25r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c25r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c25r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c25r29 <- 0

c25r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c25r31 <- 0

c25r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c25r33 <- 0

c25r34 <- c25r1 + c25r7 + c25r11 + c25r17 + c25r22 + c25r26 + c25r27 + c25r32 + c25r33

# Isparljivi inhalanti total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_3 == "60 - Isparljivi inhalanti")

c26r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c26r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c26r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c26r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c26r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c26r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c26r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c26r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c26r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c26r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c26r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c26r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c26r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c26r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c26r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c26r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c26r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c26r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c26r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c26r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c26r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c26r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c26r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c26r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c26r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c26r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c26r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c26r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c26r29 <- 0

c26r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c26r31 <- 0

c26r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c26r33 <- 0

c26r34 <- c26r1 + c26r7 + c26r11 + c26r17 + c26r22 + c26r26 + c26r27 + c26r32 + c26r33

# Cannabis total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_3 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_1 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_3 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_1 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "73 - Drugi kanabis (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "73 - Drugi kanabis (navedite)")

c27r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c27r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c27r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c27r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c27r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c27r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c27r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c27r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c27r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c27r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c27r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c27r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c27r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c27r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c27r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c27r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c27r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c27r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c27r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c27r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c27r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c27r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c27r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c27r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c27r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c27r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c27r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c27r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c27r29 <- 0

c27r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c27r31 <- 0

c27r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c27r33 <- 0

c27r34 <- c27r1 + c27r7 + c27r11 + c27r17 + c27r22 + c27r26 + c27r27 + c27r32 + c27r33

# Herban maricuana total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_3 == "70 - Marihuana")

c28r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c28r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c28r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c28r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c28r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c28r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c28r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c28r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c28r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c28r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c28r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c28r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c28r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c28r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c28r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c28r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c28r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c28r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c28r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c28r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c28r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c28r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c28r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c28r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c28r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c28r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c28r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c28r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c28r29 <- 0

c28r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c28r31 <- 0

c28r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c28r33 <- 0

c28r34 <- c28r1 + c28r7 + c28r11 + c28r17 + c28r22 + c28r26 + c28r27 + c28r32 + c28r33

# Sintetic catatoni total -------------------------------------------------------------------


c29r1 <- 0

c29r2 <- 0

c29r3 <- 0

c29r4 <- 0

c29r5 <- 0

c29r6 <- 0

c29r7 <- 0

c29r8 <- 0

c29r9 <- 0

c29r10 <- 0


c29r11 <- 0

c29r12 <- 0

c29r13 <- 0

c29r14 <- 0

c29r15 <- 0

c29r16 <- 0

c29r17 <- 0

c29r18 <- 0

c29r19 <- 0

c29r20 <- 0

c29r21 <- 0

c29r22 <- 0

c29r23 <- 0

c29r24 <- 0

c29r25 <- 0

c29r26 <- 0

c29r27 <- 0

c29r28 <- 0

c29r29 <- 0

c29r30 <- 0

c29r31 <- 0

c29r32 <- 0

c29r33 <- 0

c29r34 <- 0

# Sintetic catatoni total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_3 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "73 - Drugi kanabis (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "73 - Drugi kanabis (navedite)")

c30r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c30r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c30r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c30r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c30r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c30r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c30r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c30r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c30r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c30r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c30r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c30r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c30r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c30r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c30r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c30r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c30r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c30r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c30r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c30r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c30r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c30r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c30r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c30r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c30r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c30r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c30r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c30r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c30r29 <- 0

c30r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c30r31 <- 0

c30r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c30r33 <- 0

c30r34 <- c30r1 + c30r7 + c30r11 + c30r17 + c30r22 + c30r26 + c30r27 + c30r32 + c30r33

# Alcholchol total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "80 - Alkohol" |
           Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol" |
           Sporedni_uzrok_zavisnosti_3 == "80 - Alkohol")

c31r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c31r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c31r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c31r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c31r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c31r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c31r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c31r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c31r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c31r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c31r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c31r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c31r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c31r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c31r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c31r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c31r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c31r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c31r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c31r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c31r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c31r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c31r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c31r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c31r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c31r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c31r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c31r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c31r29 <- 0

c31r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c31r31 <- 0

c31r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c31r33 <- 0

c31r34 <- c31r1 + c31r7 + c31r11 + c31r17 + c31r22 + c31r26 + c31r27 + c31r32 + c31r33

# Missing total -------------------------------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "88 - Druga supstanca (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)" |
           Sporedni_uzrok_zavisnosti_3 == "88 - Druga supstanca (navedite)")

c32r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c32r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c32r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c32r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c32r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c32r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c32r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c32r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c32r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c32r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c32r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c32r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c32r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c32r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c32r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c32r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c32r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c32r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c32r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c32r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c32r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c32r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c32r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c32r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c32r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c32r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c32r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c32r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c32r29 <- 0

c32r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c32r31 <- 0

c32r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c32r33 <- 0

c32r34 <- c32r1 + c32r7 + c32r11 + c32r17 + c32r22 + c32r26 + c32r27 + c32r32 + c32r33

# Sintetic catatoni total -------------------------------------------------------------------


c33r1 <- 0

c33r2 <- 0

c33r3 <- 0

c33r4 <- 0

c33r5 <- 0

c33r6 <- 0

c33r7 <- 0

c33r8 <- 0

c33r9 <- 0

c33r10 <- 0


c33r11 <- 0

c33r12 <- 0

c33r13 <- 0

c33r14 <- 0

c33r15 <- 0

c33r16 <- 0

c33r17 <- 0

c33r18 <- 0

c33r19 <- 0

c33r20 <- 0

c33r21 <- 0

c33r22 <- 0

c33r23 <- 0

c33r24 <- 0

c33r25 <- 0

c33r26 <- 0

c33r27 <- 0

c33r28 <- 0

c33r29 <- 0

c33r30 <- 0

c33r31 <- 0
c33r32 <- 0

c33r33 <- 0

c33r34 <- 0

#  Total -------------------------------------------------------------------

baza_working <- baza

c34r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c34r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  nrow()

c34r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  nrow()

c34r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  nrow()

c34r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  nrow()

c34r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c34r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()

c34r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  nrow()

c34r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  nrow()

c34r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  nrow()


c34r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c34r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  nrow()

c34r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  nrow()

c34r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  nrow()

c34r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  nrow()

c34r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  nrow()

c34r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c34r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  nrow()

c34r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  nrow()

c34r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  nrow()

c34r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c34r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c34r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  nrow()

c34r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  nrow()

c34r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  nrow()

c34r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  nrow()

c34r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c34r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  nrow()

c34r29 <- 0

c34r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  nrow()

c34r31 <- 0

c34r32 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  nrow()

c34r33 <- 0

c34r34 <- c34r1 + c34r7 + c34r11 + c34r17 + c34r22 + c34r26 + c34r27 + c34r32 + c34r33



# Create sheet and file with Table_25.1.6  ----------------------------------

tabela_25.1.6 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","1.1 heroin","1.2 methadone misused","1.3 buprenorphine misused","1.4 fentanils misused","1.5 other opioids (1) ",
               "2. Cocaine (Total)","2.1 powder cocaine (HCL)","2.2 crack cocaine","2.3 other (1)","3. Stimulants other than cocaine (Total)",
               "3.1 amphetamines","3.2 methamphetamines","3.3 MDMA and derivates","3.4 synthetic cathinones","3.5 other stimulants (1)","4. Hypnotics and Sedatives (Total)",
               "4.1 barbiturates misused","4.2 benzodiazepines misused","4.3 GHB / GBL","4.4 other hypnotics and sedatives (1)"," 5. Hallucinogens (Total)","5.1 LSD",
               "5.2 ketamine","5.3 other hallucinogens (1)","6. Volatile Inhalants","7. Cannabis (Total)","7.1 Herbal cannabis or resin"," 7.2 Synthetic cannabinoids",
               "7.3 others (please specify)","8. Alcohol","9. Other Substances (Total)","99. Not known / missing","TOTAL"), 
  opioidsTotal = c("1. Opioids (Total)", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13, c1r14, 
                   c1r15, c1r16, c1r17, c1r18, c1r19, c1r20, c1r21, c1r22, c1r23, c1r24, c1r25, c1r26, c1r27, c1r28, c1r29, c1r30, c1r31, c1r32, c1r33, c1r34),
  opioidsTotal = c("1.1 heroin", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13, c2r14, 
                   c2r15, c2r16, c2r17, c2r18, c2r19, c2r20, c2r21, c2r22, c2r23, c2r24, c2r25, c2r26, c2r27, c2r28, c2r29, c2r30, c2r31, c2r32, c2r33, c2r34),
  opioidsTotal = c("1.2 methadone \nmisused", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13, c3r14, 
                   c3r15, c3r16, c3r17, c3r18, c3r19, c3r20, c3r21, c3r22, c3r23, c3r24, c3r25, c3r26, c3r27, c3r28, c3r29, c3r30, c3r31, c3r32, c3r33, c3r34),
  opioidsTotal = c("1.3 buprenorphine \nmisused", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13, c4r14, 
                   c4r15, c4r16, c4r17, c4r18, c4r19, c4r20, c4r21, c4r22, c4r23, c4r24, c4r25, c4r26, c4r27, c4r28, c4r29, c4r30, c4r31, c4r32, c4r33, c4r34),
  opioidsTotal = c("1.4 fentanils misused", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10, c5r11, c5r12, c5r13, c5r14, 
                   c5r15, c5r16, c5r17, c5r18, c5r19, c5r20, c5r21, c5r22, c5r23, c5r24, c5r25, c5r26, c5r27, c5r28, c5r29, c5r30, c5r31, c5r32, c5r33, c5r34),
  opioidsTotal = c("1.5 other opioids", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10, c6r11, c6r12, c6r13, c6r14, 
                   c6r15, c6r16, c6r17, c6r18, c6r19, c6r20, c6r21, c6r22, c6r23, c6r24, c6r25, c6r26, c6r27, c6r28, c6r29, c6r30, c6r31, c6r32, c6r33, c6r34),
  opioidsTotal = c("2. Cocaine (Total)", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7, c7r8, c7r9, c7r10, c7r11, c7r12, c7r13, c7r14, 
                   c7r15, c7r16, c7r17, c7r18, c7r19, c7r20, c7r21, c7r22, c7r23, c7r24, c7r25, c7r26, c7r27, c7r28, c7r29, c7r30, c7r31, c7r32, c7r33, c7r34),
  opioidsTotal = c("2.1 powder cocaine (HCL)", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7, c8r8, c8r9, c8r10, c8r11, c8r12, c8r13, c8r14, 
                   c8r15, c8r16, c8r17, c8r18, c8r19, c8r20, c8r21, c8r22, c8r23, c8r24, c8r25, c8r26, c8r27, c8r28, c8r29, c8r30, c8r31, c8r32, c8r33, c8r34),
  opioidsTotal = c("2.2 crack cocaine", c9r1, c9r2, c9r3, c9r4, c9r5, c9r6, c9r7, c9r8, c9r9, c9r10, c9r11, c9r12, c9r13, c9r14, 
                   c9r15, c9r16, c9r17, c9r18, c9r19, c9r20, c9r21, c9r22, c9r23, c9r24, c9r25, c9r26, c9r27, c9r28, c9r29, c9r30, c9r31, c9r32, c9r33, c9r34),
  opioidsTotal = c("2.3 other cocaine", c10r1, c10r2, c10r3, c10r4, c10r5, c10r6, c10r7, c10r8, c10r9, c10r10, c10r11, c10r12, c10r13, c10r14, 
                   c10r15, c10r16, c10r17, c10r18, c10r19, c10r20, c10r21, c10r22, c10r23, c10r24, c10r25, c10r26, c10r27, c10r28, c10r29, c10r30, c10r31, c10r32, c10r33, c10r34),
  opioidsTotal = c("3. Stimulants \nother than \ncocaine (Total)", c11r1, c11r2, c11r3, c11r4, c11r5, c11r6, c11r7, c11r8, c11r9, c11r10, c11r11, c11r12, c11r13, c11r14, 
                   c11r15, c11r16, c11r17, c11r18, c11r19, c11r20, c11r21, c11r22, c11r23, c11r24, c11r25, c11r26, c11r27, c11r28, c11r29, c11r30, c11r31, c11r32, c11r33, c11r34),
  opioidsTotal = c("3.1 amphetamines", c12r1, c12r2, c12r3, c12r4, c12r5, c12r6, c12r7, c12r8, c12r9, c12r10, c12r11, c12r12, c12r13, c12r14, 
                   c12r15, c12r16, c12r17, c12r18, c12r19, c12r20, c12r21, c12r22, c12r23, c12r24, c12r25, c12r26, c12r27, c12r28, c12r29, c12r30, c12r31, c12r32, c12r33, c12r34),
  opioidsTotal = c("3.2 methamphetamines", c13r1, c13r2, c13r3, c13r4, c13r5, c13r6, c13r7, c13r8, c13r9, c13r10, c13r11, c13r12, c13r13, c13r14, 
                   c13r15, c13r16, c13r17, c13r18, c13r19, c13r20, c13r21, c13r22, c13r23, c13r24, c13r25, c13r26, c13r27, c13r28, c13r29, c13r30, c13r31, c13r32, c13r33, c13r34),
  opioidsTotal = c("3.3 MDMA and \nderivates", c14r1, c14r2, c14r3, c14r4, c14r5, c14r6, c14r7, c14r8, c14r9, c14r10, c14r11, c14r12, c14r13, c14r14, 
                   c14r15, c14r16, c14r17, c14r18, c14r19, c14r20, c14r21, c14r22, c14r23, c14r24, c14r25, c14r26, c14r27, c14r28, c14r29, c14r30, c14r31, c14r32, c14r33, c14r34),
  opioidsTotal = c("3.4 synthetic \ncathinones", c15r1, c15r2, c15r3, c15r4, c15r5, c15r6, c15r7, c15r8, c15r9, c15r10, c15r11, c15r12, c15r13, c15r14, 
                   c15r15, c15r16, c15r17, c15r18, c15r19, c15r20, c15r21, c15r22, c15r23, c15r24, c15r25, c15r26, c15r27, c15r28, c15r29, c15r30, c15r31, c15r32, c15r33, c15r34),
  opioidsTotal = c("3.5 other \nstimulants", c16r1, c16r2, c16r3, c16r4, c16r5, c16r6, c16r7, c16r8, c16r9, c16r10, c16r11, c16r12, c16r13, c16r14, 
                   c16r15, c16r16, c16r17, c16r18, c16r19, c16r20, c16r21, c16r22, c16r23, c16r24, c16r25, c16r26, c16r27, c16r28, c16r29, c16r30, c16r31, c16r32, c16r33, c16r34),
  opioidsTotal = c("4. Hypnotics and \nSedatives (Total)", c17r1, c17r2, c17r3, c17r4, c17r5, c17r6, c17r7, c17r8, c17r9, c17r10, c17r11, c17r12, c17r13, c17r14, 
                   c17r15, c17r16, c17r17, c17r18, c17r19, c17r20, c17r21, c17r22, c17r23, c17r24, c17r25, c17r26, c17r27, c17r28, c17r29, c17r30, c17r31, c17r32, c17r33, c17r34),
  opioidsTotal = c("4.1 barbiturates \nmisused", c18r1, c18r2, c18r3, c18r4, c18r5, c18r6, c18r7, c18r8, c18r9, c18r10, c18r11, c18r12, c18r13, c18r14, 
                   c18r15, c18r16, c18r17, c18r18, c18r19, c18r20, c18r21, c18r22, c18r23, c18r24, c18r25, c18r26, c18r27, c18r28, c18r29, c18r30, c18r31, c18r32, c18r33, c18r34),
  opioidsTotal = c("4.2 benzodiazepines \nmisused", c19r1, c19r2, c19r3, c19r4, c19r5, c19r6, c19r7, c19r8, c19r9, c19r10, c19r11, c19r12, c19r13, c19r14, 
                   c19r15, c19r16, c19r17, c19r18, c19r19, c19r20, c19r21, c19r22, c19r23, c19r24, c19r25, c19r26, c19r27, c19r28, c19r29, c19r30, c19r31, c19r32, c19r33, c19r34),
  opioidsTotal = c("4.3 GHB / GBL", c20r1, c20r2, c20r3, c20r4, c20r5, c20r6, c20r7, c20r8, c20r9, c20r10, c20r11, c20r12, c20r13, c20r14, 
                   c20r15, c20r16, c20r17, c20r18, c20r19, c20r20, c20r21, c20r22, c20r23, c20r24, c20r25, c20r26, c20r27, c20r28, c20r29, c20r30, c20r31, c20r32, c20r33, c20r34),
  opioidsTotal = c("4.4 other hypnotics \nand sedatives (1)", c21r1, c21r2, c21r3, c21r4, c21r5, c21r6, c21r7, c21r8, c21r9, c21r10, c21r11, c21r12, c21r13, c21r14, 
                   c21r15, c21r16, c21r17, c21r18, c21r19, c21r20, c21r21, c21r22, c21r23, c21r24, c21r25, c21r26, c21r27, c21r28, c21r29, c21r30, c21r31, c21r32, c21r33, c21r34),
  opioidsTotal = c("5. Hallucinogens (Total)", c22r1, c22r2, c22r3, c22r4, c22r5, c22r6, c22r7, c22r8, c22r9, c22r10, c22r11, c22r12, c22r13, c22r14, 
                   c22r15, c22r16, c22r17, c22r18, c22r19, c22r20, c22r21, c22r22, c22r23, c22r24, c22r25, c22r26, c22r27, c22r28, c22r29, c22r30, c22r31, c22r32, c22r33, c22r34),
  opioidsTotal = c("5.1 LSD", c23r1, c23r2, c23r3, c23r4, c23r5, c23r6, c23r7, c23r8, c23r9, c23r10, c23r11, c23r12, c23r13, c23r14, 
                   c23r15, c23r16, c23r17, c23r18, c23r19, c23r20, c23r21, c23r22, c23r23, c23r24, c23r25, c23r26, c23r27, c23r28, c23r29, c23r30, c23r31, c23r32, c23r33, c23r34),
  opioidsTotal = c("5.2 ketamine", c24r1, c24r2, c24r3, c24r4, c24r5, c24r6, c24r7, c24r8, c24r9, c24r10, c24r11, c24r12, c24r13, c24r14, 
                     c24r15, c24r16, c24r17, c24r18, c24r19, c24r20, c24r21, c24r22, c24r23, c24r24, c24r25, c24r26, c24r27, c24r28, c24r29, c24r30, c24r31, c24r32, c24r33, c24r34),
  opioidsTotal = c("5.3 other \nhallucinogens (1)", c25r1, c25r2, c25r3, c25r4, c25r5, c25r6, c25r7, c25r8, c25r9, c25r10, c25r11, c25r12, c25r13, c25r14, 
                   c25r15, c25r16, c25r17, c25r18, c25r19, c25r20, c25r21, c25r22, c25r23, c25r24, c25r25, c25r26, c25r27, c25r28, c25r29, c25r30, c25r31, c25r32, c25r33, c25r34),
  opioidsTotal = c("6. Volatile Inhalants", c26r1, c26r2, c26r3, c26r4, c26r5, c26r6, c26r7, c26r8, c26r9, c26r10, c26r11, c26r12, c26r13, c26r14, 
                   c26r15, c26r16, c26r17, c26r18, c26r19, c26r20, c26r21, c26r22, c26r23, c26r24, c26r25, c26r26, c26r27, c26r28, c26r29, c26r30, c26r31, c26r32, c26r33, c26r34),
  opioidsTotal = c("7. Cannabis (Total)", c27r1, c27r2, c27r3, c27r4, c27r5, c27r6, c27r7, c27r8, c27r9, c27r10, c27r11, c27r12, c27r13, c27r14, 
                   c27r15, c27r16, c27r17, c27r18, c27r19, c27r20, c27r21, c27r22, c27r23, c27r24, c27r25, c27r26, c27r27, c27r28, c27r29, c27r30, c27r31, c27r32, c27r33, c27r34),
  opioidsTotal = c("7.1 Herbal cannabis \nor resin", c28r1, c28r2, c28r3, c28r4, c28r5, c28r6, c28r7, c28r8, c28r9, c28r10, c28r11, c28r12, c28r13, c28r14, 
                   c28r15, c28r16, c28r17, c28r18, c28r19, c28r20, c28r21, c28r22, c28r23, c28r24, c28r25, c28r26, c28r27, c28r28, c28r29, c28r30, c28r31, c28r32, c28r33, c28r34),
  opioidsTotal = c("7.2 Synthetic \ncannabinoids", c29r1, c29r2, c29r3, c29r4, c29r5, c29r6, c29r7, c29r8, c29r9, c29r10, c29r11, c29r12, c29r13, c29r14, 
                   c29r15, c29r16, c29r17, c29r18, c29r19, c29r20, c29r21, c29r22, c29r23, c29r24, c29r25, c29r26, c29r27, c29r28, c29r29, c29r30, c29r31, c29r32, c29r33, c29r34),
  opioidsTotal = c("7.3 other cannabis", c30r1, c30r2, c30r3, c30r4, c30r5, c30r6, c30r7, c30r8, c30r9, c30r10, c30r11, c30r12, c30r13, c30r14, 
                   c30r15, c30r16, c30r17, c30r18, c30r19, c30r20, c30r21, c30r22, c30r23, c30r24, c30r25, c30r26, c30r27, c30r28, c30r29, c30r30, c30r31, c30r32, c30r33, c30r34),
  opioidsTotal = c("8. Alcohol", c31r1, c31r2, c31r3, c31r4, c31r5, c31r6, c31r7, c31r8, c31r9, c31r10, c31r11, c31r12, c31r13, c31r14, 
                   c31r15, c31r16, c31r17, c31r18, c31r19, c31r20, c31r21, c31r22, c31r23, c31r24, c31r25, c31r26, c31r27, c31r28, c31r29, c31r30, c31r31, c31r32, c31r33, c31r34),
  opioidsTotal = c("9. Other Substances \n(Total)", c32r1, c32r2, c32r3, c32r4, c32r5, c32r6, c32r7, c32r8, c32r9, c32r10, c32r11, c32r12, c32r13, c32r14, 
                   c32r15, c32r16, c32r17, c32r18, c32r19, c32r20, c32r21, c32r22, c32r23, c32r24, c32r25, c32r26, c32r27, c32r28, c32r29, c32r30, c32r31, c32r32, c32r33, c32r34),
  opioidsTotal = c("99. Not known \n/ missing", c33r1, c33r2, c33r3, c33r4, c33r5, c33r6, c33r7, c33r8, c33r9, c33r10, c33r11, c33r12, c33r13, c33r14, 
                   c33r15, c33r16, c33r17, c33r18, c33r19, c33r20, c33r21, c33r22, c33r23, c33r24, c33r25, c33r26, c33r27, c33r28, c33r29, c33r30, c33r31, c33r32, c33r33, c33r34),
  opioidsTotal = c("Total", c34r1, c34r2, c34r3, c34r4, c34r5, c34r6, c34r7, c34r8, c34r9, c34r10, c34r11, c34r12, c34r13, c34r14, 
                   c34r15, c34r16, c34r17, c34r18, c34r19, c34r20, c34r21, c34r22, c34r23, c34r24, c34r25, c34r26, c34r27, c34r28, c34r29, c34r30, c34r31, c34r32, c34r33, c34r34)
)

#print(tabela_25.1.6) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_25.1.6, file="data/izlazniPodaci.xlsx", sheetName="tabela_25.1.6", append=TRUE, col.names=FALSE, row.names=FALSE)

