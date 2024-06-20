# Use a base image with necessary tools
FROM gitpod/workspace-full

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.8.5/terraform_1.8.5_linux_amd64.zip && \
    unzip terraform_1.8.5_linux_amd64.zip && \
    sudo mv terraform /usr/local/bin/ && \
    sudo rm terraform_1.8.5_linux_amd64.zip

# Verify installation
RUN terraform --version
