AKS Infrastructure Automation using Terraform & Azure DevOps

I automated Azure infrastructure deployment using Terraform and Azure DevOps. 
I created reusable modules for resource group, networking, and AKS.
I implemented a CI/CD pipeline with init, plan, and apply stages.

________________________________________
🚀 Project Overview
This project demonstrates end-to-end infrastructure automation by deploying an Azure Kubernetes Service (AKS) cluster using:
•	Terraform (Infrastructure as Code) 
•	Azure DevOps (CI/CD Pipeline) 
•	Azure Storage (Remote Backend) 
________________________________________
🏗️ Architecture
Developer → GitHub → Azure DevOps Pipeline → Terraform → Azure (RG → VNet → AKS)

________________________________________
🔐 Service Principal
Created using:
az ad sp create-for-rbac \
  --name "pipe123" \
  --role Contributor \
  --scopes /subscriptions/<subscription-id>
________________________________________
🔗 Service Connection
•	Name: pipeconnection 
•	Type: Azure Resource Manager 
•	Authentication: Service Principal 
________________________________________
🔁 Pipeline Stages
🔹 Init
•	Initializes Terraform backend 
•	Uses -reconfigure 
🔹 Plan
•	Generates execution plan 
•	Uses terraform.tfvars 
🔹 Apply
•	Deploys infrastructure 
•	Runs only on main branch 
________________________________________
🧾 Key Pipeline Concepts
Each stage runs on a new agent
→ Terraform must be initialized in every stage
________________________________________

🎯 Final Outcome
✔ Fully automated AKS deployment
✔ CI/CD pipeline working
✔ Terraform modular architecture
✔ Real-world troubleshooting experience

________________________________________
🏁 Conclusion
This project demonstrates:
Code → Pipeline → Terraform → Azure Infrastructure
👉 A complete real-world DevOps workflow
________________________________________
 
 <img width="488" height="828" alt="image" src="https://github.com/user-attachments/assets/7945e448-56de-47d5-9790-f209b28d1026" />
<img width="667" height="529" alt="image" src="https://github.com/user-attachments/assets/e954bc43-4b13-433a-82c0-5596acc7ed6e" />
<img width="488" height="828" alt="image" src="https://github.com/user-attachments/assets/b0d2ec32-90a9-4b49-9075-20742b117aab" />
<img width="940" height="394" alt="image" src="https://github.com/user-attachments/assets/e7463383-2627-412a-9048-03efb08be4b6" />


