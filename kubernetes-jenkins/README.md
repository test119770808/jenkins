# jenkins
## k8s jenkins 설치 운영...

사전 작업에 LoadBalancer를 사용하지 않으면 NodePort를 사용해서 서비스를 구동.
있다면 서비스 타입을 LoadBalancer로 작업 진행(metallb 운영시... )

젠킨스를 사용하여 컨테이터를 사용한 배포를 하기 위해서는 사설 registry를 구성할 필요가 있음.
 - docker-registry
 - habor 등을 이용하여 구축

이 후에 필요에 따라서 containerd 혹은 docker에 사설 registry에 접속할 수 있게 인증서 문제를 해결해야 함. 

참조 blog
 https://medium.com/@ruth.kurniawati/work-around-for-imagepullbackoff-due-to-a-tls-certificate-error-in-a-kind-kubernetes-cluster-ecd2012dbf55

 https://paraspatidar.medium.com/add-self-signed-or-ca-root-certificate-in-kubernetes-pod-ca-root-certificate-store-cb7863cb3f87

 https://blog.thecloudside.com/docker-in-docker-with-jenkins-pod-on-kubernetes-f2b9877936f2

 containerd 사용법
 https://labs.iximiuz.com/courses/containerd-cli/ctr/image-management#advanced

 docker harbor 설치
 https://m.post.naver.com/viewer/postView.naver?volumeNo=35878696&memberNo=5733062&searchKeyword=json&searchRank=339

 https://ikcoo.tistory.com/230

 https://kdeon.tistory.com/52

 docker pipeline 배포 jenkins 참조
 https://velog.io/@imsooyeon/Jenkins-pipeline%EC%9D%84-%EA%B5%AC%EC%B6%95%ED%95%98%EC%97%AC-Docker-build-%EB%B0%8F-%EC%9D%B4%EB%AF%B8%EC%A7%80-push-%ED%95%98%EA%B8%B0

---
### 1. 기본 설치(default-install)
namespace를 devops-tools로 설정해서 작업 진행.. 
필요시에 default namespace를 사용할 수 있음.

### 2. helm 설치
설정에서는 namespace를 default로 작업하지만... jenkins 사이트에서는 jenkins를 namespace로 사용함.

https://helm.sh/docs/intro/install/



