# scRNA-seq Analysis of SARS-CoV-2 Lung Organoid Drug Perturbations

## Key Highlights
- Single-cell RNA-seq analysis of SARS-CoV-2 lung organoids under antiviral drug perturbations
- End-to-end Python workflows (scanpy, anndata, pandas, numpy)
- Publication in [Nature Communications](https://doi.org/10.1038/s41467-025-61759-1), data on [GEO: GSE272840](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE272840)
- Reproducible pipelines via Conda or Docker

## Overview

Human lung organoids were infected with SARS-CoV-2 and treated with candidate antiviral drugs. This repository contains the computational scripts used to generate figures in the associated [Nature Communications](https://doi.org/10.1038/s41467-025-61759-1) publication. Each Jupyter notebook corresponds to a figure and reproduces the analyses.


## Notebooks
- **[Fig5.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%205.ipynb)**  
  Analysis of AT2-like cell responses to SARS-CoV-2 infection and RMC-113 treatment, including:
  - UMAP embeddings colored by cell type and viral transcript abundance
  - Differential gene expression and pathway enrichment analyses
  - Heatmaps and box plots of autophagy-related gene expression

- **[FigS8.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%20S8.ipynb)**  
  Extended analysis of autophagy-related gene regulation in AT2-like cells, including:
  - Cell count comparisons across experimental conditions
  - Differential expression and log2 fold-change heatmaps
  - Gene-level expression distributions and condition-specific effects
  - Comparative analyses between infected, bystander, and drug-treated cells

- **[FigS9.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%20S9.ipynb)**  
  Analysis of lysosomal gene regulation in AT2-like cells, including:
  - Differential expression heatmaps comparing infection and drug treatment
  - Identification of significantly regulated lysosomal transcripts

## Workflow & Scope
- QC and normalization
- Differential gene expression analysis using nonparametric statistical tests
- Drug perturbation response analysis, Gene Ontology and pathway enrichment
- Publication‑quality figure generation
- Repository owner led all analyses, including functional interpretation and visualization


## Data Availability
The single-cell RNA-seq dataset underlying this analysis is publicly available at **GEO: [GSE272840](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE272840)**.


## Tech Stack & Reproducibility
- **Python** (`scanpy`, `anndata`, `pandas`, `numpy`, `matplotlib`, `seaborn`)
- Jupyter notebooks for all analysis steps, versions and commands documented within each notebook


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


