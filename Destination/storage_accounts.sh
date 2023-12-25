STORAGEACCOUNTNAME="ezlakehouse"
RESOURCEGROUPNAME="electronzen-dev"
LOCATION="eastus"

az storage account create --name $STORAGEACCOUNTNAME --resource-group $RESOURCEGROUPNAME --kind StorageV2 --location $LOCATION  --hns true --sku Standard_LRS --tags owner=data engineering project=lakehouse environment=development