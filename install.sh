# get helm and faas-cli
brew install helm
brew install faas-cli

# make namespaces
kubectl apply -f https://raw.githubusercontent.com/openfaas/faas-netes/master/namespaces.yml

# add openfaas helm repo
helm repo add openfaas https://openfaas.github.io/faas-netes/

# deploy openfaas
helm repo update \
 && helm upgrade openfaas --install openfaas/openfaas \
    --namespace openfaas  \
    --set functionNamespace=openfaas-fn \
    --set generateBasicAuth=true