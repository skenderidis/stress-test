echo "Deploying 80 ingress resrouces"

kubectl apply -f ingress-plus-80.yml
sleep 15
echo "Completed deploying ingress resources"
sleep 1
echo " ****************   Starting Test **************** "
# 5 times
x=1
while [ $x -le 5 ]
do
  kubectl scale deployment myapp-1 --replicas=14
  kubectl scale deployment myapp-2 --replicas=14
  kubectl scale deployment myapp-3 --replicas=14
  sleep 30
  kubectl scale deployment myapp-1 --replicas=11
  kubectl scale deployment myapp-2 --replicas=11
  kubectl scale deployment myapp-3 --replicas=11
  sleep 30
  kubectl scale deployment myapp-1 --replicas=12
  kubectl scale deployment myapp-2 --replicas=12
  kubectl scale deployment myapp-3 --replicas=12
  sleep 30
  kubectl scale deployment myapp-1 --replicas=8
  kubectl scale deployment myapp-2 --replicas=8
  kubectl scale deployment myapp-3 --replicas=8
  sleep 30
  kubectl scale deployment myapp-1 --replicas=14
  kubectl scale deployment myapp-2 --replicas=14
  kubectl scale deployment myapp-3 --replicas=14
  sleep 30
  x=$(( $x + 1 ))
done

echo " ****************   Completed Test **************** "

