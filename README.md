# Exercise 1: Running NGINX Server in a Docker Container
## Objective
Run an NGINX server in a Docker container locally, ensuring it runs in the background and can be accessed via localhost:8080.

## Resolution
- Simple Docker file created: my-app\Dockerfile
- Build the Docker image: docker build -t myapp . 
- Start a new container using the image: docker run -d -p 8080:80 --name my-nginx myapp

# Exercise 2: Automating Blob Storage Uploads with GitHub Actions
## Objective
Set up an Azure environment and create a GitHub Actions workflow to automatically upload files to an Azure Blob Storage container whenever code is pushed to the main branch.

## Prerequisites
Before starting, ensure that you have:
- An Azure Storage Account with a Blob Container.
- A Service Principal with the "Storage Blob Data Contributor" role assigned.
- The following GitHub Secrets configured:
- AZURE_CLIENT_ID
- AZURE_CLIENT_SECRET
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID
- AZURE_STORAGE_ACCOUNT
- AZURE_STORAGE_CONTAINER

## Task 1: Set Up Your Azure Environment
- Create an Azure Storage Account and a Blob Container.
- Create a Service Principal and assign it the "Storage Blob Data Contributor" role to access the storage account.
- Add the required credentials as GitHub Secrets in your repository settings.

## Task 2: Create the GitHub Actions Workflow
- Develop a GitHub Actions workflow that automates the upload process. Your workflow should:
- Trigger: Run on any push to the main branch.
- Checkout Code: Retrieve the repository contents.
- Authenticate to Azure: Use the GitHub Secrets to log in via the Azure CLI.
- Upload Files: Use the Azure CLI command to upload all files from the my-app folder to the Blob Container.

## Resolution
- Azure Storage Account created: mihaistorage100497
- Blob Container created: my-container
- Service Principal with "Storage Blob Data Contributor" role created: my-service-principal
- File that will be uploaded: my-app\Dockerfile
- GitHub Actions workflow created: .github\workflow\automate-blob-uploads.yml
- Note: The code section for push is commented out

# Exercise 3: Exercise: Modifying Blob Upload Workflow with GitHub Actions
## Objective
Modify the existing GitHub Actions workflow on Exercise 1 to:
- Rename the job to "Managing blob uploads".
- Replace the on push trigger with a workflow dispatch trigger.
- Add inputs as checkboxes for Upload or Delete, and update the workflow to upload or delete the file from Azure Blob Storage based on the selected action.

## Resolution
- File that will be uploaded / deleted: my-app\Dockerfile
- Updated GitHub Actions workflow created: .github\workflow\managing-blob-uploads.yml

# Exercise 4: Automating Azure Resource Creation with Terraform and GitHub Actions
## Objective
Terraform Setup:
- Use a backend
- Use an Azure provider configured with azurerm.
- Create a resource group.
- Create a storage account within the resource group.
- Create a blob container inside the storage account.
- Use outputs.tf to expose the URL of the created blob container.

GitHub Actions Setup:
- Trigger the workflow on a push to the main branch.
- The workflow must run the following steps: 
- terraform init: Initialize the Terraform configuration
- terraform plan: Generate an execution plan
- terraform apply: Apply the Terraform configuration (with manual approval in GitHub environments).
- After terraform apply, the following steps must be executed:
- Install Azure CLI.
- Authenticate to Azure using AZURE_CREDENTIALS (configured in GitHub secrets).
- Upload all files to the created blob container.

## Resolution
- Service Principal with "Storage Blob Data Contributor" role for Terraform created: terraform-service-principal
- Terraform setup files: terraform\main.tf, outputs.tf, variables.tf
- GitHub Actions workflow created: .github\workflow\deploy.yml
- File that will be uploaded: my-app\Dockerfile