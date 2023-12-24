RESOURCEGROUPNAME="electronzen-dev"
LOCATION="eastus"
TOPIC="ezesales"
EVENTHUB_NAMESPACE="ezesalesns"
EVENTHUB_NAME="ezesaleshub"
EVENT_SUBSCRIPTION="ezesalesevent"

az provider register --namespace Microsoft.EventGrid
az provider show --namespace Microsoft.EventGrid --query "registrationState"
az eventgrid topic create --name $TOPIC -l $LOCATION -g $RESOURCEGROUPNAME