# Tilrettelegging av nye data fra NPR

## Lage diff-filer

- *gitbash* (og eventuelt *gvim*) må være installert

1. `vimdiff fil1 fil2 fil3 ...`
2. `:TOhtml`
3. `:save diff.html`
4. `:qa`


### Kodeverk

#### NCMP, NCRP, NCSP

- Koder hentet fra ...
- Filene ligger på ANALYSE/Data/Kodeverk/NCMP_NCSP_NCRP/
- txt-filer med tab-mellomrom mellom kode og tekst


#### ICD-10

- Koder hentet fra ...
- Filene ligger på ANALYSE/Data/Kodeverk/ICD10/
- txt-filer med tab-mellomrom mellom kode og tekst


#### DRG

- Koder hentet fra ...
- Filene ligger på ANALYSE/Data/Kodeverk/DRG/
- csv-filer produsert fra ISF xlsx-filer, med semikolon mellom kode og tekst

