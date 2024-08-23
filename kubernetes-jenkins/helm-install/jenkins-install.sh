#!/usr/bin/env bash
jkopt1="--sessionTimeout=1440"
jkopt2="--sessionEviction=86400"
jvopt1="-Duser.timezone=Asia/Seoul"
#jvopt2="-Dcasc.jenkins.config=jenkins-config.yaml"
#jvopt3="-Dhudson.model.DownloadService.noSignatureCheck=true"

helm install jenkins -f jenkins-config.yaml jenkinsci/jenkins \
--set persistence.storageClass=jenkins-pv \
--set controller.admin.password=admin \
--set controller.nodeSelector."kubernetes\.io/hostname"=cp-k8s \
--set controller.tolerations[0].key=node-role.kubernetes.io/control-plane \
--set controller.tolerations[0].effect=NoSchedule \
--set controller.tolerations[0].operator=Exists \
--set controller.runAsUser=1000 \
--set controller.runAsGroup=1000 \
--set controller.serviceType=LoadBalancer \
--set controller.servicePort=80 \
--set controller.jenkinsOpts="$jkopt1 $jkopt2" \
--set controller.javaOpts="$jvopt1" 

