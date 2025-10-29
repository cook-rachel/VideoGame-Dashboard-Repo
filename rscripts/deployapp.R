#deploy app 
rsconnect::setAccountInfo(name='cookprojects',
                          token='760D39FCAEBB0CBBA181F3679BE8E6F3',
                          secret='6W88PpFX7Nk+DBymuBpFt62sTpOmYVTs4nBmWelx')

rsconnect::deployApp(appDir="/Volumes/Rachel/GitHub Repos/VideoGame-Dashboard-Repo",
                     appName = "Video-Game-Dashboard",
                     forceUpdate = TRUE,
                     account = "cookprojects",
                     upload = TRUE)
