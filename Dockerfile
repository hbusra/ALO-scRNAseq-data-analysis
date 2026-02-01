# Base image with Python 3.10
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy environment file and install dependencies
COPY env/environment.yml .

# Install conda (miniconda) and create environment
RUN apt-get update && apt-get install -y wget bzip2 git && \
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p /opt/conda && \
    rm /tmp/miniconda.sh && \
    /opt/conda/bin/conda env create -f environment.yml && \
    /opt/conda/bin/conda clean -a -y

# Activate environment
ENV PATH=/opt/conda/envs/alo_scRNAseq/bin:$PATH

# Copy notebooks and repo files
COPY notebooks ./notebooks
COPY README.md .

# Expose Jupyter port
EXPOSE 8888

# Default command to start Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

