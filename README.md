
# Cloud formation command
aws cloudformation create-stack   --stack-name csye6225webapp   --parameters ParameterKey=VPCName,ParameterValue=VPCName    ParameterKey=VPCCIDRBlock,ParameterValue=10.0.0.0/16   ParameterKey=Subnet1CIDRBlock,ParameterValue=10.0.1.0/24   ParameterKey=Subnet2CIDRBlock,ParameterValue=10.0.2.0/24   ParameterKey=Subnet3CIDRBlock,ParameterValue=10.0.3.0/24   --template-body file://networking.json --region us-east-1 --profile dev
