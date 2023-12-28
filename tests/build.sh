#sed -i 's/yarn install/yarn install --network-timeout 100000/g' ./Dockerfile
#docker buildx build . --output type=docker,name=elestio4test/flowiseai:latest | docker load
#!/usr/bin/env bash
rm -f Dockerfile
cp ./docker/Dockerfile ./
sed -i 's/CMD "flowise"/CMD "sleep 3; flowise start"/' Dockerfile
docker buildx build . --output type=docker,name=elestio4test/flowiseai:latest | docker load