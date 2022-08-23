#!/usr/bin/env bash

git clone git@github.com:udacity/nd082-Azure-Cloud-DevOps-Starter-Code.git
cd nd082-Azure-Cloud-DevOps-Starter-Code/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn
make setup
source ~/.udacity-devops/bin/activate
make all
az webapp up -n flaskapp242 --sku F1 --resource-group Azuredevops --runtime "PYTHON:3.7"
