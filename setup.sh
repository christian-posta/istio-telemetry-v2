# Install Sample app
kubectl create ns istioinaction
kubectl label namespace istioinaction istio-injection=enabled --overwrite
kubectl apply -n istioinaction -f sample-apps/web-api.yaml
kubectl apply -n istioinaction -f sample-apps/recommendation.yaml
kubectl apply -n istioinaction -f sample-apps/purchase-history-v1.yaml

kubectl apply -n default -f sample-apps/sleep.yaml

# Install Istio resources
kubectl apply -n istioinaction -f sample-apps/web-api-gw.yaml
kubectl apply -n istioinaction -f sample-apps/web-api-gw-vs.yaml
