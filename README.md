# OHDSI Ananke - A Tool for Mapping Between OHDSI Concept Identifiers to Unified Medical Language System (UMLS) identifiers
<table border="1" style='border-collapse:collapse;color:#000'>
<thead>
  <tr style='border:1px solid white;'>
    <td style='border:0px solid white;' width="30%"><img src="http://www.jmbanda.com/OHDSI_ananke_sticker.png" alt="Ananke Sticker"></td>
    <td style='border:0px solid white;'>Ananke in Greek mythology is the personification of inevitability, compulsion, and necessity, which very well relates to the need to have the OHDSI vocabulary mapped to other available and more widely used resources, like the Unified Medical Language System (UMLS). The UMLS metathesaurus (1), contains over three million concepts and over 130 English vocabularies, the OHDSI vocabulary on the other hand covers over 70 vocabularies with many of them overlapping. While the vocabulary is the defacto standard in the OHDSI community, UMLS is widely used outside of the community for most natural language processing (NLP) tools and tasks. This software  bridges the gaps between the communities, allowing for the previously impossible interoperability between tools.</td>
  </tr>
</thead>
</table>

## OHDSI2UMLS Mappings

### Version 1.0
This version was presented in the 2018 OHDSI symposium. It should be replaced with version 2.0. However, it can be downloaded [here](source_queries/cui2ohdsi_concept_idv1.1.sql).
For more info, please see the poster found [here](materials/Juan-Banda_Ananke-UMLS2OHDSI_2018symposium_poster.pdf).

### Version 2.0
Latest version of the OHDSI2UMLS mappings which also includes mapping from the Human Phenotype Ontology (HPO) into OHDSI.
This version has been submitted to the 2020 OHDSI Symposium and it is currently under review.

Download the raw SQL File to generate Version 2 mappings [here](source_queries/cui2ohdsi_concept_idv2.0.sql).
Download the raw SQL File to generate the HPO mappings [here](source_queries/HPO2OMOP_v1.0.sql).
