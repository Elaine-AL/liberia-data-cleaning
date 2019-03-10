######Start of header#####
#Title : Beginning
#
#this is my progress in learning R
#
#Author : Elaine Lwane (lelaine276@gmail.com)
#Date: 10/01/2019
#
#########End of header#######
liberia1 = read_xlsx( 
  path = "C:/Users/lelai/OneDrive/Documents/work/New folder/liberia-flow-data.xlsx",
  sheet = "liberia-flow-data",
  range = "A2:AA68564",
  col_names = TRUE,
  na = "NA"
          )
#
#
liberia1 = subset(
  liberia1, 
  select = c(row_id, water_source, water_tech, 
             status_id, management, pay, installer, 
             install_year, status, source, adm1, adm2, 
             wpdx_id, report_date, activity_id, data_lnk, 
             photo_lnk, converted, created, updated, 
             lat_deg, lon_deg, location
             )
  )
#
#
str(liberia1)
complete.cases(liberia1)
#
#
liberia1 = na.omit(liberia1)
write.xlsx(liberia1,
           file = "C:/Users/lelai/OneDrive/Documents/work/clean data/liberia1.xlsx",
           sheetName = "cleaned liberia", 
           append = FALSE
           )
