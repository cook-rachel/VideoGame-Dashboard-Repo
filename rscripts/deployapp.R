#deploy app 
rsconnect::setAccountInfo(name='cookprojects',
                          token='760D39FCAEBB0CBBA181F3679BE8E6F3',
                          secret='6W88PpFX7Nk+DBymuBpFt62sTpOmYVTs4nBmWelx')

rsconnect::deployApp(appDir="/Volumes/Rachel/GitHub Repos/VideoGame-Dashboard-Repo",
                     appName = "Video-Game-Dashboard",
                     forceUpdate = TRUE,
                     account = "cookprojects",
                     upload = TRUE)

# renv::dependencies()   # Check that rgdal no longer appears (need to set working dir first)
# 
# 
# files <- list.files("/Volumes/Rachel/GitHub Repos/VideoGame-Dashboard-Repo", 
#                     pattern = "\\.R$|\\.Rmd$", recursive = TRUE, full.names = TRUE)
# 
# for (f in files) {
#   lines <- readLines(f, warn = FALSE)
#   matches <- grep("rgdal", lines)
#   if (length(matches) > 0) {
#     for (m in matches) {
#       cat("Found in:", f, "at line", m, "->", lines[m], "\n")
#     }
#   }
# }

