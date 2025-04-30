# Antora build image

docker build -t antora-saladin:latest -f Dockerfile .


$ docker run -v $PWD:/antora:Z --rm -it antora-saladin:latest sh