. ../registry 
. repo

echo "Push to ${REGISTRY}/${REPO}:${TAG}"

docker tag ${REPO}:${TAG} ${REGISTRY}/${REPO}:${TAG}
docker push ${REGISTRY}/${REPO}:${TAG}


