### Mapiranje za tabelu 16.1.1 iz .sjz.rs baze: ----
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
### Where live = Gde_zivi
### 1. stable \naccomodation = "1 - Stalni smeštaj"
### 2. unstable \naccomodation\nand/or homeless  = "2 - Privremeni smeštaj"
### 2. unstable \naccomodation\nand/or homeless  = "4 - U instituciji"
### 2. unstable \naccomodation\nand/or homeless  = "5 - Beskućnik"
### 3. in detention = "3 - U zatvoru/pritvoru"
### 4. other = "6 - Drugo"
### 99. not know n/ missing = "0 - Nepoznat podatak"
### Total = Zbir svega 
### ---
### 16.1.1 Primary drug by living status (where) –  All treatment entrants  (Never previously treated + Previously treated + Not known/Missing)

## Sracunaj vrednosti za  TDI tabelu 16.1.1 --------

# Za stable accomodation only ----------------------------------------------

baza_working <- baza |> 
  filter(Gde_zivi == "1 - Stalni smeštaj")

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

# Za unstable accommodation and/or homeless only ---------------------------------------------------------

baza_working <- baza |> 
  filter(Gde_zivi == "2 - Privremeni smeštaj" |
           Gde_zivi == "4 - U instituciji" |
           Gde_zivi == "5 - Beskućnik")

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

# Za in detention only -----------------------------------------------------

baza_working <- baza |> 
  filter(Gde_zivi == "3 - U zatvoru/pritvoru")

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

# Za other only -----------------------------------------------------

baza_working <- baza |> 
  filter(Gde_zivi == "6 - Drugo")

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

# Za not known or missing data only -----------------------------------------------------

baza_working <- baza |> 
  filter(Gde_zivi == "0 - Nepoznat podatak")

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

# Za total data only -----------------------------------------------------

baza_working <- baza

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

# Create sheet and file with Table_16.1.1  ----------------------------------

tabela_16.1.1 <- data.frame(
  rowName = c ("", "1. Opioids (Total)","2. Cocaine (Total)","3. Stimulants other than cocaine (Total)","4. Hypnotics and Sedatives (Total)", "5. Hallucinogens (Total)","6. Volatile Inhalants","7. Cannabis (Total)","9. Other Substances (Total)"," 99. Not known / missing"," TOTAL"), 
  stable_accomodation = c("1. stable \naccommodation", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10),
  unstable_accomodation = c("2. unstable \naccommodation \n/or homeless", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10),
  in_detention = c("3. in detention", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10),
  other = c("4. other ", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10),
  not_know_missing = c("5. not know n/ missing", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10),
  total = c("Total", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10)
)
#print(tabela_16.1.1) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_16.1.1, file="data/izlazniPodaci.xlsx", sheetName="tabela_16.1.1", append=TRUE, col.names=FALSE, row.names=FALSE)

