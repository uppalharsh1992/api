#source("Read.R")

#* Get list of tables
#* @get /reseller_id
function(){
  con <-  dbConnect(RMySQL::MySQL(),
                    username = "refill",
                    password = "refill",
                    host = "10.91.9.171",
                    port = 3306,
                    dbname = "Inventory Foreacsting"
  )
  
  df1<- dbGetQuery(con, 'select * from April_data')
  df2<- dbGetQuery(con, 'select * from May_data')
  df <- rbind(df1,df2)
  unique(df$`Reseller ID`)
}
