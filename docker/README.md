# cdsw-engine-custom-02
This folder contains the docker file to build your custom docker image
with ImageJ which is used by the Cloudera blog post ... (under construction).


## We use the following maven coordinates in our spark session:

<!-- https://mvnrepository.com/artifact/net.imagej/ij -->
<dependency>
    <groupId>net.imagej</groupId>
    <artifactId>ij</artifactId>
    <version>1.51s</version>
</dependency>


--packages "net.imagej:ij:1.51s"