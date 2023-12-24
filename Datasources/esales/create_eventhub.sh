az eventhubs namespace create --name $EVENTHUB_NAMESPACE --resource-group $RESOURCEGROUPNAME

az eventhubs eventhub create --name $EVENTHUB_NAME --namespace-name $EVENTHUB_NAMESPACE --resource-group $RESOURCEGROUPNAME

sh ./eventhub.sh  -e $EVENTHUB_NAME -n $EVENTHUB_NAMESPACE -r $RESOURCEGROUPNAME -s $EVENT_SUBSCRIPTION -t $TOPIC