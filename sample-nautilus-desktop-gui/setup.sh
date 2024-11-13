NAME=an-desktop # Change this to your initials
POD_NAME=an-carla # Change this to your initials
CACHE_NAME=an-carla-cache # Change this to your initials

if [ "$1" -eq 1 ]; then
    kubectl delete deployment $NAME
    kubectl delete service $NAME
    kubectl delete ingress $NAME
elif [ "$1" -eq 0 ]; then
    kubectl create -f storage.yml
    kubectl create -f cache.yml
    kubectl create -f desktop.yml
    kubectl create -f desktop-ingress.yml
elif [ "$1" -eq 2 ]; then
    kubectl delete deployment $NAME
    kubectl delete service $NAME
    kubectl delete ingress $NAME
    kubectl delete pvc --now $POD_NAME
    kubectl delete pvc --now $CACHE_NAME
else
    echo "Usage: $0 [1]"
    exit 1
fi