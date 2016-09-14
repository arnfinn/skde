
## Rstudio og shinyapps gjennom proxy

- [Opprett en ny](new_rshiny.md) eller åpne en gammel "Shiny web application" i Rstudio.
- Opprett en bruker på [shinyapps](http://www.shinyapps.io)
- Installer shinyapps fra github

```r
install_github("rstudio/shinyapps")
```

- Kjør gjennom proxy
```r
options(RCurlOptions = list(proxy = "http://www-proxy.helsenord.no:8080"))
options(shinyapps.http = "rcurl")
```
- Kopier din token fra [shinyapps](http://www.shinyapps.io/admin/#/tokens) og kopier over i "Manage Accounts"

![Alt text](figurer/rshiny_5.png)
- Last opp din shinyapp til shinyapps.io. Jeg fikk ikke til å gjøre dette ved hjelp av knappen over, men måtte gjøre dette i konsollen.

```r
shinyapps::deployApp('../my_new_shinyapp')
```

## Alternativ fremgangsmåte 

```r
library(rsconnect)
deployApp()
```

