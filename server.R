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

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$downloadDataC <- downloadHandler(
    filename <- function() {
      paste("downloadCSV", "zip", sep=".")
    },
    
    content <- function(file) {
      file.copy("www/downloadCSV.zip", file)
    },
    contentType = "application/zip"
  )  
  
  output$downloadDataS <- downloadHandler(
    filename <- function() {
      paste("downloadSQL", "zip", sep=".")
    },
    
    content <- function(file) {
      file.copy("www/downloadSQL.zip", file)
    },
    contentType = "application/zip"
  )  
})
