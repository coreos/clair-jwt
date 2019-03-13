GIT_TAG=v2.0.8
REPO_NAME=quay.io/coreos/clair-jwt
SUBSCRIPTION_KEY=
centos7-build-env: centos7-build-env.Dockerfile
	echo "Building Clair build environment with tag: '${REPO_NAME}:${GIT_TAG}-centos7-build-env'"
	docker build -f centos7-build-env.Dockerfile -t ${REPO_NAME}:${GIT_TAG}-centos7-build-env . --build-arg GIT_TAG=${GIT_TAG}
centos7: centos7.Dockerfile 
	echo "Building CentOS based image with tag: '${REPO_NAME}:${GIT_TAG}-centos7'"
	docker build -f centos7.Dockerfile -t ${REPO_NAME}:${GIT_TAG}-centos7 . --build-arg GIT_TAG=${GIT_TAG}
alpine: alpine.Dockerfile
	echo "Building Alpine based image with tag: '${REPO_NAME}:${GIT_TAG}-alpine'"
	docker build -f alpine.Dockerfile -t ${REPO_NAME}:${GIT_TAG}-alpine . --build-arg GIT_TAG=${GIT_TAG}