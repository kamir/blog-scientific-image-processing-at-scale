# Dockerfile
FROM docker.repository.cloudera.com/cdsw/engine:4

MAINTAINER Mirko Kämpf "mirko@cloudera.com"

# update packages and install maven
RUN apt-get update && \
    apt-get install -y -q graphviz maven mc git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install graphviz
RUN mkdir /ciw



WORKDIR /ciw
RUN git clone https://github.com/kamir/rosbag-reader-java
#WORKDIR /ciw/rosbag-reader-java
#RUN mvn clean compile install -U

WORKDIR /ciw
RUN git clone https://github.com/kamir/Hadoop.TS.NG
#WORKDIR /ciw/Hadoop.TS.NG
#RUN mvn clean compile install -U

#WORKDIR /ciw
#RUN git clone https://github.com/kamir/rosbag-extractor
#WORKDIR /ciw/rosbag-extractor
#RUN mvn clean compile install -U



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

