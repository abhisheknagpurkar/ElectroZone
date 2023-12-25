
RESOURCEGROUPNAME="electronzen-dev"
LOCATION="eastus"
KEYVAULTNAME="ezkv100"
ADLS_SECRETNAME="ADLSKEY"
ADLS_KEY="Sutu/jHymUYiNQbgZgPSgM5BAwnwcmPNnEz1Yqu6jeTXzOw2/SIhZZ5rGN311GHsRxH0AC/3I6Mj+AStBfbfDQ=="
API_SECRETNAME="CURRAPIKEY"
API_KEY="0c8941c1264dec172457"

az config set extension.use_dynamic_install=yes_without_prompt

az keyvault create --location $LOCATION --name $KEYVAULTNAME --resource-group $RESOURCEGROUPNAME

az keyvault secret set --name $ADLS_SECRETNAME --vault-name $KEYVAULTNAME --value $ADLS_KEY

az keyvault secret set --name $API_SECRETNAME --vault-name $KEYVAULTNAME --value $API_KEY