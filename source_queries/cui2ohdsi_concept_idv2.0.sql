####################################################################
### UMLS CUI to OHDSI concept_id mappings V 2.0                  ###
### By Juan M. Banda (www.jmbanda.com)                           ###
### Repository:     https://github.com/thepanacealab/OHDSIananke ###
#### USAGE NOTES ###################################################
## These mappings assume that both your OHDSI vocabulary and     ###
## UMLS source tables are on the same database                   ###
##                                                               ###
## Result: a table called OHDSI_to_CUICUI2020 in your database   ###
## This was developed and tested on PostgreSQL 9.6               ###
####################################################################

DROP TABLE IF EXISTS OHDSI_to_CUI2020_TEMP;
CREATE TABLE OHDSI_to_CUI2020_TEMP AS (
SELECT AAA.CUI, AAA.concept_id, AAA.vocabulary_id FROM (
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ATC' AND B.vocabulary_id='ATC'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='CVX' AND B.vocabulary_id='CVX'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='RXNORM' AND B.vocabulary_id='RxNorm'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='CPT' AND B.vocabulary_id='CPT4'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='HCPCS' AND B.vocabulary_id='HCPCS'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10CM' AND B.vocabulary_id='ICD10CM'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10' AND B.vocabulary_id='ICD10'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='MSH' AND B.vocabulary_id='MeSH'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='NUCCPT' AND B.vocabulary_id='NUCC'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='VANDF' AND B.vocabulary_id='VA Product'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='VANDF' AND B.vocabulary_id='VA Class'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10PCS' AND B.vocabulary_id='ICD10PCS'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD9CM' AND B.vocabulary_id='ICD9CM'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD9CM' AND B.vocabulary_id='ICD9Proc'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='MDR' AND B.vocabulary_id='MedDRA'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='HCPCS' AND B.vocabulary_id='HCPCS'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='NDFRT' AND B.vocabulary_id='NDFRT'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='SNOMEDCT_US' AND B.vocabulary_id='SNOMED'
) AA 
UNION
SELECT DISTINCT ON (AA.CUI) AA.CUI, AA.concept_id, AA.vocabulary_id FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM MRCONSO as A LEFT JOIN concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='LNC' AND B.vocabulary_id='LOINC'
) AA 
) as AAA
);

CREATE INDEX idxCUI ON OHDSI_to_CUI2020_TEMP (CUI);
CREATE INDEX idxCID ON OHDSI_to_CUI2020_TEMP (concept_id);
CREATE INDEX idxVID ON OHDSI_to_CUI2020_TEMP (vocabulary_id);

##### Improve ATC codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP 
SELECT DISTINCT ON (A.CUI) A.CUI, B.concept_id, 'ATC' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='ATC') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ATC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ATC';

INSERT INTO OHDSI_to_CUI2020_TEMP 
SELECT DISTINCT ON (A.CUI) A.CUI, B.concept_id, 'ATC' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='ATC') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ATC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ATC';
##### Improve RxNorm codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP 
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'RxNorm' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='RXNORM') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='RxNorm') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='RXNORM' ;
INSERT INTO OHDSI_to_CUI2020_TEMP 
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'RxNorm' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='RXNORM') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='RxNorm') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='RXNORM' ;
######## Improve CPT codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP 
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'CPT4' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='CPT4') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='CPT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='CPT' ;
INSERT INTO OHDSI_to_CUI2020_TEMP 
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'CPT4' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='CPT4') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='CPT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='CPT' ;
######## Improve HCPCS codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'HCPCS' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='HCPCS') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='HCPCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='HCPCS' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'HCPCS' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='HCPCS') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='HCPCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='HCPCS' ;
######## Improve ICD10CM codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD10CM' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='ICD10CM') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD10CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10CM' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD10CM' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='ICD10CM') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD10CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10CM' ;
######## Improve ICD10 codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD10' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='ICD10') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD10') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD10' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='ICD10') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD10') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10' ;
######## Improve MSH codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'MeSH' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='MeSH') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='MeSH') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='MSH' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'MeSH' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='MeSH') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='MeSH') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='MSH' ;
######## Improve NUCC codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'NUCC' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='NUCC') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='NUCC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='NUCCPT' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'NUCC' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='NUCC') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='NUCC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='NUCCPT' ;
######## Improve VA Product codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'VA Product' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='VA Product') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='VA Product') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='VANDF' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'VA Product' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='VA Product') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='VA Product') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='VANDF' ;
######## Improve VA Class codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'VA Class' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='VA Class') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='VA Class') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='VANDF' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'VA Class' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='VA Class') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='VA Class') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='VANDF' ;
######## Improve ICD10PCS codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD10PCS' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='ICD10PCS') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD10PCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10PCS' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD10PCS' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='ICD10PCS') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD10PCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10PCS' ;
######## Improve ICD9CM codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD9CM' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='ICD9CM') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD9CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD9CM' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD9CM' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='ICD9CM') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD9CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD9CM' ;
######## Improve ICD9Proc codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD9Proc' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='ICD9Proc') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD9Proc') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD9CM' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'ICD9Proc' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='ICD9Proc') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='ICD9Proc') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD9CM' ;
######## Improve MeDRA codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'MedDRA' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='MedDRA') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='MedDRA') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='MDR' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'MedDRA' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='MedDRA') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='MedDRA') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='MDR' ;
######## Improve NDFRT codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'NDFRT' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='NDFRT') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='NDFRT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='NDFRT' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'NDFRT' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='NDFRT') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='NDFRT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='NDFRT' ;
######## Improve SNOMED codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'SNOMED' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='SNOMED') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='SNOMED') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='SNOMEDCT_US' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'SNOMED' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='SNOMED') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='SNOMED') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='SNOMEDCT_US' ;
######## Improve LOINC codes ##########
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'LOINC' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM concept WHERE vocabulary_id='LOINC') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='LOINC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='LNC' ;
INSERT INTO OHDSI_to_CUI2020_TEMP
SELECT DISTINCT ON (A.CUI) A.CUI , B.concept_id, 'LOINC' as vocabulary_id FROM MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM concept WHERE vocabulary_id='LOINC') as A LEFT JOIN (SELECT * FROM OHDSI_to_CUI2020_TEMP WHERE vocabulary_id='LOINC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='LNC' ;
################# Finalize Table ###################
DROP TABLE IF EXISTS OHDSI_to_CUI2020;
CREATE TABLE OHDSI_to_CUI2020 AS ( SELECT CUI,concept_id, vocabulary_id FROM OHDSI_to_CUI2020_TEMP GROUP BY CUI,concept_id, vocabulary_id);
CREATE INDEX idxCUI2 ON OHDSI_to_CUI2020 (CUI);
CREATE INDEX idxCID2 ON OHDSI_to_CUI2020 (concept_id);
CREATE INDEX idxVID2 ON OHDSI_to_CUI2020 (vocabulary_id);
DROP TABLE IF EXISTS OHDSI_to_CUI2020_TEMP;
