#!/bin/bash
#
#
#
#Authoer : Abhishek V M 
#Date : 20-june
#
#
#Version v1
#
#
set -x 
set -o pipefail
set -e 


#list s3 buckets 
#
echo "Print list of S3 buckets"

aws s3 ls


#list Ec2 instances 
#
echo "Print list of Ec2 instances"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
#
echo "print list of lambda functions"

aws lambda list-functions


#list IAM users
#
#
echo "Print IAM users"


aws iam list-users | jq '.Users[].UserName'



