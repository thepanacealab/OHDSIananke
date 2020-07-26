####################################################################
### HPO to OHDSI concept_id mappings V 1.0                      ###
### By Juan M. Banda (www.jmbanda.com)                           ###
### Repository:     https://github.com/thepanacealab/OHDSIananke ###
#### USAGE NOTES ###################################################
## These mappings assume that both your OHDSI vocabulary and     ###
## UMLS source tables are on the same database                   ###
##                                                               ###
## Result: a table OHDSI2HPO_MAPPINGS in your database           ###
## This was developed and tested on PostgreSQL 9.6               ###
####################################################################
############ Pull out only HPO terms from UMLS2020AA ########################
CREATE TABLE only_hpo AS (SELECT cui, lat, sab, str, code FROM mrconso WHERE sab = 'HPO');
############ Pull mappings to other SAB from HPO only cuis
CREATE TABLE hpo_to_OMOP_p1 AS (SELECT cui, lat, code, sab, str FROM mrconso WHERE cui IN (SELECT cui FROM only_hpo) AND SAB IN ('SNOMEDCT_US', 'MSH', 'ICD10CM', 'ICD9CM','ICD10PCS','MDR'));
################################## Mappings to different vocabularies ######################################################
CREATE TABLE OHDSI2HPO_SNOMED AS (SELECT B.concept_id as OHDSI_code, C.code as HPO_code FROM hpo_to_OMOP_p1 as A, concept as B, only_hpo as C WHERE A.sab = 'SNOMEDCT_US' AND B.vocabulary_id='SNOMED' AND A.code = B.concept_code AND A.cui = C.cui GROUP BY HPO_code, OHDSI_code);
CREATE TABLE OHDSI2HPO_MESH AS (SELECT B.concept_id as OHDSI_code, C.code as HPO_code FROM hpo_to_OMOP_p1 as A, concept as B, only_hpo as C WHERE A.sab = 'MSH' AND B.vocabulary_id='MeSH' AND A.code = B.concept_code AND A.cui = C.cui GROUP BY HPO_code, OHDSI_code);
CREATE TABLE OHDSI2HPO_MEDRA AS (SELECT B.concept_id as OHDSI_code, C.code as HPO_code FROM hpo_to_OMOP_p1 as A, concept as B, only_hpo as C WHERE A.sab = 'MDR' AND B.vocabulary_id='MedDRA' AND A.code = B.concept_code AND A.cui = C.cui GROUP BY HPO_code, OHDSI_code);
CREATE TABLE OHDSI2HPO_ICD10CM AS (SELECT B.concept_id as OHDSI_code, C.code as HPO_code FROM hpo_to_OMOP_p1 as A, concept as B, only_hpo as C WHERE A.sab = 'ICD10CM' AND B.vocabulary_id='ICD10CM' AND A.code = B.concept_code AND A.cui = C.cui GROUP BY HPO_code, OHDSI_code);
CREATE TABLE OHDSI2HPO_ICD9CM AS (SELECT B.concept_id as OHDSI_code, C.code as HPO_code FROM hpo_to_OMOP_p1 as A, concept as B, only_hpo as C WHERE A.sab = 'ICD9CM' AND B.vocabulary_id='ICD9CM' AND A.code = B.concept_code AND A.cui = C.cui GROUP BY HPO_code, OHDSI_code);
######################### Final Mappings join ##############################################################################
CREATE TABLE OHDSI2HPO_MAPPINGS AS (SELECT xc.ohdsi_code as ohdsi_concept_id, xc.hpo_code FROM (SELECT * FROM OHDSI2HPO_SNOMED UNION SELECT * FROM OHDSI2HPO_MEDRA UNION SELECT * FROM OHDSI2HPO_MESH UNION SELECT * FROM OHDSI2HPO_ICD10CM UNION SELECT * FROM OHDSI2HPO_ICD9CM) AS xc ORDER BY ohdsi_concept_id ASC);