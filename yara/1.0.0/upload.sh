# Download it
#docker pull gsoc2/gsoc2:yara_1.0.0

# NGROK TESTING:
# ./ngrok http 33340
# Set reference_url to https://url.ngrok.io/api/v1/run

## Starts Yara in swarm mode
#docker run \
#	-p "33340:33340" \
#	-e "GSOC2_APP_EXPOSED_PORT=33340" \
#	-e "GSOC2_SWARM_CONFIG=run" \
#	-e "GSOC2_LOGS_DISABLED=true" \
#	gsoc2/gsoc2:yara_1.0.0


## PS: This is all for testing for how to run it in Containers, and systems like Cloud Run
#europe-west2-docker.pkg.dev/gsoc2r/cloud-run-source-deploy/yara
#docker tag gsoc2/gsoc2:yara_1.0.0 gcr.io/gsoc2/yara-1.0.0
#docker push gcr.io/gsoc2/yara-1.0.0

# https://console.cloud.google.com/run/detail/europe-west2/yara/metrics
# gcloud run deploy --region=europe-west2 --max-instances=1 --set-env-vars=GSOC2_APP_EXPOSED_PORT=8080,GSOC2_SWARM_CONFIG=run,GSOC2_LOGS_DISABLED=true --image=europe-west2-docker.pkg.dev/gsoc2r/cloud-run-source-deploy/yara

gcloud run deploy yara \
	--region=europe-west2 \
	--max-instances=1 \
	--set-env-vars=GSOC2_APP_EXPOSED_PORT=8080,GSOC2_SWARM_CONFIG=run,GSOC2_LOGS_DISABLED=true --source=./  \
	--timeout=1800s

# With image
## gcloud run deploy --region=europe-west2 --max-instances=1 --set-env-vars=GSOC2_APP_EXPOSED_PORT=8080,GSOC2_SWARM_CONFIG=run,GSOC2_LOGS_DISABLED=true --image=europe-west2-docker.pkg.dev/gsoc2r/cloud-run-source-deploy/yara
