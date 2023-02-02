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
  kubectl scale deployment echo --replicas=14
  sleep 10
  kubectl scale deployment echo --replicas=11
  sleep 10
  kubectl scale deployment echo --replicas=12
  sleep 10
  kubectl scale deployment echo --replicas=8
  sleep 10
  kubectl scale deployment echo --replicas=14
  sleep 10
  x=$(( $x + 1 ))
done

echo " ****************   Completed Test **************** "

