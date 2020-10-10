# ta_infra

for prometheus minikube solution:
minikube ssh
sudo chmod 777 /mnt/data/prom

ssh into pod:
kubectl.exe exec --tty --stdin nginx-76fcfdb45d-275j6  -- sh