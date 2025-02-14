#!/bin/bash 
#
# Tracks data supplement and extract table S5
#
# Prequisites are preston[1] and miller[2].
# 
# References
#
# [1] Elliott M.J., Poelen J.H., Fortes J.A.B. (2020). Toward Reliable Biodiversity Dataset References. Ecological Informatics. https://doi.org/10.1016/j.ecoinf.2020.101132 hash://sha256/136c3c1808bcf463bb04b11622bb2e7b5fba28f5be1fc258c5ea55b3b84f482c
# [2] Elliott M.J., Poelen, J.H. & Fortes, J.A.B. (2023) Signing data citations enables data verification and citation persistence. Sci Data. https://doi.org/10.1038/s41597-023-02230-y hash://sha256/f849c870565f608899f183ca261365dce9c9f1c5441b1c779e0db49df9c2a19d
# [3] Miller is a command-line tool for querying, shaping, and reformatting data files in various formats including CSV, TSV, JSON, and JSON Lines. https://miller.readthedocs.io/ accessed on 2025-02-14.
#

preston track https://ars.els-cdn.com/content/image/1-s2.0-S000632072500062X-mmc1.xlsx\
 | preston xlsx-stream\
 | grep Table%20S5\
 | mlr --ijsonl --otsvlite cat\
 > tableS5.tsv
