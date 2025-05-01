#!/bin/bash

# Step 1 - Check if 2 arguments are passed or not   --- validation ---
if [ $# -ne 2 ]; then
	echo "Usage: $0 <region> <service_name>"
	exit 1
fi

### Assign the Arguments to variables
aws_region=$1
aws_service=$2
###

# Check if aws cli is installed or not
if ! command -v aws &> /dev/null;then
	echo "AWS CLI is not installed. Please install it"
	exit 1
fi

# Check if aws is configured
if [ ! -d ~/.aws ];then
	echo "AWS CLI is not configured"
	exit 1
fi

# Using Switch Case for listing all services
case $2 in
    ec2)
		echo "Listing All EC2 instances in $aws_region"
		aws ec2 describe-instances --region $aws_region
	;;
    s3)
		echo "Listing All S3 Buckets"
		aws s3api list-buckets --region $aws_region
	;;
    cloudfront)
        echo "Listing CloudFront Distributions in $aws_region"
        aws cloudfront list-distributions --region $aws_region
        ;;
    vpc)
        echo "Listing VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
        ;;
    iam)
        echo "Listing IAM Users in $aws_region"
        aws iam list-users --region $aws_region
        ;;
    route5)
        echo "Listing Route53 Hosted Zones in $aws_region"
        aws route53 list-hosted-zones --region $aws_region
        ;;
    cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region"
        aws cloudwatch describe-alarms --region $aws_region
        ;;
    cloudformation)
        echo "Listing CloudFormation Stacks in $aws_region"
        aws cloudformation describe-stacks --region $aws_region
        ;;
    lambda)
        echo "Listing Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;
    sns)
        echo "Listing SNS Topics in $aws_region"
        aws sns list-topics --region $aws_region
        ;;
    sqs)
        echo "Listing SQS Queues in $aws_region"
        aws sqs list-queues --region $aws_region
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $aws_region"
        aws dynamodb list-tables --region $aws_region
        ;;
    ebs)
        echo "Listing EBS Volumes in $aws_region"
        aws ec2 describe-volumes --region $aws_region
        ;;
    *)
        echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac	
