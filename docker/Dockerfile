# Dockerfile
FROM docker.repository.cloudera.com/cdsw/engine:4

MAINTAINER Mirko Kämpf "mirko@cloudera.com"

# update packages and install maven
RUN apt-get update && \
    apt-get install -y -q graphviz gnuplot maven mc git default-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
    pip install graphviz

RUN mkdir /ciw
RUN mkdir /ciw/external
RUN mkdir /ciw/libs



#
# Install Hadoop.TS.NG Library
#
COPY hadoop-ts-ng-2.5.0.jar /ciw/libs/hadoop-ts-ng-2.5.0.jar
COPY hadoop-ts-ng-2.5.0-jar-with-dependencies.jar /ciw/libs/hadoop-ts-ng-2.5.0-jar-with-dependencies.jar

RUN mvn install:install-file -Dfile=/ciw/libs/hadoop-ts-ng-2.5.0.jar -DgroupId=com.cloudera -DartifactId=hadoop-ts-ng -Dversion=2.5.0 -Dpackaging=jar -DskipTests



WORKDIR /ciw/external
RUN git clone https://github.com/kamir/rosbag-reader-java
WORKDIR /ciw/external/rosbag-reader-java
RUN mvn clean compile install -U

WORKDIR /ciw/external
RUN git clone https://github.com/kamir/rosbag-extractor
#WORKDIR /ciw/external/rosbag-extractor
#RUN mvn clean compile install -U

#
# ImageJ
#
# https://imagej.nih.gov/ij/download.html
#
RUN mkdir /ciw/libs
WORKDIR /ciw/libs
RUN curl -O http://wsr.imagej.net/distros/linux/ij150-linux64-java8.zip && \
    unzip ij150-linux64-java8.zip && \
    rm ij150-linux64-java8.zip
