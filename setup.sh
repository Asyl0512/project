# #!/bin/bash

# # Update system
# sudo yum update -y

# # Install necessary utilities
# sudo yum install -y yum-utils epel-release

# # Set up the HashiCorp repository for Terraform
# sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

# # Install Terraform
# sudo yum install -y terraform

# # Install Ansible
# sudo yum install -y ansible

# # Verify installation
# terraform version
# ansible --version


# Install Terraform
echo "Installing Terraform..."
brew install terraform

# Install Ansible
echo "Installing Ansible..."
brew install ansible

# Verify installations
echo "Verifying installations..."
terraform version
ansible --version

# Terraform setup
cd terraform
terraform init
terraform apply -auto-approve

# Ansible setup
cd ../ansible
sleep 30
echo "[ec2host]" > hosts
echo "$(cd ../terraform && terraform output -raw instance_public_ip) ansible_ssh_user=ubuntu key_file=~/.ssh/id_rsa.pub" >> hosts
ansible-playbook playbook.yml
