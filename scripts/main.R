# Script information ------------------------------------------------------

#' Project title: Obrada podataka "bolesti zavisnosti" iz .sjz.rs eksportovani za zeljeni izvestaj obrada. 
#' Script name: main.R
#' Date created: 2023-03-10
#' Date updated: 2023-04-09
#' Author: Milica Savic
#' Author: Aleksandar Medarevic
#' Script purpose: Automatizacija pisanja izvestaja

start <- Sys.time() # Početak računanja vremena za izvršavanje koda

# Ucitaj potrebne biblioteke ----------------------------------------------
library(dplyr)
library(uuid)
library(tidyverse)
library(readxl)
library(xlsx)
library(lubridate)
library(epikit)

# Uvezi i proveri iz eksela uvezene podatke -------------------------------
procitanEksel <- read_excel("data/ulazniPodaci.xlsx")
# View(procitanEksel)

# Sredi podatke -----------------------------------------------------------
## Reimenuj imena kolona (jedna rec) -----
names(procitanEksel)[1] <- 'Id'                                                                                                                    
names(procitanEksel)[2] <- 'Okrug'                                                                                                                 
names(procitanEksel)[3] <- 'Ustanova'                                                                                                              
names(procitanEksel)[4] <- 'Organizaciona_jedinica'                                                                                                
names(procitanEksel)[5] <- 'Opshtina'                                                                                                               
names(procitanEksel)[6] <- 'Datum_pochetka_popunjavanja_prijave'                                                                                    
names(procitanEksel)[7] <- 'Datum_dostavljanja_prijave'                                                                                            
names(procitanEksel)[8] <- 'Ime'                                                                                                                   
names(procitanEksel)[9] <- 'Prezime'                                                                                                               
names(procitanEksel)[10] <- 'Drzavljanstvo'                                                                                                         
names(procitanEksel)[11] <- 'JMBG_EBS'                                                                                                              
names(procitanEksel)[12] <- 'Datum_rodjenja'                                                                                                         
names(procitanEksel)[13] <- 'Pol'                                                                                                                   
names(procitanEksel)[14] <- 'Kod_(shifra)_lica'                                                                                                      
names(procitanEksel)[15] <- 'Prebivalishte/boravishte_-_naselje'                                                                                      
names(procitanEksel)[16] <- 'Gde_zivi'                                                                                                              
names(procitanEksel)[17] <- 'Gde_lice_zivi_-_drugo'                                                                                                 
names(procitanEksel)[18] <- 'S_kojim_punoletnim_licima_zivi'                                                                                        
names(procitanEksel)[19] <- 'S_kojim_punoletnim_licima_zivi_-_drugo'                                                                                
names(procitanEksel)[20] <- 'Radni_status'                                                                                                          
names(procitanEksel)[21] <- 'Radni_status_-_drugo'                                                                                                  
names(procitanEksel)[22] <- 'Najvisha_zavrshena_shkola'                                                                                                
names(procitanEksel)[23] <- 'Da_li_ima_svoju_decu'                                                                                                  
names(procitanEksel)[24] <- 'Uzrast_najmladjeg_deteta'                                                                                               
names(procitanEksel)[25] <- 'Da_li_zivi_sa_svojom_decom'                                                                                            
names(procitanEksel)[26] <- 'Da_li_zivi_sa_licima_mladjim_od_18_godina_o_kojima_se_stara'                                                            
names(procitanEksel)[27] <- 'Glavni_uzrok_zavisnosti'                                                                                               
names(procitanEksel)[28] <- 'Glavni_uzrok_zavisnosti_-_navedite'                                                                                    
names(procitanEksel)[29] <- 'Uobichajen_nachin_korishcenja_glavni_uzrok_zavisnosti'                                                                  
names(procitanEksel)[30] <- 'Uchestalost_korishcenja_u_poslednjih_30_dana_glavni_uzrok_zavisnosti'                                                  
names(procitanEksel)[31] <- 'Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti'                                                                
names(procitanEksel)[32] <- 'Sporedni_uzrok_zavisnosti_1'                                                                                           
names(procitanEksel)[33] <- 'Sporedni_uzrok_zavisnosti_1_-_navedite'                                                                                
names(procitanEksel)[34] <- 'Sporedni_uzrok_zavisnosti_2'                                                                                           
names(procitanEksel)[35] <- 'Sporedni_uzrok_zavisnosti_2_-_navedite'                                                                                
names(procitanEksel)[36] <- 'Sporedni_uzrok_zavisnosti_3'                                                                                           
names(procitanEksel)[37] <- 'Sporedni_uzrok_zavisnosti_3_-_navedite'                                                                                
names(procitanEksel)[38] <- 'Da_li_je_lice_koristilo_vishe_vrsta_supstanci_istovremeno_u_poslednjih_30_dana'                                         
names(procitanEksel)[39] <- 'Koliko_meseci_(4_nedelje_zaredom)_lice_nije_koristilo_ni_jedno_od_navedenih_supstanci_sa_spiska_u_poslednjih_12_meseci'
names(procitanEksel)[40] <- 'Da_li_je_lice_uzimalo_psihoaktivne_supstance_injektiranjem'                                                            
names(procitanEksel)[41] <- 'Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem'                                                            
names(procitanEksel)[42] <- 'Da_li_je_lice_za_injektiranje_psihoaktivne_supstance_delilo_igle_i_ili_shpriceve_s_drugim_licima'                       
names(procitanEksel)[43] <- 'Testiranje_na_HIV'                                                                                                     
names(procitanEksel)[44] <- 'Rezultat_poslednjeg_testiranja_na_HIV'                                                                                 
names(procitanEksel)[45] <- 'Testiranje_na_Hepatits_C'                                                                                              
names(procitanEksel)[46] <- 'Rezultat_poslednjeg_testiranja_na_Hepatits_C'                                                                          
names(procitanEksel)[47] <- 'Testiranje_na_Hepatits_B'                                                                                              
names(procitanEksel)[48] <- 'Rezultat_poslednjeg_testiranja_na_Hepatitis_B'                                                                         
names(procitanEksel)[49] <- 'Datum_pochetka_ove_epizode_lechenja'                                                                                     
names(procitanEksel)[50] <- 'Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_alkoholom'                                               
names(procitanEksel)[51] <- 'Godina_u_kojoj_je_zapochelo_prvo_lechenje_od_bolesti_zavisnosti_povezane_sa_alkoholom'                                   
names(procitanEksel)[52] <- 'Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama'                               
names(procitanEksel)[53] <- 'Godina_u_kojoj_je_zapochelo_prvo_lechenje_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama'                   
names(procitanEksel)[54] <- 'Da_li_se_lice_ranije_lechilo_od_od_bolesti_zavisnosti_povezane_sa_kockanjem'                                            
names(procitanEksel)[55] <- 'Godina_u_kojoj_je_zapochelo_prvo_lechenje_od_bolesti_zavisnosti_povezane_sa_kockanjem'                                   
names(procitanEksel)[56] <- 'Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja'                                                     
names(procitanEksel)[57] <- 'Ko_je_imao_najvecu_ulogu_u_upucivanju_lica_na_ovu_epizodu_lechenja_-_drugo'                                             
names(procitanEksel)[58] <- 'Tip_centra_programa_za_lechenje'                                                                                        
names(procitanEksel)[59] <- 'Tip_centra_programa_za_lechenje_-_drugo'                                                                                
names(procitanEksel)[60] <- 'Da_li_je_lice_ikada_bilo_na_supstitucionoj_terapiji_opioidima'                                                         
names(procitanEksel)[61] <- 'Godina_u_kojoj_je_zapocheta_prva_supstituciona_terapija_opioidima'                                                      
names(procitanEksel)[62] <- 'Da_li_je_lice_sada_na_supstitucionoj_terapiji_opiodima'                                                                
names(procitanEksel)[63] <- 'Godine_u_kojoj_je_zapocheta_sadashnja_supstituciona_terapija_opioidima'                                                  
names(procitanEksel)[64] <- 'Da_li_je_sadashnja_supstituciona_terapija_opiodima_propisana_u_ovom_centru'                                             
names(procitanEksel)[65] <- 'Lek_koji_se_koristi_u_sadashnjoj_supstitucionoj_terapiji_opoidima_propisanoj_u_ovom_centru'                             
names(procitanEksel)[66] <- 'Lek_koji_se_koristi_u_sadashnjoj_supstitucionoj_terapiji_opoidima_propisanoj_u_ovom_centru_-_drugo'

## Sve sto je datum pretvori u tip 'Date' -----
procitanEksel$Datum_pochetka_popunjavanja_prijave <- as.Date(procitanEksel$Datum_pochetka_popunjavanja_prijave, format="%d.%m.%Y")
procitanEksel$Datum_dostavljanja_prijave <- as.Date(procitanEksel$Datum_dostavljanja_prijave, format="%d.%m.%Y")
procitanEksel$Datum_rodjenja <- as.Date(procitanEksel$Datum_rodjenja, format="%d.%m.%Y")
procitanEksel$Datum_pochetka_ove_epizode_lechenja <- as.Date(procitanEksel$Datum_pochetka_ove_epizode_lechenja, format="%d.%m.%Y")
#View(procitanEksel)

## Ostavi samo godinu za koju se radi izvestaj (ovde 2023)
filterovano <- filter(procitanEksel, procitanEksel$Datum_pochetka_popunjavanja_prijave < "2024-01-01" & procitanEksel$Datum_pochetka_popunjavanja_prijave > "2022-12-31")
## Izbaci kao uzroke zavisnosti alkohol i kockanje ----
filterovano <- filter(filterovano, Glavni_uzrok_zavisnosti != "80 - Alkohol" &  Glavni_uzrok_zavisnosti != "91 - Kockanje")

## Izbaci sve koji nastavljaju lecenje iz prethodne godine
## Izbaci sve koji se istovremeno lecene u drugom centru
## Izbaci sve za koje je nepoznato da li se prvi put lece

filterovano <- filterovano |>
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama != "1 - Da, lečenje se nastavlja iz prethodne kalendarske godine u ovom istom centru" &
                        Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama != "3 - Da, ranije se lečilo u drugom centru tokom poslednjih 6 meseci")

## Brisanje kockanja kao sporednog uzroka zavisnosti

filterovano  <- filterovano  %>% 
  mutate(Sporedni_uzrok_zavisnosti_1 = as.character(Sporedni_uzrok_zavisnosti_1), 
         Sporedni_uzrok_zavisnosti_1 = replace(Sporedni_uzrok_zavisnosti_1, 
                                               Sporedni_uzrok_zavisnosti_1 == "91 - Kockanje", NA))

filterovano  <- filterovano  %>% 
  mutate(Sporedni_uzrok_zavisnosti_2 = as.character(Sporedni_uzrok_zavisnosti_2), 
         Sporedni_uzrok_zavisnosti_2 = replace(Sporedni_uzrok_zavisnosti_2, 
                                               Sporedni_uzrok_zavisnosti_2 == "91 - Kockanje", NA))

filterovano  <- filterovano  %>% 
  mutate(Sporedni_uzrok_zavisnosti_3 = as.character(Sporedni_uzrok_zavisnosti_3), 
         Sporedni_uzrok_zavisnosti_3 = replace(Sporedni_uzrok_zavisnosti_3, 
                                               Sporedni_uzrok_zavisnosti_3 == "91 - Kockanje", NA))


## Ostavi samo jedinstvene maticne brojeve njihovo prvo pojavljivanje prema datumu pocetka popunjavanja prijave ----
poredjano <- filterovano[order(filterovano$Datum_pochetka_popunjavanja_prijave),]
baza <- poredjano[!duplicated(poredjano$JMBG_EBS),]

## Racunanje godina --------------------------------------------------------

baza <- baza |> 
  mutate(
    years_diff = time_length(difftime(Datum_pochetka_ove_epizode_lechenja, Datum_rodjenja), "years"),
    year_complete_round = as.numeric(floor(years_diff)),
    lag_years_first_use_treatment = year_complete_round - as.numeric(Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti),
    .after = Datum_pochetka_ove_epizode_lechenja
  )

## Petogodisnji periodi za pocetak korisnjenja

baza <- baza |> 
  mutate(
    age_cat_pocetak_koriscenja = age_categories(
      Uzrast_na_pochetku_korishcenja_glavni_uzrok_zavisnosti,
      breakers = c(0, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65)
    )
  )

## Kreiraj dobne grupe za uzrast u trenutku pocetka epizode lecenje

baza <- baza |>
  mutate(
    year_complete_round_categories = age_categories(
      year_complete_round,
      breakers = c(0, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65)
    ),
    .after = year_complete_round
  )

# Kreiraj koliko godina je proslo od prvog uzimanja injektiranjem droge

baza <- baza |> 
  mutate(
    year_since_first_injection = year_complete_round - Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem
 )

# Supstituciona terapija opiodima

baza <- baza |> 
  mutate(
    opioid_substitution_therapy = case_when(
      Da_li_je_lice_ikada_bilo_na_supstitucionoj_terapiji_opioidima == "2 - Ne" ~ "Never_been_in_OST",
      Da_li_je_lice_ikada_bilo_na_supstitucionoj_terapiji_opioidima == "3 - Nepoznato" ~ "Not_known",
      Da_li_je_lice_sada_na_supstitucionoj_terapiji_opiodima == "2 - Ne" ~ "Ever_been_not_currently",
      Da_li_je_lice_sada_na_supstitucionoj_terapiji_opiodima == "1 - Da" ~ "Ever_been_currently"
    ) 
  )

# Broj godina izmedju prve OST i sada

baza <- baza |> 
  mutate(
    years_since_first_OST = year(Datum_pochetka_ove_epizode_lechenja) - Godina_u_kojoj_je_zapocheta_prva_supstituciona_terapija_opioidima
  )

# Napravi izlaz ----------------------------------------------------------

source("scripts/tabela_811.R", echo = TRUE)
source("scripts/tabela_812.R", echo = TRUE)
source("scripts/tabela_813.R", echo = TRUE)

source("scripts/tabela_911.R", echo = TRUE)
source("scripts/tabela_912.R", echo = TRUE)
source("scripts/tabela_913.R", echo = TRUE)

source("scripts/tabela_1011.R", echo = TRUE)
source("scripts/tabela_1012.R", echo = TRUE)
source("scripts/tabela_1013.R", echo = TRUE)

source("scripts/tabela_1111.R", echo = TRUE) #svi 11 i 12  MORAJU zajedno da se startuju
source("scripts/tabela_1112.R", echo = TRUE)
source("scripts/tabela_1113.R", echo = TRUE)
source("scripts/tabela_1114.R", echo = TRUE)
source("scripts/tabela_1115.R", echo = TRUE)
source("scripts/tabela_1116.R", echo = TRUE)
source("scripts/tabela_1117.R", echo = TRUE)
source("scripts/tabela_1118.R", echo = TRUE)
source("scripts/tabela_1119.R", echo = TRUE)

source("scripts/tabela_1211.R", echo = TRUE)
source("scripts/tabela_1212.R", echo = TRUE)
source("scripts/tabela_1213.R", echo = TRUE)

source("scripts/tabela_1311.R", echo = TRUE)
source("scripts/tabela_1312.R", echo = TRUE)
source("scripts/tabela_1313.R", echo = TRUE)

source("scripts/tabela_1411.R", echo = TRUE)
source("scripts/tabela_1412.R", echo = TRUE)
source("scripts/tabela_1413.R", echo = TRUE)

source("scripts/tabela_1511.R", echo = TRUE)
source("scripts/tabela_1512.R", echo = TRUE)
source("scripts/tabela_1513.R", echo = TRUE)

source("scripts/tabela_1611.R", echo = TRUE)
source("scripts/tabela_1612.R", echo = TRUE)
source("scripts/tabela_1613.R", echo = TRUE)

source("scripts/tabela_1711.R", echo = TRUE)
source("scripts/tabela_1712.R", echo = TRUE)
source("scripts/tabela_1713.R", echo = TRUE)

source("scripts/tabela_1811.R", echo = TRUE)
source("scripts/tabela_1812.R", echo = TRUE)
source("scripts/tabela_1813.R", echo = TRUE)

source("scripts/tabela_1911.R", echo = TRUE)
source("scripts/tabela_1912.R", echo = TRUE)
source("scripts/tabela_1913.R", echo = TRUE)

source("scripts/tabela_2011.R", echo = TRUE)
source("scripts/tabela_2012.R", echo = TRUE)
source("scripts/tabela_2013.R", echo = TRUE)

source("scripts/tabela_2111.R", echo = TRUE)
source("scripts/tabela_2112.R", echo = TRUE)
source("scripts/tabela_2113.R", echo = TRUE)

source("scripts/tabela_2211.R", echo = TRUE)
source("scripts/tabela_2212.R", echo = TRUE)
source("scripts/tabela_2213.R", echo = TRUE)

source("scripts/tabela_2311.R", echo = TRUE)
source("scripts/tabela_2312.R", echo = TRUE)
source("scripts/tabela_2313.R", echo = TRUE)

source("scripts/tabela_2411.R", echo = TRUE)

source("scripts/tabela_2511.R", echo = TRUE)
source("scripts/tabela_2512.R", echo = TRUE) 
source("scripts/tabela_2513.R", echo = TRUE)
source("scripts/tabela_2514.R", echo = TRUE)
source("scripts/tabela_2515.R", echo = TRUE)
source("scripts/tabela_2516.R", echo = TRUE)

source("scripts/tabela_2611.R", echo = TRUE)
source("scripts/tabela_2612.R", echo = TRUE)
source("scripts/tabela_2613.R", echo = TRUE)

source("scripts/tabela_2711.R", echo = TRUE)
source("scripts/tabela_2712.R", echo = TRUE)
source("scripts/tabela_2713.R", echo = TRUE)

source("scripts/tabela_2811.R", echo = TRUE)

source("scripts/tabela_2911.R", echo = TRUE)
source("scripts/tabela_2912.R", echo = TRUE)

print( Sys.time() - start ) # Kraj merenje izvršavanja koda i štampanje proteklog vremena
