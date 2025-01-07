#!/bin/bash

# Install AWS CLI
echo "Installing AWS CLI"
pip install awscli

# Configure AWS credentials
echo "Configuring AWS CLI"
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set region $AWS_REGION

# Initialize Terraform
echo "Initializing Terraform"
terraform init

# Validate Terraform configuration
echo "Validating Terraform"
terraform validate

# Generate Terraform plan
echo "Running Terraform Plan"
terraform plan -out=tfplan

# Apply Terraform plan
echo "Applying Terraform"
terraform apply -auto-approve tfplan

# Final message
echo "Deployment complete!"
