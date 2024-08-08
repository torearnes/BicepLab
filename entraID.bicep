extension microsoftGraph

param location string = resourceGroup().location

resource exampleGroup 'Microsoft.Graph/groups@v1.0' = {
  displayName: 'My_BicepCreated_Group'
  mailEnabled: false
  mailNickname: 'My_BicepCreated_Group'
  securityEnabled: true
  uniqueName: 'My_BicepCreated_Group'
  owners: [managedIdentity.properties.principalId
  ]
}

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31'= {
  name: 'My_BicepCreated_managedIdentity'
  location: location
}
