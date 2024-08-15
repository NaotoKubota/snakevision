###############################################################
# Dockerfile to build container images for snakevision
# Based on python 3.8.6-buster
################################################################

FROM python:3.8.6-buster

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

# Upgrade pip
RUN pip install --upgrade pip

# Install GCC and git
RUN apt-get update && apt-get install -y git less

# Install snakevision
RUN cd /usr/src/ && \
	git clone https://github.com/OpenOmics/snakevision.git -b v0.1.0 && \
	cd snakevision && \
	pip install -r requirements.txt

ENV PATH $PATH:/usr/src/snakevision/bin

# Set working directory
WORKDIR /home

# bash
CMD ["bash"]
