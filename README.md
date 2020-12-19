### build, push, deploy and test the resulting application

1. Create your Dockerfile for building your image
2. Build our static HTML image using the build command below.

   docker build -t <name> .
3. docker run -d -p 8080:8080 <name image>
4. docker tag <image-id> <namenewimage:v1>

### Push your image to the repository you created

docker push <namenewimage:v1>


### Use dockerhub to clone the repository to your local machine:

pull image : docker pull  drorvt/texel:v1

###  run docker with port 8080
docker run -d -p 8080:8080 drorvt/texel:v1

### run test script to verify status code and print time and date 
run "./script.sh "

or

run http://localhost:8080/ 



### Use git to clone the repository to your local machine:
git@github.com:drorvt/texel.git

###  Change to the app directory:

cd texel


### This YAML file is the instructions to Kubernetes for what you want running. It is telling Kubernetes the following:

### Use kubectl to send the YAML file to Kubernetes by running the following command:

kubectl apply -f nginx-deployment.yaml

### You can see the pods are running if you execute the following command:

kubectl get pods

### Create service and Deploy service

kubectl apply -f service.yaml (network application should listen on port 80)
kubectl get svc

### Use curl command to Issuing requests to the port 80
kubectl describe svc nginx-deployment







