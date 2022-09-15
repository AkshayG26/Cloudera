# az account list --output table
### This above cmd willshow all the subscriptions list table and in that table IsDefault column will show which subsrciption is active now

# az deployment sub create --location eastus --template-file RGfilename.bicep
### This above cmd will create a Resource Group that we have given input bicep file

# az deployment group create --name nameWhateverYouWant --resource-group resourceGroupNameGOesHere --template-file filename.bicep

az deployment group create --name storageAccoutCreating --resource-group re-bicep-dev-002 --template-file st.bicep