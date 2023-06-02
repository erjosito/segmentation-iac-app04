param nsgName string = 'app04-prod-nsg'
param location string = resourceGroup().location

resource app04nsg 'Microsoft.Network/networkSecurityGroups@2022-07-01' = {
    name: nsgName
    location: location
    properties: {
      securityRules: [
        {
          name: '${nsgName}/anyToWeb-inbound'
          properties: {
            access: 'Allow'
            description: 'Allows inbound web access to the web servers'
            destinationAddressPrefix: 'VirtualNetwork'
            destinationPortRange: '443'
            direction: 'inbound'
            priority: 1010
            protocol: 'TCP'
            sourceAddressPrefix: '*'
            sourcePortRange: '*'
          }
        }
      ]
    }
}