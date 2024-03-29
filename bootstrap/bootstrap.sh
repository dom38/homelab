#!/bin/bash

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -f argocd-resources/templates/core-project.yaml -n argocd
kubectl apply -f argocd-resources/templates/core-application.yaml -n argocd
kubectl apply -f argocd-resources/templates/hostpath.yaml
