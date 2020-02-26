read -p "Enter Stack Name: " stack_name
read -p "Enter VPC Name: " vpc_name
read -p "Enter AWS region Name: " aws_name
read -p "enter VPC CidrBlock - format 10.0.0.0/16: " vpc_cidr
read -p "enter subnet CidrBlock - format 10.0.0.0/16: " subnet_cidr
read -p "Enter AMI Image Name: " ami_name
read -p "Enter key Name: " key_name
read -p "enter profile name: " profile

# Creating stacks
echo "Creating Network Stack"

# Executing the cloudformation network creation command
aws cloudformation create-stack \
--stack-name ${stack_name} \
--template-body file://./application.json \
--parameters \
ParameterKey=subnetcidrblock,ParameterValue=${subnet_cidr} \
ParameterKey=VPCName,ParameterValue=${vpc_name} \
ParameterKey=AWSRegion,ParameterValue=${aws_name} \
ParameterKey=vpccidrblock,ParameterValue=${vpc_cidr} \
ParameterKey=AMI,ParameterValue=${ami_name} \
ParameterKey=keyname,ParameterValue=${key_name} \
--capabilities CAPABILITY_NAMED_IAM \
--region ${aws_name} \
--profile ${profile}

# Waiting for the stack to get created
echo "Command Executed Succefully"