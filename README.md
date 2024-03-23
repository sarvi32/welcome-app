# Welcome App

## Introduction
This is a test app to connect to a web server hosted on the public cloud to print a sample text output.
URL: http://welcome.southindia.cloudapp.azure.com

## Source Code
- Python
The main source is written in python and leverages the [Flask](https://flask.palletsprojects.com/en/3.0.x/) web app technology.

## Packaging
- Docker
This app is published as a docker container.

## Orchestration
- Kubernetes (Azure Kubernetes Service)
The docker container is deployed on Kubernetes.

## Infrastructure as Code
- Hashicorp Terraform (Cloud)
The backend infrastructure is build in the public cloud on Azure with the following components:
- Resource Group
- Virtual Network (VNet)
- Network Subnet
- Azure Kubernetes Service (AKS) cluster
- Static Public IP address with DNS prefix