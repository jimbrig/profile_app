library(shiny)
library(shinyjs)
library(shinyBS)
library(shinyWidgets)
library(shinyalert)
library(DT)
library(shinydashboard)
library(shinythemes)
library(readxl)
library(openxlsx)
library(stringr)
library(stringi)
library(dplyr)
library(tidyr)
library(plotly)
library(ggplot2)
library(DBI)
library(pool)
library(uuid)

pool <- dbPool(RSQLite::SQLite(), dbname = "db.sqlite")

#Create df for data entry into sql
employees_df <- data.frame(   title=character(),
                              first_name=character(),
                              last_name=character(),
                              job_title=character(),
                              room=character(),
                              email=character(),
                              phone_internal=character(),
                              department=character(),
                              picture=character(),
                              monday=character(),
                              tuesday=character(),
                              wednesday=character(),
                              thursday=character(),
                              friday=character(),
                              saturday=character(),
                              sunday=character(),
                              note=character(),
                              date=character(),
                              image_ext=character(),
                              row_id=character(),
                              stringsAsFactors = FALSE)

imageDownloadbutton <- function(outputId, label = NULL){
  tags$a(id = outputId, class = "btn btn-default shiny-download-link", href = "",
         target = "_blank", download = NA, icon("images"), label)
}

excelDownloadbutton <- function(outputId, label = NULL){
  tags$a(id = outputId, class = "btn btn-default shiny-download-link", href = "",
         target = "_blank", download = NA, icon("file-excel"), label)
}

tableDownloadbutton <- function(outputId, label = NULL){
  tags$a(id = outputId, class = "btn btn-default shiny-download-link", href = "",
         target = "_blank", download = NA, icon("download"), label)
}
