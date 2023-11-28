# To Do App

## KEYPOINTS
Pods - Responsible for specific tasks
Deployments - Ensures right number of pods are there for the task; task is defined here as well and pods are created.
Services - sends request from the frontend to one of the pods based on predefined set of rules (often load balancing)

## FLOW
In a Kubernetes cluster:
- The frontend sends a request to the Service.
- The Service, routes or forwards the request to one of the available Pods based on a predefined set of rules (often load balancing)

Rolling Update Strategy