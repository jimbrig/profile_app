ui <- fluidPage(
  title = "Employee Directory",
  theme = shinytheme("darkly"),
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "stylesheet.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "submit-form.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "profile-form.css")
  ),
  #Supress all error messages. Final app only.
  tags$style(type="text/css",
             ".shiny-output-error { visibility: hidden; }",
             ".shiny-output-error:before { visibility: hidden; }"
  ),
  useShinyjs(),
  shinyalert::useShinyalert(),
  navbarPage(title = div(class="navbar-title", "Profiles")),
  div(class="button-container", align="right",
      circleButton("add_button", icon = icon("plus"), status = "success",
                   size = "lg")),
  fluidRow(
    div(class="search-container",
        div(class="search-input",
            textInput("search_field", label = NULL, value = "", width = NULL, placeholder = "Search")),
        uiOutput("table_filters"))),
  uiOutput("download"),
  dataTableOutput("employees_table"),
  div(class="footer-container",
      uiOutput("footer_date"),
      div(class="footer-title", HTML("Niels van der Velden &copy; - Table Contest 2020"))),
  tags$script(src="index.js")
)
