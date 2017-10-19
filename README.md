
Opportunity Map
---------------

This project brings together information about upcoming changes to a neighborhood and overlays past visions and plans created by the community.

This is intended to be a proof of concept not a finished product. Please note that it is not yet suitable for public distribution.

The App
-------

The app is written in R and published to the free tier of RStudio's Shinyapps.io server. The app can be run locally by downloading this Github repository and running the provided `launch_application()` function:

``` r
devtools::install_github('tiernanmartin/shiny.OpportunityMap')
launch_app(pkg_name = 'shiny.OpportunityMap')
```

![](./inst/application/www/images/opp-map-ss-01.PNG)

User Guide
----------

*add details here*

App Directory
-------------

    ##                                levelName
    ## 1  shiny.OpportunityMap                 
    ## 2   ¦--_config.yml                      
    ## 3   ¦--DESCRIPTION                      
    ## 4   ¦--inst                             
    ## 5   ¦   °--application                  
    ## 6   ¦       ¦--global.R                 
    ## 7   ¦       ¦--server.R                 
    ## 8   ¦       ¦--ui.R                     
    ## 9   ¦       °--www                      
    ## 10  ¦           ¦--content              
    ## 11  ¦           ¦   ¦--about.html       
    ## 12  ¦           ¦   °--about.Rmd        
    ## 13  ¦           ¦--data                 
    ## 14  ¦           ¦   °--priorities_sf.rds
    ## 15  ¦           °--images               
    ## 16  ¦               °--opp-map-ss-01.PNG
    ## 17  ¦--LICENSE                          
    ## 18  ¦--man                              
    ## 19  ¦   ¦--boxed_radio_subgroup.Rd      
    ## 20  ¦   ¦--launch_app.Rd                
    ## 21  ¦   ¦--mod_about.Rd                 
    ## 22  ¦   ¦--mod_documents.Rd             
    ## 23  ¦   ¦--mod_filters.Rd               
    ## 24  ¦   ¦--mod_lists.Rd                 
    ## 25  ¦   °--... 4 nodes w/ 0 sub         
    ## 26  °--... 5 nodes w/ 19 sub
