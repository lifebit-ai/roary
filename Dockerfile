FROM nfcore/base
LABEL description="Docker image containing all requirements for nf-core/roary pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-roary-1.0dev/bin:$PATH
