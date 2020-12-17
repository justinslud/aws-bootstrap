# /bin/bash

STACK_NAME=awsbootstrap
REGION=us-east-1
CLI_PROFILE=awsbootstrap

EC2_INSTANCE_TYPE=t2.micro
FLASK_APP=main.py

echo -e "\n\n====== Deploying main.yml ========"

aws cloudformation deploy \
	--region $REGION  \
	--profile $CLI_PROFILE \
	--stack-name $STACK_NAME \
	--template-file main.yml \
	--no-fail-on-empty-changeset \
	--capabilities CAPABILITY_NAMED_IAM \
	--parameter-overrides \
	EC2_INSTANCE_TYPE=$EC2_INSTANCE_TYPE
