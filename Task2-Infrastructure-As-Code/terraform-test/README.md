# Terraform IaC Test


Repository Contents:

- /modules/ec2-setup/main.tf: Here we define the AWS EC2 resource and related configurations:
- /modules/ec2-setup/variables.tf: Variables to be used in the module:
- /modules/ec2-setup/outputs.tf: To output the IP of the created EC2 instance:

- main.tf (at the root): Here we call the EC2 module:
- variables.tf (at the root):
 * These variables would likely be provided by the user, so you might keep the ami_id empty and 
 let the candidate find an appropriate Ubuntu AMI (or any other distribution):
- outputs.tf (at the root):
To output the IP of the created EC2 instance:


## Your task is to:

1. Set up an AWS EC2 instance using the provided Terraform configurations.
2. Ensure the Next.js web application is running and accessible on the EC2 instance.
3. Ensure security best practices are applied.

## Considerations:

- Choose an appropriate AMI (like Ubuntu).
- Update the `ami_id` in the `variables.tf` accordingly.
- Secure SSH access and any other unnecessary services.

## After completion:

- Provide the IP of the running application.
- Explain any modifications or decisions made during the setup.



## Extra
Errors for Diagnosis:

AMI ID: Don't provide an ami_id upfront. Let the candidate decide on a suitable AMI, like Ubuntu, and use it.

SSH Security: By default, the instance will have SSH open. Ask the candidate to secure the instance such that SSH access is limited or locked down.

Remember to remind the candidate to tear down any infrastructure they've provisioned to avoid incurring charges.