
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

User Guide
----------

*add details here*

App Directory
-------------

    ##                         levelName
    ## 1  shiny.OpportunityMap          
    ## 2   ¦--_config.yml               
    ## 3   ¦--DESCRIPTION               
    ## 4   ¦--inst                      
    ## 5   ¦   °--application           
    ## 6   ¦       ¦--global.R          
    ## 7   ¦       ¦--server.R          
    ## 8   ¦       °--ui.R              
    ## 9   ¦--LICENSE                   
    ## 10  ¦--NAMESPACE                 
    ## 11  ¦--README.md                 
    ## 12  ¦--README.Rmd                
    ## 13  °--shiny.OpportunityMap.Rproj
