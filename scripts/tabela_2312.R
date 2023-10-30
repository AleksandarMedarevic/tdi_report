### Mapiranje za tabelu 23.1.2 iz .sjz.rs baze: ----
### ---
### Age group  = year_complete_round_categories
### <15
### 15-19
### 20-24
### 25-29
### 30-34
### 35-39
### 40-44
### 45-49
### 50-54
### 55-59
### 60-64
### 65+
### Missing/not known
### Total
### --
### Year since first injection  = year_since_first_injection
### 1. <=1
### 2. >=2 <=4
### 3. >=5 <=9
### 4. >=10
### 99. Not known/ missing
### Total = Zbir svega 
### ------
### Never previously treated
### Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo"
### ---
### 23.1.2 Age at entering current treatment by years since first injection.  Ever injectors - Never previously treated 
  
# Za <=1 only ----------------------------------------------

baza_working <- baza |> 
  filter(year_since_first_injection <= 1) |> 
  filter(!is.na(Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem)) |> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c1r1 <- baza_working |> 
  filter(year_complete_round_categories == "0-14") |> 
  nrow()

c1r2 <- baza_working |> 
  filter(year_complete_round_categories == "15-19") |> 
  nrow()

c1r3 <- baza_working |> 
  filter(year_complete_round_categories == "20-24") |>
  nrow()

c1r4 <- baza_working |> 
  filter(year_complete_round_categories == "25-29") |>
  nrow()

c1r5 <- baza_working |> 
  filter(year_complete_round_categories == "30-34") |>
  nrow()

c1r6 <- baza_working |> 
  filter(year_complete_round_categories == "35-39") |>
  nrow()

c1r7 <- baza_working |> 
  filter(year_complete_round_categories == "40-44") |>
  nrow()

c1r8 <- baza_working |> 
  filter(year_complete_round_categories == "45-49") |> 
  nrow()

c1r9 <- baza_working |> 
  filter(year_complete_round_categories == "50-54") |> 
  nrow()

c1r10 <- baza_working |> 
  filter(year_complete_round_categories == "55-59") |> 
  nrow()

c1r11 <- baza_working |> 
  filter(year_complete_round_categories == "60-64") |> 
  nrow()

c1r12 <- baza_working |> 
  filter(year_complete_round_categories == "65+") |> 
  nrow()

c1r13 <- baza_working |> 
  filter(is.na(year_complete_round_categories)|
           is.nan(year_complete_round_categories)) |> 
  nrow()

c1r14 <- baza_working |> 
  nrow()

# Za >=2 and <=4 only ----------------------------------------------

baza_working <- baza |> 
  filter(year_since_first_injection <= 4 &
           year_since_first_injection >= 2 ) |> 
  filter(!is.na(Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem))|> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c2r1 <- baza_working |> 
  filter(year_complete_round_categories == "0-14") |> 
  nrow()

c2r2 <- baza_working |> 
  filter(year_complete_round_categories == "15-19") |> 
  nrow()

c2r3 <- baza_working |> 
  filter(year_complete_round_categories == "20-24") |>
  nrow()

c2r4 <- baza_working |> 
  filter(year_complete_round_categories == "25-29") |>
  nrow()

c2r5 <- baza_working |> 
  filter(year_complete_round_categories == "30-34") |>
  nrow()

c2r6 <- baza_working |> 
  filter(year_complete_round_categories == "35-39") |>
  nrow()

c2r7 <- baza_working |> 
  filter(year_complete_round_categories == "40-44") |>
  nrow()

c2r8 <- baza_working |> 
  filter(year_complete_round_categories == "45-49") |> 
  nrow()

c2r9 <- baza_working |> 
  filter(year_complete_round_categories == "50-54") |> 
  nrow()

c2r10 <- baza_working |> 
  filter(year_complete_round_categories == "55-59") |> 
  nrow()

c2r11 <- baza_working |> 
  filter(year_complete_round_categories == "60-64") |> 
  nrow()

c2r12 <- baza_working |> 
  filter(year_complete_round_categories == "65+") |> 
  nrow()

c2r13 <- baza_working |> 
  filter(is.na(year_complete_round_categories)|
           is.nan(year_complete_round_categories)) |> 
  nrow()

c2r14 <- baza_working |> 
  nrow()

# Za >=5 and <=9 only ----------------------------------------------

baza_working <- baza |> 
  filter(year_since_first_injection <= 9 &
           year_since_first_injection >= 5 ) |> 
  filter(!is.na(Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem))|> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c3r1 <- baza_working |> 
  filter(year_complete_round_categories == "0-14") |> 
  nrow()

c3r2 <- baza_working |> 
  filter(year_complete_round_categories == "15-19") |> 
  nrow()

c3r3 <- baza_working |> 
  filter(year_complete_round_categories == "20-24") |>
  nrow()

c3r4 <- baza_working |> 
  filter(year_complete_round_categories == "25-29") |>
  nrow()

c3r5 <- baza_working |> 
  filter(year_complete_round_categories == "30-34") |>
  nrow()

c3r6 <- baza_working |> 
  filter(year_complete_round_categories == "35-39") |>
  nrow()

c3r7 <- baza_working |> 
  filter(year_complete_round_categories == "40-44") |>
  nrow()

c3r8 <- baza_working |> 
  filter(year_complete_round_categories == "45-49") |> 
  nrow()

c3r9 <- baza_working |> 
  filter(year_complete_round_categories == "50-54") |> 
  nrow()

c3r10 <- baza_working |> 
  filter(year_complete_round_categories == "55-59") |> 
  nrow()

c3r11 <- baza_working |> 
  filter(year_complete_round_categories == "60-64") |> 
  nrow()

c3r12 <- baza_working |> 
  filter(year_complete_round_categories == "65+") |> 
  nrow()

c3r13 <- baza_working |> 
  filter(is.na(year_complete_round_categories)|
           is.nan(year_complete_round_categories)) |> 
  nrow()

c3r14 <- baza_working |> 
  nrow()

# Za 10+only ----------------------------------------------

baza_working <- baza |> 
  filter(year_since_first_injection >= 10 ) |> 
  filter(!is.na(Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem))|> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c4r1 <- baza_working |> 
  filter(year_complete_round_categories == "0-14") |> 
  nrow()

c4r2 <- baza_working |> 
  filter(year_complete_round_categories == "15-19") |> 
  nrow()

c4r3 <- baza_working |> 
  filter(year_complete_round_categories == "20-24") |>
  nrow()

c4r4 <- baza_working |> 
  filter(year_complete_round_categories == "25-29") |>
  nrow()

c4r5 <- baza_working |> 
  filter(year_complete_round_categories == "30-34") |>
  nrow()

c4r6 <- baza_working |> 
  filter(year_complete_round_categories == "35-39") |>
  nrow()

c4r7 <- baza_working |> 
  filter(year_complete_round_categories == "40-44") |>
  nrow()

c4r8 <- baza_working |> 
  filter(year_complete_round_categories == "45-49") |> 
  nrow()

c4r9 <- baza_working |> 
  filter(year_complete_round_categories == "50-54") |> 
  nrow()

c4r10 <- baza_working |> 
  filter(year_complete_round_categories == "55-59") |> 
  nrow()

c4r11 <- baza_working |> 
  filter(year_complete_round_categories == "60-64") |> 
  nrow()

c4r12 <- baza_working |> 
  filter(year_complete_round_categories == "65+") |> 
  nrow()

c4r13 <- baza_working |> 
  filter(is.na(year_complete_round_categories)|
           is.nan(year_complete_round_categories)) |> 
  nrow()

c4r14 <- baza_working |> 
  nrow()

# Za not know_missing ----------------------------------------------

baza_working <- baza |> 
  filter(is.na(year_since_first_injection) |
           is.nan(year_since_first_injection)) |> 
  filter(!is.na(Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem))|> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c5r1 <- baza_working |> 
  filter(year_complete_round_categories == "0-14") |> 
  nrow()

c5r2 <- baza_working |> 
  filter(year_complete_round_categories == "15-19") |> 
  nrow()

c5r3 <- baza_working |> 
  filter(year_complete_round_categories == "20-24") |>
  nrow()

c5r4 <- baza_working |> 
  filter(year_complete_round_categories == "25-29") |>
  nrow()

c5r5 <- baza_working |> 
  filter(year_complete_round_categories == "30-34") |>
  nrow()

c5r6 <- baza_working |> 
  filter(year_complete_round_categories == "35-39") |>
  nrow()

c5r7 <- baza_working |> 
  filter(year_complete_round_categories == "40-44") |>
  nrow()

c5r8 <- baza_working |> 
  filter(year_complete_round_categories == "45-49") |> 
  nrow()

c5r9 <- baza_working |> 
  filter(year_complete_round_categories == "50-54") |> 
  nrow()

c5r10 <- baza_working |> 
  filter(year_complete_round_categories == "55-59") |> 
  nrow()

c5r11 <- baza_working |> 
  filter(year_complete_round_categories == "60-64") |> 
  nrow()

c5r12 <- baza_working |> 
  filter(year_complete_round_categories == "65+") |> 
  nrow()

c5r13 <- baza_working |> 
  filter(is.na(year_complete_round_categories)|
           is.nan(year_complete_round_categories)) |> 
  nrow()

c5r14 <- baza_working |> 
  nrow()

# Za total  ----------------------------------------------

baza_working <- baza |> 
  filter(!is.na(Uzrast_prvog_uzimanja_psihoaktivne_supstance_injektiranjem))|> 
  filter(Da_li_se_lice_ranije_lechilo_od_bolesti_zavisnosti_povezane_sa_psihoaktivnim_supstancama == "5 - Ne, nije se nikad ranije lečilo")

c6r1 <- baza_working |> 
  filter(year_complete_round_categories == "0-14") |> 
  nrow()

c6r2 <- baza_working |> 
  filter(year_complete_round_categories == "15-19") |> 
  nrow()

c6r3 <- baza_working |> 
  filter(year_complete_round_categories == "20-24") |>
  nrow()

c6r4 <- baza_working |> 
  filter(year_complete_round_categories == "25-29") |>
  nrow()

c6r5 <- baza_working |> 
  filter(year_complete_round_categories == "30-34") |>
  nrow()

c6r6 <- baza_working |> 
  filter(year_complete_round_categories == "35-39") |>
  nrow()

c6r7 <- baza_working |> 
  filter(year_complete_round_categories == "40-44") |>
  nrow()

c6r8 <- baza_working |> 
  filter(year_complete_round_categories == "45-49") |> 
  nrow()

c6r9 <- baza_working |> 
  filter(year_complete_round_categories == "50-54") |> 
  nrow()

c6r10 <- baza_working |> 
  filter(year_complete_round_categories == "55-59") |> 
  nrow()

c6r11 <- baza_working |> 
  filter(year_complete_round_categories == "60-64") |> 
  nrow()

c6r12 <- baza_working |> 
  filter(year_complete_round_categories == "65+") |> 
  nrow()

c6r13 <- baza_working |> 
  filter(is.na(year_complete_round_categories)|
           is.nan(year_complete_round_categories)) |> 
  nrow()

c6r14 <- baza_working |> 
  nrow()

# Create sheet and file with Table_23.1.2  ----------------------------------

tabela_23.1.2 <- data.frame(
  rowName = c ("", "<15","15-19","20-24","25-29", "30-34","35-39","40-44","45-49","50-54","55-59", "60-64", ">=65", "Not known \n/missing", " TOTAL"), 
  occasionally = c("1. 1 year since \nfirst injection", c1r1, c1r2, c1r3, c1r4, c1r5, c1r6, c1r7, c1r8, c1r9, c1r10, c1r11, c1r12, c1r13, c1r14),
  regularly_employed = c("2. 2 to 4 \nyear since \nfirst injection", c2r1, c2r2, c2r3, c2r4, c2r5, c2r6, c2r7, c2r8, c2r9, c2r10, c2r11, c2r12, c2r13, c2r14),
  student = c("3. 5 to 9 \nyear since \nfirst injection", c3r1, c3r2, c3r3, c3r4, c3r5, c3r6, c3r7, c3r8, c3r9, c3r10, c3r11, c3r12, c3r13, c3r14),
  unemployed = c("4. 10 or more \nyear since \nfirst injection", c4r1, c4r2, c4r3, c4r4, c4r5, c4r6, c4r7, c4r8, c4r9, c4r10, c4r11, c4r12, c4r13, c4r14),
  social_pensioners = c("99. not known \nmissing", c5r1, c5r2, c5r3, c5r4, c5r5, c5r6, c5r7, c5r8, c5r9, c5r10, c5r11, c5r12, c5r13, c5r14),
  other = c("Total", c6r1, c6r2, c6r3, c6r4, c6r5, c6r6, c6r7, c6r8, c6r9, c6r10, c6r11, c6r12, c6r13, c6r14)
)
#print(tabela_23.1.2) 

# Sacuvaj izlazni fajl ----------------------------------------------------
write.xlsx(tabela_23.1.2, file="data/izlazniPodaci.xlsx", sheetName="tabela_23.1.2", append=TRUE, col.names=FALSE, row.names=FALSE)

