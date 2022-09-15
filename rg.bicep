targetScope = 'subscription'
param location string
resource azbicepresourcegroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-bicep-dev-002'
  location: location
}

output name string = azbicepresourcegroup.name
