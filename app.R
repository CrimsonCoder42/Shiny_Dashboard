#DevinsWebpage
#September 2, 2021 
library(shiny)
library(shinydashboard)
library(shinyWidgets)

#CSS

stylesheet <- tags$head(tags$style(HTML('
    .skin-blue .main-header .logo {
                              background-color: #5075fa;
                              }
                              .skin-blue .main-header .logo:hover {
                              background-color: #94a8f2;
                              }
    
    .main-header .logo {
      font-family: "Georgia", Times, "Times New Roman", serif;
      font-weight: bold;
      font-size: 30px;
      
    }
    
    h2 {
      color: green;
      text-align: center;
      font-weight: bold;
    }
    
    h2:hover {
      color: #d3d982
    }
    
    table {
      font-size: 130%;
      color: white;
      background-color: #5075fa;
      padding: 10px
    }
    ol {
      font-size: 120%;
      font-family: cursive;
      color: green
    }
  ')
))

#UI

header <- dashboardHeader(title = "Devin Anderson's Shiny Web Page", titleWidth = 500)
sidebar <- dashboardSidebar(disable = TRUE)
body <- dashboardBody(
    fluidRow(stylesheet, 
             column(width=4,
                    h2("Home & Family"),
                    h4("I live in New York, aka the Big Apple.", br(), br(),
                       "I use to live in the Chelsea neightborhood but have recently moved to Kips Bay on the border of Murray Hill."),
                    img(src = "KipsBay.png", width = "100%"),
                    h4("My wife", 
                       a(href = "https://www.imdb.com/name/nm3682805/", "Isabel"), "is a Film and TV producer with titles like:"),
                    withTags(ul(li("Gossip Girl"),
                                li("Succession"),
                                li("Scenes from a Marriage"),
                                li("Betty"),
                                li("Vox Lux")
                    )),
                    h4("My daughter Luna is 4 years old with the attitude of a 14 year old."),
                    img(src = "LuDOUGH.png", width = "80%")),
             
             column(width=4,
                    h2("A Little Bit About Me"),
                    h4("As an 8 year combat Veteran of the USMC I have had the honor of serving around the world. "),
                    withTags(ul(li("Camp Lejeune, NC"),
                                li("Camp Schwab, Okinawa"),
                                li("NSA Bahrain"),
                                li("Um Qasr, Iraq"),
                                li("Twentynine Palms, Ca"), 
                                li("Al-Fallujah, Iraq")
                    )),
                    h4("After the Marine Corps I moved to New York completing degrees in: ", 
                       br(),br(),em("* Marketing with a focus in Sales and merchandising.")),
                    h4(em("* BBA: Technical management")),
                    br(),
                    h4("Opinion: Greatest Mathematical formulas of all time:"),
                    
             ),
             column(width=4,
                    h2("My Job and Hobbies"),
                    withTags(table(
                        caption("Courses taken/taking at Harvard"),
                        tr(th("Summer 21' "),th("Fall 21' ")),
                        tr(td("EXPO-32S"),td("MATH E-151")),
                        tr(td(""),td("DGMD E-14")),
                    )),
                    h4("After college I joined a young startup, based in Montreal, that just closed their series A and was looking to open an office in NYC.", em("Lightspeed POS.")),
                    HTML('<iframe width="280" height="150" src="https://www.youtube.com/embed/a_iSpw7eW7Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
                    h6("* We are lightspeed."),
                    h4("After helping to bring the company public in 2019 I decided to broaden my education into a deeper understanding of software in preparation for my next project.")
             )
    )
)
ui <- dashboardPage(header, sidebar, body)

server <- function(session, input, output) {
    
}

#Run the app
shinyApp(ui = ui, server = server)