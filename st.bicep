param location string = 'eastus'

module resourcegroup 'rg.bicep' = {
  name: 'rg-bicep-dev-003'
  scope: subscription()
  params: {
    location: location
  }
}

resource storageresource 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'st-bicep-dev-002'
  dependsOn: [
    resourcegroup
  ]
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    accessTier: 'Hot'
  }
}
