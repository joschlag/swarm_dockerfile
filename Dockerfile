FROM continuumio/miniconda:4.7.10
MAINTAINER <johannes.schlagbauer@uni-graz.at>

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda swarm=3.1.5 && \
	conda clean -a -y

CMD ["swarm"]
