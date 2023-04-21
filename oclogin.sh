#!/bin/bash
KUBEPW=`cat /root/.kcli/clusters/${1}/auth/kubeadmin-password`
export KUBECONFIG="/root/.kcli/clusters/${1}/auth/kubeconfig"
oc login -u kubeadmin -p $KUBEPW
