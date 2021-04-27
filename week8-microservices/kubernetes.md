# Kubernetes

Kubernetes is an open source container orchestration engine for automating deployment, scaling, and management of containerized applications. The open source project is hosted by the Cloud Native Computing Foundation (CNCF).

- [Kubernetes Documentation](https://kubernetes.io/docs/home/)

For this example we will simply take the Docker container that we have already have pushed to DockerHub and we will deploy it to a kubernetes cluster.

Key terms:
- **Cluster**: a collection of worker machines called **nodes** that run containerized application.
- **Node**: a worker machine in kubernetes (either virtual or physical)
- **Pod**: The basic building block of Kubernetes. A pod consists of a set of running containers. Pods are responsible for running a container engine (like Docker) that can then run one or more container inside of the pod.
- **ReplicaSet**: Responsible for ensuring that a specific number of exact copies of a given pod are running. 
- **Deployment**: Allow you to define ReplicaSets and pods declaratively in a yaml file.
- **Control Plane**: container orchestration layer that exposes API and manages workers

![Image of a simple cluster](https://www.researchgate.net/profile/Carlos-Aderaldo-2/publication/334440422/figure/fig10/AS:779998034153473@1562977431618/Figura-36-Relacao-entre-Pod-Deployment-e-Service-no-Kubernetes-extraido-de-9.ppm)

![Another Cluster](https://miro.medium.com/max/700/1*LFMMBlUysm87TjdHlrlMTQ.jpeg)

## Quick Demo
### Set up cluster

There are many options that you can use to set up a Kubernetes cluster. Which one you would choose might depend of the type of OS you have or the cloud provider that you are used to using. Here are some options that you have (non-exhaustive list):

- [Documentation Recommendations](https://kubernetes.io/docs/setup/#learning-environment)
- [Google Kubernetes Engine(GKE)](https://cloud.google.com/kubernetes-engine/docs/quickstart)
- [AWS Elastic Kubernetes Service (EKS)](https://docs.aws.amazon.com/eks/latest/userguide/getting-started.html)
- [Minikube](https://v1-18.docs.kubernetes.io/docs/tasks/tools/install-minikube/)
- [Play with Kubernetes](https://labs.play-with-k8s.com/)

Once you have access to a cluster, go to the next section. 

### Deploy your container

Once you have your cluster set up, enter the following command in the cluster to make sure that you have Kubernetes installed properly:

>kubectl version

If it works go ahead and deploy your application. Spring also has [a guide](https://spring.io/guides/gs/spring-boot-kubernetes/) which can walk you through this process.

In general, it is best to do this declaratively with yaml files rather than imperatively with commands that directly set up the cluster. Here is an example of a configuration file that you can use to set up your application:

`deployment.yaml`

```yml
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: demo
  name: demo
spec:
  replicas: 1
  selector:
    matchLabels:
      app: demo
  template:
    metadata:
      labels:
        app: demo
    spec:
      containers:
      - image: crehm/spring-boot-app
        name: demo
---
apiVersion: v1
kind: Service
metadata:
  labels:
    app: demo
  name: demo
spec:
  ports:
  - name: 8085-8085
    port: 8085
    protocol: TCP
    targetPort: 8085
  selector:
    app: demo
  type: ClusterIP
```

The yaml file above specifies information about the container that will be running inside of a Kubernetes pod. In the second section it specifies a service (an abstraction of pods) that we use to map which port in the node is connected to which port in the container.

Now all we have to do is apply the configuration:
> kubectl apply -f deployment.yaml

Kubernetes will now pull the container from DockerHub, put it in a pod, and deploy it in the appropriate node(s).

You can check on the deployment and the service that were created using the following commands:

>kubectl get deployments

>kubectl get svc

In order to connect with the application, we need to expose the service:

>kubectl port-forward svc/demo 8085:8085

Now you can try using your browser to go to `localhost:8085` to view the deployed application

### 
Notice that you can view the running instances of your containers using:
>docker ps

try killing one of these instances using:
> docker stop [container]

check your instances again and you should see that one of them is down. Check again in a short while and you should see that kubernetes has spun one up again to adhere to the number of replicas that you specified in the yaml file.
