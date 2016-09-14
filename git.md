# Intro til git for windows

## Hvordan installere git

Du kan fint installere *git* på nytt og på nytt uten risiko. Den fjerner gammel git før den installerer ny.

- Last ned fra [git-scm.com](https://git-scm.com/download/win) og installer med default (ikke endre noen valg)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git-bash.exe legges her:
```bash
C:\Users\$USERNAME\AppData\Local\Programs\Git\
```

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connect.exe, git.exe etc. legges her:
```bash
C:\Users\$USERNAME\AppData\Local\Programs\Git\mingw64\bin
```


## Gjør git klar for kamp

- Åpne `Git Bash`
    - Det er ikke mulig å bruke `ctrl-v` for å lime inn i Git Bash, men man kan trykke inn mellomtasten på musa (eller trykke høyretasten på musa og velge `Paste`)
    - `$` er ikke en del av det som skal skrives inn, men viser til at dette er tekst som skrives inn til Git Bash.
- Legg inn navn og epost:

```bash
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```
- Lag ssh-nøkkelpar. Vi legger den på `c:`, slik at Rstudio kan lese den senere (bytt ut `ast046` med ditt brukernavn):

```bash
$ mkdir /c/Users/ast046/.ssh
$ ssh-keygen
Enter file in which to save the key (/p/.ssh/id_rsa): /c/Users/ast046/.ssh/id_rsa
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
```

## Hvordan få git til å snakke med github gjennom proxy

- Gå inn på https://github.com/settings/ssh og legg inn din nye SSH-nøkkel (kopier over det som ligger i `/c/Users/$USERNAME/.ssh/id_rsa.pub`).
- Lag en mappe `p/.ssh/`:

```bash
$ mkdir /p/.ssh
```
- Lag en fil kalt `config` i mappen `p/.ssh/` med følgende innhold (igjen: bytt ut `ast046` med ditt brukernavn): 

```
IdentityFile /c/Users/ast046/.ssh/id_rsa

Host githubhn
   Hostname github.com
   User git
   ProxyCommand /mingw64/bin/connect.exe -H www-proxy.helsenord.no:8080 %h %p
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dette kan enten gjøres med `Notisblokk`, eller gjennom terminal:

```bash
$ vi /p/.ssh/config
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Trykk så `p` for å lime inn, og så `:wq` pluss Enter for å lagre og lukke.

- Sjekk at git snakker med github ved å klone denne repo (ikke gå videre før dette er ok):

```bash
$ cd
$ git clone githubhn:arnfinn/git-r.git tmp-mappe
$ rm -rf tmp-mappe # hvis alt gikk etter planen (fjerner mappen igjen)
```
