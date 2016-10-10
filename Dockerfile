FROM debian:latest

MAINTAINER Phillip Bailey <phillip@bailey.st>

# update ubuntu repository
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update

# install ubuntu packages
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-pip

# upgrade pip
RUN pip install --upgrade pip

# Copy requirement file.
COPY requirements.txt /tmp/requirements.txt

# Install requirements.
RUN   pip install -r /tmp/requirements.txt
