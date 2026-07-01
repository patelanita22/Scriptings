AWS_REGION="ap-south-1"
INSTANCE_ID="i-123456789"

aws ec2 start-instance \
--istance_ids $INSTANCE_ID \
--region $AWS_REGION

