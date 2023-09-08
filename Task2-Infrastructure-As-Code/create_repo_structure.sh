#!/bin/bash

# Base directory
BASE_DIR="terraform-test"

# Create the main project folder
mkdir "$BASE_DIR"
cd "$BASE_DIR"

# Create the module structure
mkdir -p modules/ec2-setup

# Generate the required files in the main directory
touch main.tf variables.tf outputs.tf README.md

# Generate the required files in the module directory
cd modules/ec2-setup
touch main.tf variables.tf outputs.tf

# Return to base directory and initialize a Git repository
cd ../../
git init

echo "Repository structure created and Git initialized."
