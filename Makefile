# Makefile to speed up some init operations

.PHONY: pull
pull: # Pull the whaley docker image from GHCR
	docker pull ghcr.io/imgios/whaley:latest
  
.PHONY: cluster-up
cluster-up: pull # Spin up the 3-node Kubernetes Cluster using whaley
	docker run --rm -p 30303:8001 -v /var/run/docker.sock:/var/run/docker.sock -it ghcr.io/imgios/whaley:latest
