
gcloud run deploy gsoc2-ai-1-0-0 \
	--region=europe-west2 \
	--max-instances=3 \
	--set-env-vars=GSOC2_APP_EXPOSED_PORT=8080,GSOC2_SWARM_CONFIG=run,GSOC2_LOGS_DISABLED=true --source=./  \
	--timeout=1800s
