# **2048 Game Deployment on Kubernetes**

## **Overview**
This project deploys an interactive **2048 game** on a Kubernetes cluster with a fully automated CI/CD pipeline. The setup includes a **blue-green deployment strategy** for high availability and fault tolerance, leveraging AWS services such as **CodeBuild**, **CodePipeline**, **EKS**, and **Route 53**.

---

## **Features**
- Interactive 2048 game with a user-friendly interface.
- Automated deployment using Kubernetes and AWS CI/CD tools.
- **Blue-green deployment** for seamless updates with zero downtime.
- Auto-scaling to handle increased user traffic.
- Integrated monitoring and logging for real-time insights.

---

## **Architecture**
- **Kubernetes Cluster**: Orchestrates the containerized game application.
- **AWS CodePipeline**: Automates the build, test, and deployment process.
- **Docker**: Packages the application into a lightweight, portable container.
- **Route 53**: Manages domain name routing for the game.
- **CloudWatch/Prometheus**: Provides monitoring and logging.

---


