# Need to set kubectl create secret generic inlets-access-key --from-literal inlets-access-key=$LINODE_API_KEY
#
# Add and update the inlets-operator helm repo
helm repo add inlets https://inlets.github.io/inlets-operator/

helm repo update

# Install inlets-operator with the required fields
helm upgrade inlets-operator --install -n kube-system inlets/inlets-operator \
  --set provider=linode \
  --set region=us-west
