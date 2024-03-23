# Welcome App

## Introduction
This is a test app to connect to a web server hosted on the public cloud to print a sample text output.\
URL: http://welcome.southindia.cloudapp.azure.com

## Source Code
- [Python](https://www.python.org/doc/)

The main source is written in python and leverages the [Flask](https://flask.palletsprojects.com/en/3.0.x/) web app technology.

## Packaging
- [Docker](https://docs.docker.com/)

This app is published as a docker container.

## Orchestration
- [Kubernetes](https://kubernetes.io/docs/home/) ([Azure Kubernetes Service](https://azure.microsoft.com/en-in/products/kubernetes-service))

The docker container is deployed on Kubernetes.

## Infrastructure as Code
- Hashicorp [Terraform](https://developer.hashicorp.com/terraform/docs)
- Relevant Terraform [Providers](https://registry.terraform.io/browse/providers)

The backend infrastructure is build in the public cloud on Azure with the following components:
- Resource Group
- Virtual Network (VNet)
- Network Subnet
- Azure Kubernetes Service (AKS) cluster
- Static Public IP address with DNS prefix

## CI/CD
- GitHub Actions

Automated deployment using Github Actions workflow to build infrastructure, build and push docker image, deploy application to AKS cluster.