#!/bin/bash

POLICY_ARN="arn:aws:iam::398144113892:policy/caratlane-stage-common-secret_write"
while IFS= read -r username
do
  aws iam attach-user-policy --user-name "$username" --policy-arn "$POLICY_ARN"
done < usernames.txt
