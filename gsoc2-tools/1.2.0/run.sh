# Build testing
NAME=gsoc2/gsoc2:gsoc2-tools_1.1.0
docker rmi $NAME --force
docker build . -t gsoc2/gsoc2:gsoc2-tools_1.1.0

# Run testing
#docker run -e GSOC2_SWARM_CONFIG=run -e GSOC2_APP_EXPOSED_PORT=33334 gsoc2/gsoc2:gsoc2-tools_1.1.0 
echo $NAME
#docker service create --env GSOC2_SWARM_CONFIG=run --env GSOC2_APP_EXPOSED_PORT=33334 $NAME 

#cat walkoff_app_sdk/app_base.py #cat walkoff_app_sdk/app_sdk.py
