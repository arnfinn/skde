# Huskeliste for arbeid med SAS på SKDE

## Koble til server i SAS Enterprise Guide

- Gå på `Tools/Connections...`
- Legg til en profil. Den skal se noe slik ut, med maskinnavn `TOS-SASTEST-07`
![Alt text](figurer/sas_server.png)


## Lagring av sensitive datasett

- Sensitive datasett *skal* lagres på npr_utva! Disse skal slettes hvert år, når vi får nye data i hus
```sas
data mittutvalg;
set npr_utva.ahs_utvalg1;

...

run;
```

