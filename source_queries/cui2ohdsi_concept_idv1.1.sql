####################################################################
### UMLS CUI to OHDSI concept_id mappings V 2.0                  ###
### By Juan M. Banda (https://github.com/jmbanda                 ###
### Repository: https://github.com/jmbanda/OHDSIconceptid2cui    ###
#### USAGE NOTES ###################################################
## OHDSI vocabulary source tables:                               ###
## Find and REPLACE OHDSIVocab  with your own Database           ###
## UMLS source tables:                                           ###
## Find and REPLACE umls2018aa with you own database             ###
##                                                               ###
## Result: a table called OHDSI_to_CUI in your OHDSI             ###
## vocabulary tables                                             ###
####################################################################

DROP TABLE IF EXISTS OHDSIVocab.OHDSI_to_CUI2018_TEMP;
CREATE TABLE OHDSIVocab.OHDSI_to_CUI2018_TEMP AS (
SELECT AAA.* FROM (
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ATC' AND B.vocabulary_id='ATC'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='CVX' AND B.vocabulary_id='CVX'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='RXNORM' AND B.vocabulary_id='RxNorm'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='CPT' AND B.vocabulary_id='CPT4'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='HCPCS' AND B.vocabulary_id='HCPCS'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10CM' AND B.vocabulary_id='ICD10CM'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10' AND B.vocabulary_id='ICD10'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='MSH' AND B.vocabulary_id='MeSH'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='NUCCPT' AND B.vocabulary_id='NUCC'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='VANDF' AND B.vocabulary_id='VA Product'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='VANDF' AND B.vocabulary_id='VA Class'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD10PCS' AND B.vocabulary_id='ICD10PCS'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD9CM' AND B.vocabulary_id='ICD9CM'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='ICD9CM' AND B.vocabulary_id='ICD9Proc'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='MDR' AND B.vocabulary_id='MedDRA'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='HCPCS' AND B.vocabulary_id='HCPCS'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='NDFRT' AND B.vocabulary_id='NDFRT'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='SNOMEDCT_US' AND B.vocabulary_id='SNOMED'
) AA GROUP BY AA.CUI
UNION
SELECT AA.* FROM (
SELECT A.CUI, B.concept_id, B.vocabulary_id FROM umls2018aa.MRCONSO as A LEFT JOIN OHDSIVocab.concept as B ON A.CODE=B.concept_code WHERE A.LAT='ENG' AND A.SAB='LNC' AND B.vocabulary_id='LOINC'
) AA GROUP BY AA.CUI
) as AAA
);
ALTER TABLE OHDSIVocab.OHDSI_to_CUI2018_TEMP ADD INDEX CUI (CUI), ADD INDEX concept_id (concept_id), ADD INDEX vocabulary_id (vocabulary_id);
##### Improve ATC codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP 
SELECT A.CUI, B.concept_id, 'ATC' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ATC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ATC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ATC' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP 
SELECT A.CUI, B.concept_id, 'ATC' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ATC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ATC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ATC' GROUP BY A.CUI;
##### Improve RxNorm codes ##########
SELECT A.CUI, B.concept_id, 'RxNorm' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='RXNORM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='RxNorm') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='RXNORM' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP 
SELECT A.CUI, B.concept_id, 'RxNorm' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='RXNORM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='RxNorm') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='RXNORM' GROUP BY A.CUI;
######## Improve CPT codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP 
SELECT A.CUI, B.concept_id, 'CPT4' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='CPT4') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='CPT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='CPT' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP 
SELECT A.CUI, B.concept_id, 'CPT4' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='CPT4') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='CPT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='CPT' GROUP BY A.CUI;
######## Improve HCPCS codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'HCPCS' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='HCPCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='HCPCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='HCPCS' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'HCPCS' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='HCPCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='HCPCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='HCPCS' GROUP BY A.CUI;
######## Improve ICD10CM codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD10CM' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD10CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10CM' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD10CM' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD10CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10CM' GROUP BY A.CUI;
######## Improve ICD10 codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD10' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD10') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD10' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD10') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10' GROUP BY A.CUI;
######## Improve MSH codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'MeSH' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MeSH') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='MeSH') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='MSH' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'MeSH' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MeSH') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='MeSH') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='MSH' GROUP BY A.CUI;
######## Improve NUCC codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'NUCC' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NUCC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='NUCC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='NUCCPT' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'NUCC' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NUCC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='NUCC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='NUCCPT' GROUP BY A.CUI;
######## Improve VA Product codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'VA Product' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Product') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='VA Product') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='VANDF' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'VA Product' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Product') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='VA Product') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='VANDF' GROUP BY A.CUI;
######## Improve VA Class codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'VA Class' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Class') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='VA Class') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='VANDF' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'VA Class' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='VA Class') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='VA Class') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='VANDF' GROUP BY A.CUI;
######## Improve ICD10PCS codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD10PCS' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10PCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD10PCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD10PCS' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD10PCS' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD10PCS') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD10PCS') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD10PCS' GROUP BY A.CUI;
######## Improve ICD9CM codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD9CM' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD9CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD9CM' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD9CM' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9CM') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD9CM') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD9CM' GROUP BY A.CUI;
######## Improve ICD9Proc codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD9Proc' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9Proc') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD9Proc') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='ICD9CM' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'ICD9Proc' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='ICD9Proc') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='ICD9Proc') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='ICD9CM' GROUP BY A.CUI;
######## Improve MeDRA codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'MedDRA' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MedDRA') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='MedDRA') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='MDR' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'MedDRA' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='MedDRA') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='MedDRA') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='MDR' GROUP BY A.CUI;
######## Improve NDFRT codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'NDFRT' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NDFRT') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='NDFRT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='NDFRT' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'NDFRT' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='NDFRT') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='NDFRT') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='NDFRT' GROUP BY A.CUI;
######## Improve SNOMED codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'SNOMED' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='SNOMED') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='SNOMED') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='SNOMEDCT_US' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'SNOMED' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='SNOMED') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='SNOMED') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='SNOMEDCT_US' GROUP BY A.CUI;
######## Improve LOINC codes ##########
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'LOINC' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_name FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='LOINC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='LOINC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.STR=B.concept_name AND A.SAB='LNC' GROUP BY A.CUI;
INSERT INTO OHDSIVocab.OHDSI_to_CUI2018_TEMP
SELECT A.CUI, B.concept_id, 'LOINC' as vocabulary_id FROM umls2018aa.MRCONSO as A, 
(
SELECT A.concept_id, A.concept_code FROM (SELECT * FROM OHDSIVocab.concept WHERE vocabulary_id='LOINC') as A LEFT JOIN (SELECT * FROM OHDSIVocab.OHDSI_to_CUI2018 WHERE vocabulary_id='LOINC') as B ON A.concept_id=B.concept_id
WHERE B.CUI IS NULL
) as B WHERE A.CODE=B.concept_code AND A.SAB='LNC' GROUP BY A.CUI;


DROP TABLE IF EXISTS OHDSIVocab.OHDSI_to_CUI2018;
CREATE TABLE OHDSIVocab.OHDSI_to_CUI2018 AS ( SELECT CUI,concept_id, vocabulary_id FROM OHDSIVocab.OHDSI_to_CUI2018_TEMP GROUP BY CUI,concept_id, vocabulary_id);
ALTER TABLE OHDSIVocab.OHDSI_to_CUI2018 ADD INDEX CUI (CUI), ADD INDEX concept_id (concept_id), ADD INDEX vocabulary_id (vocabulary_id);
DROP TABLE IF EXISTS OHDSIVocab.OHDSI_to_CUI2018_TEMP;