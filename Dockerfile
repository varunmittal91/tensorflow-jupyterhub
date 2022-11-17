FROM jupyter/scipy-notebook

USER root
RUN apt-get update
RUN apt-get -y install gnupg2
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
RUN dpkg -i cuda-keyring_1.0-1_all.deb
RUN apt-get update
RUN apt-get -y install libnvidia-compute-520

RUN conda install nb_conda_kernels -y
COPY condarc /home/jovyan/.condarc

#COPY cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
#RUN wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda-repo-ubuntu2004-11-0-local_11.0.3-450.51.06-1_amd64.deb --show-progress=off

#RUN dpkg -i cuda-repo-ubuntu2004-11-0-local_11.0.3-450.51.06-1_amd64.deb
#RUN apt-key add /var/cuda-repo-ubuntu2004-11-0-local/7fa2af80.pub
#RUN apt-get -y install cuda

#USER ${NB_UID}
