
# eks_cluster_terraform

## Install AWS CLI
Follow the instructions provided in the [AWS CLI documentation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) to install AWS CLI on your Linux system.

## Install Terraform
Follow the instructions provided in the [Terraform documentation](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install Terraform on your Linux system.

## Configure AWS CLI
After installing AWS CLI, open a terminal and run the following command:
```
aws configure
```
You'll be prompted to enter your AWS Access Key ID, Secret Access Key, default region, and output format (e.g., json). Provide the required information as per your AWS account setup.

## Execute Terraform Commands
Clone the GitHub repository using the following command:
```
git clone https://github.com/saurabhkav03/eks_cluster_terraform.git
cd eks_cluster_terraform
```
Initialize Terraform in your working directory to download the necessary plugins:
```
terraform init
```
Review the execution plan to ensure that Terraform will create the resources as expected:
```
terraform plan
```
If the plan looks good, apply the changes to create the resources:
```
terraform apply --auto-approve
```
After Terraform has finished creating the resources, you'll see a summary of the changes applied.

## Cleanup
After you're done experimenting, you can destroy the resources created by Terraform:
```
terraform destroy --auto-approve
```
Make sure to confirm the action by typing `yes` and pressing Enter.

The guides I followed for creating Terraform files:
- For `provider.tf` file: [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest)
- For `vpc.tf` file: [Terraform AWS VPC Module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
- For `eks-cluster.tf` file: [Terraform AWS EKS Module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)
- For `security-groups.tf` file: [AWS Security Group Rule Resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule)
```