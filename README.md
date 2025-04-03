# Exercise 1: Automating Blob Storage Uploads with GitHub Actions
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