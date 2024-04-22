# Terraform Skills Showcase with Google Cloud Platform (GCP)

## Overview

This repository showcases my Terraform skills for provisioning infrastructure on Google Cloud Platform (GCP). It includes configurations for creating a Virtual Private Cloud (VPC) network, deploying virtual machines (VMs), configuring backends, and managing Terraform dependencies.

## Terraform Configuration

### VPC Network Creation
- Configures a custom VPC network with specified CIDR range.
- Defines subnets within the VPC for different zones.

### VM Creation
- Provisions virtual machines (VMs) with predefined machine type, image, and disk settings.
- Configures network interfaces and firewall rules for each VM.

### Backend Configuration
- Configures backend settings to store Terraform state files remotely.
- Demonstrates usage of Google Cloud Storage (GCS) as a backend for state file storage.

### Terraform Dependencies
- Illustrates how to define dependencies between Terraform resources.
- Ensures proper resource creation order and management.

## Prerequisites

Before using this Terraform configuration, ensure you have:

- Terraform installed on your local machine.
- A Google Cloud Platform account with appropriate permissions.
- Google Cloud SDK installed and configured on your local machine.

## Getting Started

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-repo/terraform-gcp-example.git
    ```

2. Navigate to the project directory:

    ```bash
    cd terraform
    ```

3. Customize the Terraform configuration files as per your requirements.

4. Initialize Terraform:

    ```bash
    terraform init
    ```

5. Review the configuration and plan the deployment:

    ```bash
    terraform plan
    ```

6. Apply the Terraform configuration to create the infrastructure:

    ```bash
    terraform apply
    ```

7. After successful deployment, verify the created resources in the GCP Console.

## Customization

- **Resource Configuration**: Modify the Terraform configuration files (`*.tf`) to customize resource settings such as machine type, network configuration, etc.
- **Backend Configuration**: Adjust backend settings in `backend.tf` to use a different storage bucket or backend type.

## Cleanup

To avoid incurring charges, don't forget to destroy the resources once you no longer need them:

```bash
terraform destroy
