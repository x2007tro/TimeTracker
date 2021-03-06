##
# Data upload tabPanel
##
tp_configuration <- tabPanel(
  "Configuration",
  
  ##
  # File locations
  fluidRow(
    column(
      width = 4,
      
      tags$div(
        class = "block_outter_frame",
        tags$h3(
          class = "block_title",
          "Location"
        ),
        tags$div(
          class = "block_inner_frame",
          
          ##
          # Real content starts here
          tags$div(class = "gloconf_div", textInput("gloconf_dfl", "Daily File Location", value = dly_file_loc, width = entry_wid_l)),
          tags$div(class = "gloconf_div", textInput("gloconf_darc", "Daily Archive Location", value = dly_arc_file_loc, width = entry_wid_l)),
          tags$div(class = "gloconf_div", textInput("gloconf_wfl", "Weekly File Location", value = wly_file_loc, width = entry_wid_l)),
          tags$div(class = "gloconf_div", textInput("gloconf_warc", "Weekly Archive Location", value = wly_arc_file_loc, width = entry_wid_l)),
          tags$div(class = "gloconf_div", textInput("gloconf_ref", "Reference File Path", value = cf_file_path, width = entry_wid_l))
        )
      )
      
    ),
    
    ##
    # Archiving schedule
    column(
      width = 4,
      
      tags$div(
        class = "block_outter_frame",
        tags$h3(
          class = "block_title",
          "Archiving"
        ),
        tags$div(
          class = "block_inner_frame",
          
          ##
          # Real content starts here
          tags$div(class = "gloconf_div", actionButton(class = "btn-primary", "gloconf_clrd", "Archive Daily Files", width = entry_wid_l)),
          tags$div(class = "gloconf_div", textOutput("gloconf_clrd_msg")),
          tags$div(class = "gloconf_div", actionButton(class = "btn-primary", "gloconf_clrw", "Archive Weekly Files", width = entry_wid_l)),
          tags$div(class = "gloconf_div", textOutput("gloconf_clrw_msg"))
        )
      )
      
    ),
    
    ##
    # Upload client code
    column(
      width = 4,
      
      tags$div(
        class = "block_outter_frame",
        tags$h3(
          class = "block_title",
          "Client List Update"
        ),
        tags$div(
          class = "block_inner_frame",
          
          ##
          # file upload
          downloadButton(class = "btn-primary", "file_d", "Download Current List"),
          tags$br(), tags$br(),
          fileInput("file_u", "Upload List",
                    multiple = FALSE,
                    accept = c(".xlsx", ".xls"))
        )
      )
      
    )
  )
)
