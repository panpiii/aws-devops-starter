#!/bin/bash

#Variables
AMI_ID="ami-03bcd79f25ca6b127"  # AMI for ca-central-1
INSTANCE_TYPE="t2.micro"  # Free-tier eligible
KEY_NAME="my-key"  # Your key pair name (without .pem!!)
SECURITY_GROUP_ID="sg-008b47538bc54e707"  # Your security group ID

# Launch EC2 instance
INSTANCE_ID=$(aws ec2 run-instances --image-id $AMI_ID \
                                    --instance-type $INSTANCE_TYPE \
                                    --key-name $KEY_NAME \
                                    --security-group-ids $SECURITY_GROUP_ID \
                                    --query 'Instances[0].InstanceId' \
                                    --output text)

echo "Instance launched: $INSTANCE_ID"

# Get public IP of the instance
PUBLIC_IP=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID \
                                       --query 'Reservations[*].Instances[*].[PublicIpAddress]' \
                                       --output text)

echo "Connect using: ssh -i ~/my-key.pem ubuntu@$PUBLIC_IP"
