function sgid --description 'Get name of SG ID'
    aws ec2 describe-security-groups --group-ids $argv | jq '.SecurityGroups[0].GroupName'
end
