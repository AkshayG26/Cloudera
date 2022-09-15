targetScope = 'resourceGroup'
param location string = 'eastus'
resource storageaccounttrial 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'stbicepdev003'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties:{
    minimumTlsVersion: 'TLS1_2'
    accessTier: 'Hot'
  }
}
