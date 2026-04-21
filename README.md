# Production Grade Cloud-Native DevOps Platform

## Project Overview

This project demonstrates a production-style DevOps platform using AWS, Docker, Kubernetes, GitHub Actions, ArgoCD, Prometheus, Grafana, and CloudWatch.

The application was containerized, pushed to Amazon ECR, deployed to Kubernetes, monitored using Prometheus and Grafana, and managed through GitOps using ArgoCD.

---

## Architecture

GitHub Repository → GitHub Actions → Docker Build → Trivy Scan → Amazon ECR → ArgoCD → Kubernetes / Minikube → Prometheus + Grafana + CloudWatch

---

## AWS Services Used

* EC2
* VPC
* Subnets
* Security Groups
* IAM
* ECR
* CloudWatch

---

## Tools and Technologies Used

* Terraform
* Docker
* Kubernetes
* Minikube
* GitHub Actions
* ArgoCD
* Prometheus
* Grafana
* Trivy
* Python Flask
* Git

---

## Key Features

* Infrastructure provisioning using Terraform
* Docker image build and push to Amazon ECR
* Kubernetes deployment with multiple replicas
* Separate production and staging namespaces
* Kubernetes readiness and liveness probes
* Horizontal Pod Autoscaler (HPA)
* Kubernetes RBAC
* GitHub Actions CI/CD pipeline
* Trivy vulnerability scanning
* GitOps deployment using ArgoCD
* Prometheus and Grafana monitoring
* CloudWatch CPU alarm for EC2
* Rollback demonstration using ArgoCD

---

## CI/CD Workflow

1. Developer pushes code to GitHub
2. GitHub Actions starts automatically
3. Docker image is built
4. Trivy scans image for vulnerabilities
5. Docker image is pushed to Amazon ECR
6. ArgoCD detects manifest changes from GitHub
7. Kubernetes automatically syncs deployment

---

## Kubernetes Components Used

* Namespace
* Deployment
* Service
* Horizontal Pod Autoscaler
* Service Account
* Role
* RoleBinding
* Readiness Probe
* Liveness Probe
* Resource Requests and Limits

---

## Monitoring Stack

* Prometheus for metrics collection
* Grafana for dashboards and visualization
* CloudWatch for EC2 CPU alarms
* Node Exporter for system-level metrics

---

## Folder Structure

```text
production-grade-devops-platform/
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│   ├── Dockerfile
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│
├── kubernetes/
│   ├── namespace.yaml
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── hpa.yaml
│   ├── rbac.yaml
│   ├── staging-deployment.yaml
│   ├── staging-service.yaml
│
├── argocd/
│   ├── app.yaml
│
├── .github/
│   ├── workflows/
│   │   ├── ci-cd.yaml
│
├── ss/
│   ├── terraform-output.png
│   ├── kubernetes-pods.png
│   ├── grafana-dashboard.png
│   ├── argocd-dashboard.png
│   ├── github-actions.png
│   ├── trivy-scan.png
│   ├── cloudwatch-alarm.png
│
└── README.md
```

---

## Deployment Steps

1. Provision AWS infrastructure using Terraform
2. Build Docker image
3. Push image to Amazon ECR
4. Deploy application to Kubernetes
5. Configure HPA, RBAC, and probes
6. Install Prometheus and Grafana
7. Install ArgoCD
8. Connect GitHub repository with ArgoCD
9. Configure GitHub Actions CI/CD
10. Configure Trivy scanning
11. Configure CloudWatch alarms

---

## Screenshots

All screenshots are available inside the `ss` folder.

Screenshots include:

* Terraform apply output
* Kubernetes pods and services
* HPA output
* RBAC output
* Grafana dashboard
* Prometheus targets
* ArgoCD synced application
* GitHub Actions pipeline
* Trivy scan
* CloudWatch alarm
* ECR repository
* Staging namespace resources

---

## Future Improvements

* Deploy on Amazon EKS instead of Minikube
* Add Ingress Controller and HTTPS
* Add Slack notifications
* Add SonarQube code scanning
* Add Helm charts
* Add Persistent Volumes for Grafana
* Add Multi-stage Docker builds

---

## Cost Optimization

* Used Minikube instead of EKS to reduce cost
* Used t2.micro / t3.micro EC2 instances
* Destroyed Terraform resources after project completion
* Stopped Minikube after testing

---

## Resume Highlights

* Designed and provisioned AWS infrastructure using Terraform
* Built CI/CD pipelines using GitHub Actions
* Deployed applications on Kubernetes with GitOps using ArgoCD
* Configured Prometheus, Grafana, and CloudWatch monitoring
* Implemented HPA, RBAC, Trivy scanning, and namespace isolation
* Demonstrated rollback using ArgoCD and Git-based deployments
