### Mapiranje za tabelu 11.1.4 iz .sjz.rs baze: ----
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
### Age at fir use =  Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti
### Lag to current use = Age at entering current treatment - Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti
### ---
### Gender  = Males
### Pol = Muško
### ---
### 11.1.4 Primary drug by mean age at entering current treatment, at age at first use, and mean lag to current treatment -  All treatment entrants  (Never previously treated + Previously treated + Not known/Missing) -  MALES 
### ---
## Sracunaj vrednosti za  TDI tabelu 11.1.4 --------

baza_working <- baza |> 
  filter(Pol == "Muško")

# Za mean age of entering treatment only ----------------------------------------------

# baza <- baza |> 
#   mutate(
#     years_diff = time_length(difftime(Datum_pochetka_ove_epizode_lechenja, Datum_rodjenja), "years"),
#     year_complete_round = as.numeric(floor(years_diff)),
#     lag_years_first_use_treatment = year_complete_round - Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti,
#     .after = Datum_pochetka_ove_epizode_lechenja
#   )
# view(baza)


c1r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(mean(year_complete_round)) |>
  as.numeric() |> 
  round(digits = 1)


c1r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(c1r1 = mean(year_complete_round))|>
  as.numeric() |> 
  round(digits = 1)

c1r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(c1r1 = mean(year_complete_round))|>
  as.numeric() |> 
  round(digits = 1)

c1r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(c1r1 = mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r29 <- NaN

c1r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c1r32 <- NaN

c1r33 <- baza_working |> 
  summarise(mean(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

# Za standard deviation age of entering treatment only ---------------------------------------------------------


c2r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)


c2r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r29 <- NaN

c2r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)

c2r32 <- NaN

c2r33 <- baza_working |> 
  summarise(sd(year_complete_round))|> 
  as.numeric()|> 
  round(digits = 1)


# Za count age of entering treatment only -----------------------------------------------------


c3r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)


c3r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r29 <- NaN

c3r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)

c3r32 <- NaN

c3r33 <- baza_working |> 
  summarise(sum(!is.na(year_complete_round)))|> 
  as.numeric()|> 
  round(digits = 1)


# Za mean age at the first use only -------------------------------------------------------

c4r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

(c4r1)

c4r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r29 <- NaN

c4r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c4r32 <- NaN

c4r33 <- baza_working |> 
  summarise(mean(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

# Za standard deviation of the first use only -------------------------------------------------------

c5r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r29 <- NaN

c5r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)

c5r32 <- NaN

c5r33 <- baza_working |> 
  summarise(sd(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti, na.rm=T))|> 
  as.numeric()|> 
  round(digits = 1)


# Za number of clients with age of first use only -----------------------------------------------------------------


c6r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r29 <- NaN

c6r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

c6r32 <- NaN

c6r33 <- baza_working |> 
  summarise(sum(!is.na(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti)))|> 
  as.numeric()|> 
  round(digits = 1)

# Za mean of the lag of first use only -----------------------------------------------------------------

c7r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r29 <- NaN

c7r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c7r32 <- NaN

c7r33 <- baza_working |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

# Za standard viation of the lag of first use only -----------------------------------------------------------------

c8r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r29 <- NaN

c8r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(sd(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

c8r32 <- NaN

c8r33 <- baza_working |> 
  summarise(mean(lag_years_first_use_treatment, na.rm= T))|> 
  as.numeric()|> 
  round(digits = 1)

# Za cound of the lag of first use only -----------------------------------------------------------------

c9r1 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin" |
           Glavni_uzrok_zavisnosti == "12 - Metadon" | 
           Glavni_uzrok_zavisnosti == "13 - Buprenorfin" |
           Glavni_uzrok_zavisnosti == "14 - Fentanil" |
           Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |>
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r2 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "11 - Heroin") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r3 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "12 - Metadon") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r4 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "13 - Buprenorfin") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r5 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "14 - Fentanil") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r6 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "15 - Tramadol" |
           Glavni_uzrok_zavisnosti == "16 - Opioid, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "17 - Drugi opioidi (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r7 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina" |
           Glavni_uzrok_zavisnosti == "22 - Krek" |
           Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r8 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "21 - Prah kokaina") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r9 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "22 - Krek") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r10 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "23 - Drugi kokain (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r11 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin" |
           Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r12 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "31 - Amfetamin") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r13 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r14 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r15 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r16 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" ) |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r17 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati" |
           Glavni_uzrok_zavisnosti == "42 - Benzodiazepini" |
           Glavni_uzrok_zavisnosti == "43 - GHB/GBL" |
           Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r18 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "41 - Barbiturati") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r19 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "42 - Benzodiazepini") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r20 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "43 - GHB/GBL") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r21 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "44 - Pregabalin" |
           Glavni_uzrok_zavisnosti == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r22 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD" |
           Glavni_uzrok_zavisnosti == "52 - Ketamin" |
           Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r23 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "51 - LSD") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r24 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "52 - Ketamin") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r25 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "53 - Halucinogen, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "54 - Drugi halucinogeni (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r26 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "60 - Isparljivi inhalanti") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r27 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" |
           Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r28 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "70 - Marihuana" |
           Glavni_uzrok_zavisnosti == "71 - Hašiš" ) |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r29 <- NaN

c9r30 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "72 - Kanabis bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "73 - Drugi kanabis (navedite)" ) |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r31 <- baza_working |> 
  filter(Glavni_uzrok_zavisnosti == "88 - Druga supstanca (navedite)") |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

c9r32 <- NaN

c9r33 <- baza_working |> 
  summarise(sum(!is.na(lag_years_first_use_treatment)))|> 
  as.numeric()|> 
  round(digits = 1)

# Create sheet and file with Table_11.1.4  ----------------------------------

tabela_11.1.4 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","1.1 heroin","1.2 methadone misused","1.3 buprenorphine misused","1.4 fentanils misused","1.5 other opioids (1) ","2. Cocaine (Total)","2.1 powder cocaine (HCL)"," 2.2 crack cocaine","2.3 other (1)","3. Stimulants other than cocaine (Total)","3.1 amphetamines","3.2 methamphetamines","3.3 MDMA and derivates","3.4 synthetic cathinones","3.5 other stimulants (1)","4. Hypnotics and Sedatives (Total)","4.1 barbiturates misused","4.2 benzodiazepines misused","4.3 GHB / GBL","4.4 other hypnotics and sedatives (1)"," 5. Hallucinogens (Total)","5.1 LSD","5.2 ketamine","5.3 other hallucinogens (1)","6. Volatile Inhalants","7. Cannabis (Total)","7.1 Herbal cannabis or resin"," 7.2 Synthetic cannabinoids","7.3 others (please specify)","9. Other Substances (Total)","99. Not known / missing","TOTAL"), 
  mean_old = c("Mean age \nat entering \ncurrent \ntreatment", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13, c1r14, c1r15, c1r16, c1r17, c1r18, c1r19, c1r20, c1r21, c1r22, c1r23, c1r24, c1r25, c1r26, c1r27, c1r28, c1r29, c1r30, c1r31, c1r32, c1r33),
  standard_old = c("Standard \ndeviation of \nthe age of \nentering", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13, c2r14, c2r15, c2r16, c2r17, c2r18, c2r19, c2r20, c2r21, c2r22, c2r23, c2r24, c2r25, c2r26, c2r27, c2r28, c2r29, c2r30, c2r31, c2r32, c2r33),
  n_old = c("Number of \nclients \nwas valid \ninformation", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13, c3r14, c3r15, c3r16, c3r17, c3r18, c3r19, c3r20, c3r21, c3r22, c3r23, c3r24, c3r25, c3r26, c3r27, c3r28, c3r29, c3r30, c3r31, c3r32, c3r33),
  mean_use = c("Mean age \nat first \nuse", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13, c4r14, c4r15, c4r16, c4r17, c4r18, c4r19, c4r20, c4r21, c4r22, c4r23, c4r24, c4r25, c4r26, c4r27, c4r28, c4r29, c4r30, c4r31, c4r32, c4r33),
  standard_use = c("Standard \ndeviation of \nthe age at \nfirst use", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10, c5r11, c5r12, c5r13, c5r14, c5r15, c5r16, c5r17, c5r18, c5r19, c5r20, c5r21, c5r22, c5r23, c5r24, c5r25, c5r26, c5r27, c5r28, c5r29, c5r30, c5r31, c5r32, c5r33),
  n_use = c("Number of \nclients \nwas valid \ninformation", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10, c6r11, c6r12, c6r13, c6r14, c6r15, c6r16, c6r17, c6r18, c6r19, c6r20, c6r21, c6r22, c6r23, c6r24, c6r25, c6r26, c6r27, c6r28, c6r29, c6r30, c6r31, c6r32, c6r33),
  mean_lag = c("Mean lag \nto current \ntreatment", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7, c7r8, c7r9, c7r10, c7r11, c7r12, c7r13, c7r14, c7r15, c7r16, c7r17, c7r18, c7r19, c7r20, c7r21, c7r22, c7r23, c7r24, c7r25, c7r26, c7r27, c7r28, c7r29, c7r30, c7r31, c7r32, c7r33),
  sd_lag = c("Standard \ndeviation of \nthe lag \nto current", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7, c8r8, c8r9, c8r10, c8r11, c8r12, c8r13, c8r14, c8r15, c8r16, c8r17, c8r18, c8r19, c8r20, c8r21, c8r22, c8r23, c8r24, c8r25, c8r26, c8r27, c8r28, c8r29, c8r30, c8r31, c8r32, c8r33),
  n_lag = c("Number of \nclients \nwas valid \ninformation", c9r1, c9r2, c9r3, c9r4, c9r5, c9r6, c9r7, c9r8, c9r9, c9r10, c9r11, c9r12, c9r13, c9r14, c9r15, c9r16, c9r17, c9r18, c9r19, c9r20, c9r21, c9r22, c9r23, c9r24, c9r25, c9r26, c9r27, c9r28, c9r29, c9r30, c9r31, c9r32, c9r33)
)

tabela_11.1.4[tabela_11.1.4 == "NaN"] <- NA
tabela_11.1.4[is.na(tabela_11.1.4)] <- "" 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_11.1.4, file="data/izlazniPodaci.xlsx", sheetName="tabela_11.1.4", append=TRUE, col.names=FALSE, row.names=FALSE)

