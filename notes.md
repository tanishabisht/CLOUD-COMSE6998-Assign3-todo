## Deploying a Web Application on Kubernetes Using Docker

### Configurations
The application uses several Kubernetes configurations:
1. **kubernetes**: Basic Kubernetes setup.
2. **kubernetes-rolling**: Configuration for rolling updates.
3. **kubernetes-health**: Setup for health monitoring.
4. **kubernetes-alert**: Configuration for alerting mechanisms.

Slack webhook URL: [Slack Webhook](https://hooks.slack.com/services/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)

### Key Points
- **Pods**: Handle specific tasks within the application.
- **Deployments**: Ensure the correct number of pods are running for each task. Tasks are defined here, and pods are created accordingly.
- **Services**: Manage requests from the frontend, routing them to the appropriate pods, often using load balancing.

### Flow
In a Kubernetes cluster:
- The frontend sends a request to a Service.
- The Service directs the request to one of the Pods based on load balancing rules.

### Rolling Update Strategy
1. The cluster runs your application on several pods using the current version.
2. When a new version of the application is ready, you deploy it gradually.
3. Start by updating one pod to the new version.
4. This pod serves the new version while others continue with the old version.
5. Kubernetes monitors the new pod for any issues.
6. If the new version is stable, continue updating more pods one at a time.
7. Kubernetes slowly replaces all old-version pods with new-version ones.
8. The update ensures that the application remains available without downtime.

### Health Monitoring
Kubernetes ensures your application is healthy and ready to handle requests through:
1. **LivenessProbe**: Checks if the application is alive and functioning.
2. **ReadinessProbe**: Ensures the application is ready to receive traffic.

**Setting up health checks**:
- Add two endpoints to your application: `/health` and `/live`.
- These endpoints should return a status code of 200 if the application is healthy.