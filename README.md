# 🛠️ AWS Resource Lister Shell Script

A simple shell script to **list all AWS resources** across different services in a specified region using the AWS CLI. This is useful for cloud audits, cost analysis, security reviews, and DevOps automation.

## 📌 Features

✅ Supports listing resources for:
- EC2  
- S3  
- CloudFront  
- VPC  
- IAM  
- Route53  
- CloudWatch  
- CloudFormation  
- Lambda  
- SNS  
- SQS  
- DynamoDB  
- EBS  

Works with a simple command-line input  
Validates AWS CLI setup  
Lightweight and beginner-friendly  

---

## 📂 Usage

### 🔧 Prerequisites
- AWS CLI installed and configured (`aws configure`)
- Bash shell environment (Linux/macOS/Git Bash/WSL)

### ▶️ Run the Script

```bash
./aws_resource_list.sh <aws_region> <aws_service>
```

### 🔍 Example
```bash
./aws_resource_list.sh us-east-1 ec2
```

---

## 🧾 Supported Services and Commands

| Service      | CLI Command Example                       |
|--------------|-------------------------------------------|
| EC2          | `aws ec2 describe-instances`              |
| S3           | `aws s3api list-buckets`                  |
| CloudFront   | `aws cloudfront list-distributions`       |
| VPC          | `aws ec2 describe-vpcs`                   |
| IAM          | `aws iam list-users`                      |
| Route53      | `aws route53 list-hosted-zones`           |
| CloudWatch   | `aws cloudwatch describe-alarms`          |
| CloudFormation | `aws cloudformation describe-stacks`    |
| Lambda       | `aws lambda list-functions`               |
| SNS          | `aws sns list-topics`                     |
| SQS          | `aws sqs list-queues`                     |
| DynamoDB     | `aws dynamodb list-tables`                |
| EBS          | `aws ec2 describe-volumes`                |

---

## ❗Notes

- Region is required for most services (even if ignored internally by some like S3).
- Script exits if AWS CLI is not installed or not configured.
- Route53 is global; region parameter is still accepted for consistency.

## 🙌 Author

Made with ❤️ by [Daksh Sawhney]
