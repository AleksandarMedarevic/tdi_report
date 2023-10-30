### Mapiranje za tabelu 25.1.3 iz .sjz.rs baze: ----
### ---
###
### ---
### 25.1.3 Primary  Stimulants (other than Cocaine)  clients by other (secondary) drugs – 
### All treatment entrants (Never previously treated + Previously treated + Not known/Missing)
### ---

## Sracunaj vrednosti za  TDI tabelu 25.1.3 ----


# Za heroin only ----------------------------------------------

baza_working <- baza |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
 filter(Sporedni_uzrok_zavisnosti_1 == "11 - Heroin")

c1r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c1r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c1r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c1r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c1r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c1r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c1r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c1r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c1r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c1r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c1r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c1r12 <- 0

c1r13 <- c1r1 + c1r2 + c1r3 + c1r4 + c1r5 + c1r6+ c1r7 + c1r8 + c1r9 + c1r10 + c1r11

# Za opioids other only ----------------------------------------------

baza_working <- baza |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin") |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_1 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_1 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_1 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_1 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "17 - Drugi opioidi (navedite)")

c2r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c2r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c2r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c2r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c2r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c2r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c2r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c2r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c2r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c2r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c2r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c2r12 <- 0

c2r13 <- c2r1 + c2r2 + c2r3 + c2r4 + c2r5 + c2r6+ c2r7 + c2r8 + c2r9 + c2r10 + c2r11

# Za cocaine only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "21 - Prah kokaina" | 
           Sporedni_uzrok_zavisnosti_1 == "23 - Drugi kokain (navedite)") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c3r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c3r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c3r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c3r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c3r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c3r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c3r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c3r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c3r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c3r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c3r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c3r12 <- 0

c3r13 <- c3r1 + c3r2 + c3r3 + c3r4 + c3r5 + c3r6+ c3r7 + c3r8 + c3r9 + c3r10 + c3r11

# Za crack only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "22 - Krek") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c4r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c4r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c4r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c4r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c4r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c4r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c4r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c4r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c4r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c4r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c4r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c4r12 <- 0

c4r13 <- c4r1 + c4r2 + c4r3 + c4r4 + c4r5 + c4r6+ c4r7 + c4r8 + c4r9 + c4r10 + c4r11

# Za Amfetamin/ Metamfetamin only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_1 == "32 - Metamfetamin") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c5r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c5r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c5r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c5r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c5r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c5r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c5r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c5r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c5r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c5r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c5r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c5r12 <- 0

c5r13 <- c5r1 + c5r2 + c5r3 + c5r4 + c5r5 + c5r6+ c5r7 + c5r8 + c5r9 + c5r10 + c5r11

# Za canabis only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_1 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_1 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "73 - Drugi kanabis (navedite)") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c6r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c6r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c6r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c6r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c6r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c6r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c6r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c6r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c6r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c6r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c6r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c6r12 <- 0

c6r13 <- c6r1 + c6r2 + c6r3 + c6r4 + c6r5 + c6r6+ c6r7 + c6r8 + c6r9 + c6r10 + c6r11

# Za other stimulants only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_1 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_1 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "36 - Drugi stimulansi (navedite)") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c7r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c7r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c7r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c7r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c7r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c7r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c7r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c7r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c7r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c7r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c7r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c7r12 <- 0

c7r13 <- c7r1 + c7r2 + c7r3 + c7r4 + c7r5 + c7r6+ c7r7 + c7r8 + c7r9 + c7r10 + c7r11

# Za hypnotics and sedatives only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_1 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_1 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_1 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_1 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c8r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c8r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c8r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c8r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c8r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c8r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c8r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c8r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c8r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c8r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c8r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c8r12 <- 0

c8r13 <- c8r1 + c8r2 + c8r3 + c8r4 + c8r5 + c8r6+ c8r7 + c8r8 + c8r9 + c8r10 + c8r11

# Za alcohol only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "80 - Alkohol") |> 
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c9r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c9r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c9r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c9r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c9r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c9r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c9r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c9r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c9r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c9r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c9r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c9r12 <- 0

c9r13 <- c9r1 + c9r2 + c9r3 + c9r4 + c9r5 + c9r6+ c9r7 + c9r8 + c9r9 + c9r10 + c9r11

# Za other only ----------------------------------------------

baza_working <- baza |> 
  filter(Sporedni_uzrok_zavisnosti_1 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_1 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_1 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_1 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_1 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_1 == "88 - Druga supstanca (navedite)") |>
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c10r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c10r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c10r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c10r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c10r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c10r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c10r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c10r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c10r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c10r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c10r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c10r12 <- 0

c10r13 <- c10r1 + c10r2 + c10r3 + c10r4 + c10r5 + c10r6+ c10r7 + c10r8 + c10r9 + c10r10 + c10r11

# Za none only ----------------------------------------------

baza_working <- baza |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_1)) |>
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")

c11r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c11r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c11r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c11r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c11r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c11r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c11r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c11r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c11r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c11r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c11r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c11r12 <- 0

c11r13 <- c11r1 + c11r2 + c11r3 + c11r4 + c11r5 + c11r6+ c11r7 + c11r8 + c11r9 + c11r10 + c11r11

# Za not known only ----------------------------------------------


c12r1 <- 0

c12r2 <- 0

c12r3 <- 0

c12r4 <- 0

c12r5 <- 0

c12r6 <- 0

c12r7 <- 0

c12r8 <- 0

c12r9 <- 0

c12r10 <- 0

c12r11 <- 0

c12r12 <- 0

c12r13 <- c12r1 + c12r2 + c12r3 + c12r4 + c12r5 + c12r6+ c12r7 + c12r8 + c12r9 + c12r10 + c12r11

# Za total only ----------------------------------------------

baza_working <- baza |>
  filter(Glavni_uzrok_zavisnosti == "33 - Ekstazi (MDMA i derivati)" |
           Glavni_uzrok_zavisnosti == "34 - Sintetički katinoni" |
           Glavni_uzrok_zavisnosti == "35 - Stimulans, bez detaljnih informacija" |
           Glavni_uzrok_zavisnosti == "36 - Drugi stimulansi (navedite)" | 
           Glavni_uzrok_zavisnosti == "31 - Amfetamin" |
           Glavni_uzrok_zavisnosti == "32 - Metamfetamin")


c13r1 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "11 - Heroin") |> 
  nrow()

c13r2 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "12 - Metadon" | 
           Sporedni_uzrok_zavisnosti_2 == "13 - Buprenorfin" |
           Sporedni_uzrok_zavisnosti_2 == "14 - Fentanil" |
           Sporedni_uzrok_zavisnosti_2 == "15 - Tramadol" |
           Sporedni_uzrok_zavisnosti_2 == "16 - Opioid, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "17 - Drugi opioidi (navedite)") |> 
  nrow()

c13r3 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "21 - Prah kokaina" |
           Sporedni_uzrok_zavisnosti_2 == "23 - Drugi kokain (navedite)") |> 
  nrow()

c13r4 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "22 - Krek") |> 
  nrow()

c13r5 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "31 - Amfetamin" |
           Sporedni_uzrok_zavisnosti_2 == "32 - Metamfetamin") |> 
  nrow()

c13r6 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "70 - Marihuana" |
           Sporedni_uzrok_zavisnosti_2 == "71 - Hašiš" |
           Sporedni_uzrok_zavisnosti_2 == "72 - Kanabis bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "73 - Drugi kanabis (navedite)") |> 
  nrow()

c13r7 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "33 - Ekstazi (MDMA i derivati)" |
           Sporedni_uzrok_zavisnosti_2 == "34 - Sintetički katinoni" |
           Sporedni_uzrok_zavisnosti_2 == "35 - Stimulans, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "36 - Drugi stimulansi (navedite)") |> 
  nrow()

c13r8 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "41 - Barbiturati" |
           Sporedni_uzrok_zavisnosti_2 == "42 - Benzodiazepini" |
           Sporedni_uzrok_zavisnosti_2 == "43 - GHB/GBL" |
           Sporedni_uzrok_zavisnosti_2 == "44 - Pregabalin" |
           Sporedni_uzrok_zavisnosti_2 == "45 - Hipnotik i sedativ, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "46 - Drugi hipnotici i sedativi (navedite)") |> 
  nrow()

c13r9 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "80 - Alkohol") |> 
  nrow()

c13r10 <- baza_working |> 
  filter(Sporedni_uzrok_zavisnosti_2 == "51 - LSD" |
           Sporedni_uzrok_zavisnosti_2 == "52 - Ketamin" |
           Sporedni_uzrok_zavisnosti_2 == "53 - Halucinogen, bez detaljnih informacija" |
           Sporedni_uzrok_zavisnosti_2 == "54 - Drugi halucinogeni (navedite)" |
           Sporedni_uzrok_zavisnosti_2 == "60 - Isparljivi inhalanti" |
           Sporedni_uzrok_zavisnosti_2 == "88 - Druga supstanca (navedite)") |> 
  nrow()

c13r11 <- baza_working |> 
  filter(is.na(Sporedni_uzrok_zavisnosti_2)) |> 
  nrow()

c13r12 <- 0

c13r13 <- c13r1 + c13r2 + c13r3 + c13r4 + c13r5 + c13r6+ c13r7 + c13r8 + c13r9 + c13r10 + c13r11


# Create sheet and file with Table_25.1.3  ----------------------------------

tabela_25.1.3 <- data.frame(
  rowName = c ("", "1. Heroin","2. Other opioids","3. Cocaine","4. Crack","5. Amphetamines / methamphetamines","6. Cannabis","7. Other stimulants",
               "8. Hypnotics and Sedatives","9. Alcohol","10. Other drugs","11. None","12. Not known / missing","13. Total"), 
  outpatientTreatmentCentres = c("1. Heroin", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13),
  inpatientTreatmentCentres = c("2. Other opioids", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13),
  treatmentUnitsInPrison = c("3. Cocaine", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13),
  generalPractitioners = c("4. Crack", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13),
  lowThresholdAgencies = c("5. Amphetamines \n/methamphetamines", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10, c5r11, c5r12, c5r13),
  other = c("6. Cannabis¹", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10, c6r11, c6r12, c6r13),
  notKnownMissing = c("7. Other \nstimulants", c7r1, c7r2, c7r3, c7r4, c7r5, c7r6, c7r7, c7r8, c7r9, c7r10, c7r11, c7r12, c7r13),
  total = c("8. Hypnotics \nand Sedatives", c8r1, c8r2, c8r3, c8r4, c8r5, c8r6, c8r7, c8r8, c8r9, c8r10, c8r11, c8r12, c8r13),
  inpatientTreatmentCentres = c("9. Alcohol", c9r1, c9r2, c9r3, c9r4, c9r5, c9r6, c9r7, c9r8, c9r9, c9r10, c9r11, c9r12, c9r13),
  treatmentUnitsInPrison = c("10. Other drugs", c10r1, c10r2, c10r3, c10r4, c10r5, c10r6, c10r7, c10r8, c10r9, c10r10, c10r11, c10r12, c10r13),
  generalPractitioners = c("11. None", c11r1, c11r2, c11r3, c11r4, c11r5, c11r6, c11r7, c11r8, c11r9, c11r10, c11r11, c11r12, c11r13),
  lowThresholdAgencies = c("12. Not known / missing", c12r1, c12r2, c12r3, c12r4, c12r5, c12r6, c12r7, c12r8, c12r9, c12r10, c12r11, c12r12, c12r13),
  other = c("13. Total", c13r1, c13r2, c13r3, c13r4, c13r5, c13r6, c13r7, c13r8, c13r9, c13r10, c13r11, c13r12, c13r13)
)

#print(tabela_25.1.3) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_25.1.3, file="data/izlazniPodaci.xlsx", sheetName="tabela_25.1.3", append=TRUE, col.names=FALSE, row.names=FALSE)

