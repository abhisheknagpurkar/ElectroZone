RESOURCEGROUPNAME="electronzen-dev"
LOCATION="eastus"
TOPIC="ezesales"
EVENTHUB_NAMESPACE="ezesalesns"
EVENTHUB_NAME="ezesaleshub"
EVENT_SUBSCRIPTION="ezesalesevent"

az provider register --namespace Microsoft.EventGrid
az provider show --namespace Microsoft.EventGrid --query "registrationState"
az eventgrid topic create --name $TOPIC -l $LOCATION -g $RESOURCEGROUPNAME

az eventhubs namespace create --name $EVENTHUB_NAMESPACE --resource-group $RESOURCEGROUPNAME
az eventhubs eventhub create --name $EVENTHUB_NAME --namespace-name $EVENTHUB_NAMESPACE --resource-group $RESOURCEGROUPNAME
sh ./eventhub.sh  -e $EVENTHUB_NAME -n $EVENTHUB_NAMESPACE -r $RESOURCEGROUPNAME -s $EVENT_SUBSCRIPTION -t $TOPIC