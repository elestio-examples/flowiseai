sed -i 's/yarn install/yarn install --network-timeout 100000/g' ./Dockerfile
docker buildx build . --output type=docker,name=elestio4test/flowiseai:latest | docker load
