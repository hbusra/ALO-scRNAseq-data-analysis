# scRNA-seq Analysis of SARS-CoV-2 Lung Organoid Drug Perturbations

## Overview

Human lung organoids were infected with SARS-CoV-2 and treated with candidate antiviral drugs. This repository contains the computational scripts used to generate figures for the SARS-CoV-2 lung organoid single-cell RNA-seq analysis presented in the associated [Nature Communications](https://doi.org/10.1038/s41467-025-61759-1) publication. Each Jupyter notebook corresponds to a specific main or supplementary figure and performs downstream single-cell analysis and biological interpretation underlying the published results.


## Repository Contents

Notebooks are organized by figure and reproduce the analyses underlying the corresponding main and supplementary results.

- **[Fig5.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%205.ipynb)**  
  Analysis of AT2-like cell responses to SARS-CoV-2 infection and RMC-113 treatment, including:
  - UMAP embeddings colored by cell type and viral transcript abundance
  - Differential gene expression analyses across infection and drug conditions
  - Pathway enrichment analyses in infected vs. uninfected and drug-treated cells
  - Heatmaps and box plots of autophagy-related gene expression highlighting significant transcriptional changes

- **[FigS8.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%20S8.ipynb)**  
  Extended analysis of autophagy-related gene regulation in AT2-like cells, including:
  - Cell count comparisons across experimental conditions
  - Differential expression and log2 fold-change heatmaps at early and late time points
  - Gene-level expression distributions and condition-specific effects
  - Comparative analyses between infected, bystander, and drug-treated cells across experiments

- **[FigS9.ipynb](https://github.com/hbusra/ALO-scRNAseq-data-analysis/blob/main/notebooks/Fig%20S9.ipynb)**  
  Analysis of lysosomal gene regulation in AT2-like cells, including:
  - Differential expression heatmaps comparing infection and drug treatment conditions
  - Identification of significantly regulated lysosomal transcripts across independent experiments

## Analysis Workflow

The workflows across the notebooks include:

- Quality control and filtering of heterogeneous single-cell datasets
- Normalization / transformation of expression values
- Differential gene expression analysis across experimental conditions using nonparametric statistical tests
- Drug perturbation response analysis in defined cell populations
- Gene Ontology and pathway enrichment to interpret transcriptional changes
- Generation of publication‑quality figures

Scripts are named to reflect the figure they produce and are structured to allow reproducible execution.


## Authorship and Analysis Scope

The repository owner led and executed all downstream single-cell RNA-seq analyses underlying the figures in this repository, including experimental comparisons, differential expression, functional enrichment, and visualization. The notebooks reflect the complete analytical workflows used to derive the published results.



## Tech Stack & Reproducibility

- **Python** (predominantly `scanpy`, `anndata`, `pandas`, `numpy`, `matplotlib`, `seaborn`)
- Jupyter notebooks for analysis steps
- Commands and versions documented within each notebook


### Option 1 — Conda (recommended)
Create and activate the reproducible environment:

```
conda env create -f env/environment.yml
conda activate alo_scRNAseq
```

All notebooks can then be executed directly in this environment.


### Option 2 — Docker
Run the repository in an isolated container:

```
# Build Docker image
docker build -t alo_scRNAseq .

# Run container and launch Jupyter Lab
docker run -p 8888:8888 alo_scRNAseq
```


