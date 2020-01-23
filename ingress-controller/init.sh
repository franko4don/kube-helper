helm install stable/nginx-ingress --name nginx-ingress --set controller.publishService.enabled=true

kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.11/deploy/manifests/00-crds.yaml
kubectl create namespace cert-manager

helm repo add jetstack https://charts.jetstack.io

helm install --name cert-manager --version v0.11.0 --namespace cert-manager jetstack/cert-manager