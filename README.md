# scRNA-seq Analysis of SARS-CoV-2 Lung Organoid Drug Perturbations
[![DOI](https://img.shields.io/badge/DOI-10.1038%2Fs41467--025--61759--1-blue)](https://doi.org/10.1038/s41467-025-61759-1)
[![GEO](https://img.shields.io/badge/GEO-GSE272840-orange)](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE272840)
![Python](https://img.shields.io/badge/Python-3.8+-yellow)

> **📄 Publication:** [PIP4K2C inhibition reverses autophagic flux impairment induced by SARS-CoV-2](https://doi.org/10.1038/s41467-025-61759-1) — *Nature Communications* (2025)  
> **👤 Role:** Lead computational scientist — designed and executed all scRNA-seq analyses  
> **🎯 Impact:** Identified drug mechanism reversing viral-induced autophagy defects through single-cell transcriptomics<br/>
> **Tech:** End-to-end workflows (scanpy, pandas, numpy) • Reproducible pipelines (Conda, Docker)

## Overview

Human lung organoids were infected with SARS-CoV-2 and treated with candidate antiviral drugs. This repository contains the computational workflows used to identify cell-type-specific transcriptional responses to infection and treatment, with focus on autophagy pathway regulation. Individual notebooks reproduce figures in the associated [Nature Communications](https://doi.org/10.1038/s41467-025-61759-1) publication. 


## Methods
- **Data:** The single-cell RNA-seq dataset is publicly available at **GEO: [GSE272840](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE272840)**.
- **Python:** `scanpy`, `anndata`, `pandas`, `numpy`, `matplotlib`, `seaborn`, `scipy`
- Jupyter notebooks for all analysis steps, versions and commands documented within each notebook
### Pipeline Overview
1. Quality control and normalization  
2. Cell type annotation and validation  
3. Viral RNA quantification  
4. Drug perturbation response analysis  
5. Differential expression testing  
6. Pathway enrichment and interpretation  
7. Publication-quality figure generation


## Notebooks
- **[Fig5.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%205.ipynb)**  
  Analysis of AT2-like cell responses to SARS-CoV-2 infection and RMC-113 treatment, including:
  - Annotation of 4 lung epithelial cell populations from >20,000 cells
  - Quantification of viral RNA distribution across cell types
  - UMAP embeddings colored by cell type and viral transcript abundance
  - Differential gene expression and pathway enrichment analyses
  - Heatmaps and box plots of autophagy-related gene expression<br/>

  **Finding:** Drug reverses infection-induced autophagy gene downregulation

- **[FigS8.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%20S8.ipynb)**  
  Extended analysis of autophagy-related gene regulation in AT2-like cells, including:
  - Time-course analysis (4h vs. 24h post-infection)
  - Comparative analyses between infected, bystander, and drug-treated cells
  - Pathway-level expression heatmaps across treatment conditions<br/>

  **Finding:** Infection progressively impairs autophagy initiation, elongation, and fusion

- **[FigS9.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%20S9.ipynb)**  
  Analysis of lysosomal gene regulation in AT2-like cells, including:
  - Differential expression heatmaps comparing infection and drug treatment
  - Lysosomal gene expression across infection and drug treatment<br/>

  **Finding:** Drug upregulates lysosomal transporters and hydrolases


## Reproducibility

### Conda:
```
conda env create -f env/environment.yml
conda activate alo_scRNAseq
```

### Docker:
```
docker build -t alo_scRNAseq .
docker run -p 8888:8888 alo_scRNAseq
```


