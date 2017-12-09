# Dockerfile
FROM docker.repository.cloudera.com/cdsw/engine:3

MAINTAINER Mirko Kämpf "mirko@cloudera.com"

# update packages and install maven
RUN apt-get update && \
    apt-get install -y -q graphviz maven mc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install graphviz

# Define working directory.
WORKDIR /fiji

# Install Fiji.
RUN \
      curl -O http://update.imagej.net/bootstrap.js && \
      jrunscript bootstrap.js update-force-pristine

# Add fiji to the PATH
ENV PATH $PATH:/fiji

# Define default command.
CMD ["fiji-linux64"]

