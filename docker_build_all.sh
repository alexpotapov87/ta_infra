for i in jenkins nginx kubernetes/prometheus; do cd src/$i; bash
docker_build.sh; cd -; done