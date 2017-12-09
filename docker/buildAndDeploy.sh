docker build -t kamir/cdsw-base-3-with-maven-fiji-gnuplot . 



export T=$(date +%I_%M_%S)
echo "current time is: ".$T



docker image ls

docker run -it -d --name container_$T kamir/cdsw-base-3-with-maven-fiji-gnuplot

docker container ls

read -p "Container-ID to connect to : " C_ID

echo $C_ID 

docker exec -i -t $C_ID /bin/bash

docker container stop $C_ID



