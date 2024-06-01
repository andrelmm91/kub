minikube start
minikube start --drive
minikube dashboard

<!-- creating pods and deployment -->

kubectl create deployment DEPLOYMENT_NAME --image=REPOSITORY/IMAGE_NAME:TAG (such as docker hub)

<!-- creating and exposing the port -->

kubectl expose deployment DEPLOYMENT_NAMEE --type=LoadBalancer --port=8080
minikube service DEPLOYMENT_NAME

<!-- kubectl get -->

kubectl get deployment
kubectl get pods
kubectl get services

kubectl delete deployment DEPLOYMENT_NAME
kubectl delete service SERVICE_NAME

<!-- scalig up or down the pods -->

kubectl scale deployment/DEPLOYMENT_NAME --replicas=3

<!-- deploying -->

docker buiild -t DOCKER_HUB_REPO/IMAGE_NAME:TAG .
or --- docker tag NAME DOCKER_HUB_REPO/IMAGE_NAME:TAG
docker push DOCKER_HUB_REPO/IMAGE_NAME:TAG
kubectl create deployment DEPLOYMENT_NAME --image=DOCKER_HUB_REPO/IMAGE_NAME:TAG (such as docker hub)

<!-- redeploying -->

docker buiild -t DOCKER_HUB_REPO/IMAGE_NAME:TAG .
docker push DOCKER_HUB_REPO/IMAGE_NAME:TAG
kubectl set image deployment/DEPLOYMENT_NAME DOCKER_HUB_REPO/IMAGE_NAME(Current):TAG=DOCKER_HUB_REPO/IMAGE_NAME:TAG(New)

<!-- checking if it was deployed successfully -->

kubectl rollout status deployment/first-app-kube

<!-- Rollback the latest deployment, kubernetes will not stop the older pods until the new one is running -->

kubectl rollout undo deployment/first-app-kube
or
kubectl rollout history deployment/first-app-kube
kubectl rollout history deployment/first-app-kube --revision=X
kubectl rollout undo deployment/first-app-kube --to-revision=X

<!-- example -->

$ kubectl apply -f https://k8s.io/examples/application/deployment.yaml
$ kubectl get pods
$ kubectl expose deployment nginx-deployment --type=LoadBalancer --name=nginx-test-service
$ kubectl get service nginx-test-service

<!-- deploying with template -->

kubectl apply -f="deployment.yaml"
kubectl apply -f="service.yaml"

<!-- restarting pods -->

kubectl scale deployment story-deployment --replicas=0
kubectl scale deployment story-deployment --replicas=1

<!-- get volumes -->

kubectl get pv
kubectl get pvc
