

helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo update

helm install my-release bitnami/postgresql-ha

RELEASE_NAME="hapostgres"
RELEASE_NAMESPACE="${RELEASE_NAME}"
helm install ${RELEASE_NAME} bitnami/postgresql-ha --create-namespace --namespace=${RELEASE_NAMESPACE}
