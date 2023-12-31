LOGSTORAGEACCOUNTNAME="ecommerceclickstream"
LOGSCONTAINER="logs"
RESOURCEGROUPNAME="electronzen-dev"
LOCATION="eastus"

az storage account create --name $LOGSTORAGEACCOUNTNAME --resource-group $RESOURCEGROUPNAME --kind StorageV2 --location $LOCATION --sku Standard_LRS --tags owner=data engineering project=lakehouse environment=development

KEY=`az storage account keys list -g $RESOURCEGROUPNAME -n $LOGSTORAGEACCOUNTNAME | jq .[0].value`

az storage container create -n $LOGSCONTAINER --account-name $LOGSTORAGEACCOUNTNAME --account-key $KEY

az storage blob upload --container-name $LOGSCONTAINER --account-name $LOGSTORAGEACCOUNTNAME --name electroniz_access_log_1.json --file ./electroniz_access_log_1.log --account-key $KEY