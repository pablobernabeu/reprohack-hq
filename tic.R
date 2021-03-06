# TODO: Define steps using the tic DSL, see ?DSL
# get_stage("<stage name>") %>%
#   add_step(step_...(...))

get_stage("install") %>%
    add_step( step_run_code(install.packages(c("rmarkdown", "dplyr", 
                                     "leaflet", "glue", "readr"))))



get_stage("deploy") %>%
    add_step( step_run_code(rmarkdown::render("README.Rmd", run_pandoc = FALSE))) %>%
    add_step(step_push_deploy())