FROM jupyter/scipy-notebook

RUN conda install nb_conda_kernels -y
COPY condarc /home/jovyan/.condarc
