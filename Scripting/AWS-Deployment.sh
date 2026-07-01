AWS_REGION="ap-south-1"
INSTANCE_ID="i-1234567890"

aws ec2 start-instance \
--istance_ids $INSTANCE_ID \
--region $AWS_REGION

