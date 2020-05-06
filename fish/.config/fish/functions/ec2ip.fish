function ec2ip --description 'Get EC2 instance IP'
    aws ec2 describe-instances --instance-ids $argv | jq -re '.Reservations[].Instances[].NetworkInterfaces[].PrivateIpAddress'
end
