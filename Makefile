# Makefile to speed up some init operations

.PHONY: pull
pull: # Pull the whaley docker image from GHCR
	docker pull ghcr.io/imgios/whaley:latest
  
.PHONY: cluster-up
cluster-up: pull # Spin up the 3-node Kubernetes Cluster using whaley
	docker run -d --name k8s-local-dev --rm -p 30303:8001 -v /var/run/docker.sock:/var/run/docker.sock -it ghcr.io/imgios/whaley:latest

.PHONY: cluster-down
cluster-down: # Tear down the K8s cluster
	docker exec -d k8s-local-dev kind delete cluster --name whaley
	docker rm -f k8s-local-dev
