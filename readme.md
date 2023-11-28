# To Do App

## KEYPOINTS
Pods - Responsible for specific tasks
Deployments - Ensures right number of pods are there for the task; task is defined here as well and pods are created.
Services - sends request from the frontend to one of the pods based on predefined set of rules (often load balancing)

## FLOW
In a Kubernetes cluster:
- The frontend sends a request to the Service.
- The Service, routes or forwards the request to one of the available Pods based on a predefined set of rules (often load balancing)

## Rolling Update Strategy
1. Your Kubernetes cluster is currently running pods that serve your application using the old version. Each pod is an instance of your application.
2. You've developed a new version of your application that you want to deploy.
3. Instead of stopping all your pods and deploying the new version at once, you want to make a smooth transition.
4. You start by deploying the new version of your application to one pod in your cluster.
5. The new-version pod starts serving the updated application, while the other pods in the cluster continue serving the old version.
6. Kubernetes monitors the behavior of the new-version pod. If there are any issues or failures, Kubernetes can take corrective actions, like restarting the pod or rolling back the update.
7. Once you're confident that the new version works well, you proceed to deploy additional pods with the new version. This happens one pod at a time, ensuring a controlled transition.
8. Kubernetes continues this process, gradually replacing old-version pods with new-version pods, one at a time.
Monitoring Application Health:
9. Throughout the update, Kubernetes monitors the health of both old and new version pods. If the new version pods exhibit any problems, Kubernetes can take actions to maintain the overall health of the application.
10. Eventually, all pods in your application are running the new version, and the rolling update is considered complete.


## HEALTH MONITORING
In Kubernetes, when you run your application, you want to make sure it stays healthy and ready to handle requests.
There are two types of health checks, or probes, that you can set up for your application:

1. LivenessProbe: it checks if your application is running and healthy. (check if you have pulse)
2. ReadinessProbe: it checks if your application is ready to receive requests or traffic. (if you're ready to tackle your tasks for the day)

**How to make the health checks work:** add two new endpoints, /health and /live, to your application
When Kubernetes visits (or probes or checks) these endpoints, your application should respond with a status code of 200, signaling that everything is okay