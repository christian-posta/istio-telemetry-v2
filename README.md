kind create cluster

istioctl install -y

cd ./sample-apps/

./setup.sh

cd ../

port-forward in a diff window
kubectl -n istio-system port-forward deploy/istio-ingressgateway 8080

check metrics:
kubectl exec -it -n istioinaction deploy/recommendation -c istio-proxy -- curl localhost:15000/stats/prometheus | grep istio_requests_total