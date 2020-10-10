
export HASH='git show --format="%h" HEAD | head -1'
for i in jenkins nginx prometheus; do cd src/$i; bash
docker_build.sh; cd -; done