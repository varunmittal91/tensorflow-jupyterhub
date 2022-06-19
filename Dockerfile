FROM jupyter/scipy-notebook

RUN conda install nb_conda_kernels -y
RUN echo \
envs_dirs:\\n\
  - /home/jovyan/.conda-envs/\\n\
create_default_packages:\\n\
  - ipykernel\\n\
> /home/jovyan/.condarc
