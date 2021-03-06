#!/bin/bash

minikube start -p knative --memory=8192 --cpus=5 \
  --kubernetes-version=v1.14.0 \
  --vm-driver=virtualbox \
  --disk-size=50g \
  --extra-config=apiserver.enable-admission-plugins="LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook"

minikube profile knative

minikube -p knative addons enable registry