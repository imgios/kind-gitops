# One small step on GitOps 🚀

This repository has been created to get started with [Flux](https://fluxcd.io/) and GitOps. [`whaley`](https://github.com/imgios/whaley) has been used to spin up a 3-nodes Kubernetes cluster using docker containers as nodes.

###### Structure
```shell
📁 lab-ops/        # Repository root directory
├─ 📄 ansible/     # Ansible Playbooks to manage the infrastructure
└─ ☸️ clusters/    # Kubernetes clusters defined as code
```

> **Note**
>
> GitOps is a way of implementing Continuous Deployment for cloud-native applications. It focuses on a developer-centric experience when operating infrastructure using tools developers are already familiar with, including Git and Continuous Deployment tools.
>
> The core idea of GitOps is having a Git repository that always contains declarative descriptions of the infrastructure currently desired in the production environment and an automated process to make the production environment match the described state in the repository. If you want to deploy a new application or update an existing one, you only need to update the repository - the automated process handles everything else. It’s like having cruise control for managing your applications in production.
>
> — [GitOps.tech](https://gitops.tech)
