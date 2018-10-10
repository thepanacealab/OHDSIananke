# @file functions
#
# Copyright 2018 Observational Health Data Sciences and Informatics
#
# This file is part of:
#
#  █████╗ ███╗   ██╗ █████╗ ███╗   ██╗██╗  ██╗███████╗
#  ██╔══██╗████╗  ██║██╔══██╗████╗  ██║██║ ██╔╝██╔════╝
#  ███████║██╔██╗ ██║███████║██╔██╗ ██║█████╔╝ █████╗  
#  ██╔══██║██║╚██╗██║██╔══██║██║╚██╗██║██╔═██╗ ██╔══╝  
#  ██║  ██║██║ ╚████║██║  ██║██║ ╚████║██║  ██╗███████╗
#  ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# @author Georgia State University - Panacea Lab
# @author Juan M. Banda
# @version 1.0
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

#  tags$head(
#    tags$style(HTML("
#                    body {
#                        background-color: #4f75c8;
#                        color: #ffffff;
#                    }
#                    "))
#    ),  
  
  img(src='ananke_logo_s.jpg', align = "center"),
  titlePanel("Ananke: UMLS to OHDSI mapping Tool"),
  
  tabsetPanel(
    tabPanel("Mapping Download", 
             h3("Pre-Computed Mappings General Purpose SQL files"),
             h2(),
             downloadButton("downloadDataC", label = "Download CSV Mappings"),
             h3("General Purpose SQL files"), 
             h2(),
             downloadButton("downloadDataS", label = "Download Generic SQL")
    ), ##End of first tabPanel 
    tabPanel("Mapping Generation", 
             tabsetPanel(
               tabPanel("DBMS Configuration",
                        fluidRow(
                          column(6,
                            textInput("txtUMLSDBname", "UMLS Database Name:"),
                            textInput("txtUMLSDBuser", "UMLS Database User:"),
                            textInput("txtUMLSDBpassword", "UMLS Database Password:"),
                            textInput("txtUMLSDBschema", "UMLS Database Schema:"),
                            textInput("txtUMLSDBport", "UMLS Database port:")
                          ),
                          column(6,
                                 textInput("txtOHDSIDBname", "OHDSI Database Name:"),
                                 textInput("txtOHDSIBuser", "OHDSI Database User:"),
                                 textInput("txtOHDSIBpassword", "OHDSI Database Password:"),
                                 textInput("txtOHDSIBschema", "OHDSI Database Schema:"),
                                 textInput("txtOHDSIBport", "OHDSI Database port:")                                 
                          )
                        )
               ),
               tabPanel("Vocabularies to Map",
                        sidebarLayout(
                        sidebarPanel(
                        checkboxGroupInput("checkVocabs", label = h3("Select Vocabularies: "), 
                                           choices = list("ATC" = 1, "CVX" = 2, "RxNorm" = 3, "CPT4" = 4,
                                                          "HCPCS" =5, "ICD10CM" = 6, "ICD10" = 7, "MesH" = 8,
                                                          "NUCC" = 9, "VA Product" = 10, "VA Class" = 11,
                                                          "ICD10PCS"= 12, "ICD9CM" = 13, "ICD9Proc" = 14,
                                                          "MeDRA" = 15, "NDFRT" = 16, "SNOMED" = 17,
                                                          "LOINC" = 18)
                                           )
                        ),
                        mainPanel(
                          h1(),
                          h1(),
                          actionButton("btnGenerateMappings", "Generate Mappings")
                        )
                        ) #SidebarLayout
               )
             )
    ), ##End of second tabPanel 
    tabPanel("Advanced", 
             sidebarLayout(
               sidebarPanel("Mapping Logic Editing"),
               mainPanel(
                 h1(),
                 h2(),
                 actionButton("btnUpdateLogic", "Update Mapping Logic")
               )
             )  
    )
  )  
  

))
