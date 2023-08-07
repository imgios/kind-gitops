# lab-ops

*One small step on GitOps 🏗️*

This repository has been created to get started with [Flux](https://fluxcd.io/) and GitOps. [`whaley`](https://github.com/imgios/whaley) has been used to spin up a 3-nodes Kubernetes cluster using docker containers as nodes, and Ansible playbooks are used to define the infrastructure as code.

> ###### Read about GitOps on [GitOps.tech](https://gitops.tech) 🚀

#### 🗃️ Structure
```shell
📁 lab-ops/        # Repository root directory
├─ 📄 ansible/     # Ansible Playbooks to manage the infrastructure
├─ 📦 apps/        # Application (to be) deployed in the cluster
└─ ☸️ clusters/    # Kubernetes clusters defined as code
```

#### 🔧 Nodes

| Node | Role | Technology |
|------|------|------------|
| `lab-ops` | Jumphost | Container |
| `whaley-control-plane` | Control Plane | Container |
| `whaley-worker-1` | Worker | Container |
| `whaley-worker-2` | Worker | Container |
