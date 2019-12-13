## WHH
## @2019/12/01
##


##  Load uniprot annotation data
library(UniProt.ws)
availableUniprotSpecies(pattern="Chlamy")
availableUniprotSpecies(pattern="Caenorhabditis")
availableUniprotSpecies(pattern="Homo")

Chlarein <- UniProt.ws(3055)  ##	Chlamydomonas reinhardtii (Chlamydomonas smithii)
columns(Chlarein)
Celegans <- UniProt.ws(6239)  ## Caenorhabditis elegans
Celegans
Homosp <- UniProt.ws(9606)  ## Caenorhabditis elegans
Homosp

keys(Chlarein, keytype="UNIPROTKB")
keys(Celegans, keytype="UNIPROTKB")
keys(Homosp, keytype="UNIPROTKB")


## Load local data and
## summary all protein information
library(data.table)
# setwd("/run/media/whh/research/research/project_temps/")
setwd("~/research/research/project_temps/")
chlamy_protein <- fread("/run/media/whh/research/data/reference/chlamy/uniprot/uniprot-taxonomy_3055.xlsx/uniprot-taxonomy_3055.csv")
human_protein <- fread("/run/media/whh/research/data/reference/homo_sapiens/uniprot/uniprot-proteome_UP000005640.csv")
ce_protein <- fread("/run/media/whh/research/data/reference/ce/uniprot/uniprot-proteome_UP000001940.csv")

fap_symbol <- fread("MT_protein_preAnalysis/FAP-genelist.txt", header = T)

fap_charein <- select(Chlarein, keys=fap_symbol$uniProtID,
       columns=c("GENES", "FAMILIES","PROTEIN-NAMES","KEYWORDS","FEATURES","INTERPRO",
                 "GO","SEQUENCE"),
       keytype="UNIPROTKB")

fap_info <- merge(fap_symbol, fap_charein, by.x="uniProtID", by.y="UNIPROTKB")
write.table(fap_info[order(symbol_Chlamy)], file="MT_protein_preAnalysis/FAP-all_info.txt", sep="\t", quote=F, row.names=F, col.names=T)


## Run rBLAST

### 1. load database from `makeblastdb`
Sys.which("blastn")  # check blast version locally

library(rBLAST)
chlamy_aa_bl <- blast(db="/home/whh/research/data/reference/chlamy/blast/chlamy_protein", type="blastp")
ce_aa_bl <- blast(db="~/research/data/reference/ce/blast/Celegans_protein", type = "blastp")
hs_aa_bl <- blast(db="~/research/data/reference/homo_sapiens/blast", type = "blastp")
# cele_seqAA <- read.fasta("~/research/data/reference/ce/uniprot/UP000001940_6239.fasta.gz", seqtype = "AA")

head(cele_seqAA)
cele_seqAA[1]
chlamy_aa_bl

fap_aa_seq <- BStringSet(fap_info$SEQUENCE)
names(fap_aa_seq) <- fap_info$symbol_Chlamy


##
#Try this if time allows
#cl1 <- predict(chlamy_aa_bl, x1[1,], custom_format = "qseqid sseqid evalue bitscore pident qlen qstart qend")
#cl1
##

##############################
## define function getUniproAnno to get information
# getUniproAnno <- function(symbol="PROTEINID", species=Chlarein){
#   cl.more <- select(keys=symbol, species=species,
#                     columns=c("GENES", "FAMILIES","PROTEIN-NAMES","KEYWORDS","FEATURES","INTERPRO",
#                               "GO","SEQUENCE"),
#                     keytype="UNIPROTKB")
#   cl.more
# }
#
##################################


## 2. Check chlamy (find 100% mappings)
cl <- predict(chlamy_aa_bl, fap_aa_seq)
cl.more <- getUniproAnno(symbol=as.character(cl$SubjectID), species=Chlarein)
cl.more <-  select(Chlarein, keys=as.character(cl$SubjectID),
                   columns=c("GENES", "FAMILIES","PROTEIN-NAMES","KEYWORDS","FEATURES","INTERPRO",
                             "GO","SEQUENCE"), keytype="UNIPROTKB")
map_result_cl <- data.table(merge(cl, cl.more, by.y= "UNIPROTKB", by.x="SubjectID"))
# write.table(map_result_cl[order(QueryID, Perc.Ident)], file="MT_protein_preAnalysis/res1_cl.txt", sep="\t", quote=F, row.names=F, col.names=T)


## 3. Check Celegans (find orthologs in C.elegans)
fap_aa_seq <- BStringSet(fap_info$SEQUENCE)
names(fap_aa_seq) <- fap_info$symbol_Chlamy
cl <- predict(ce_aa_bl, fap_aa_seq)

### get C.elegans mappings
cl.more <- select(Celegans, keys=cl$SubjectID,
                  columns=c("GENES", "FAMILIES","PROTEIN-NAMES","KEYWORDS","FEATURES","INTERPRO",
                            "GO","SEQUENCE"),
                  keytype="UNIPROTKB")
### output information
map_result_cl <- data.table(merge(cl, cl.more, by.y= "UNIPROTKB", by.x="SubjectID"))
write.table(map_result_cl[order(QueryID, Perc.Ident)],
            file="MT_protein_preAnalysis/res1_cl_cele.txt", sep="\t", quote=F, row.names=F, col.names=T)
