#!/bin/bash

#######################################################
#Author : Sneha
#Date : 9th-Nov
#
#Version : V1
#
#This script will report the aws resource usage
######################################################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users


#list S3 buckets
echo "print list of s3 buckets"
aws s3api list-buckets --region us-east-1 > resourceTracker


#list EC2 Instance
echo "print list of ec2 buckets"
aws ec2 describe-instances --region us-east-1 | jq '.Reservations[].Instances[].InstanceId' > resourceTracker

#list AWS Lambda
echo "print list of lambda functions"
aws iam list-users --region us-east-1 > resourceTracker


#list IAM Users
echo "print list of IAM Users"
aws iam list-users --region us-east-1 > resourceTracker


