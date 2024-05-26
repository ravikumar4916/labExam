#!/bin/bash

docker build -t my-app .
docker tag my-app:latest <your-docker-hub-username>/my-app:latest
docker push <your-docker-hub-username>/my-app:latest
