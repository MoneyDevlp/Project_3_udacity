kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml

kubectl expose deployment reverseproxy-deployment --type=LoadBalancer --name=publicreverseproxy --port=8080
kubectl expose deployment frontend-deployment --type=LoadBalancer --name=publicfrontend

kubectl get deployment
kubectl get services
kubectl get pods