@description('Name of the Azure Firewall Policy')
param policyName string = 'myazurepolicy'
param prefix string = 'app04'

// Location not needed for RCGs, but included any way for consistency and in case IP Groups were required in the future

module app03RCG './rcg-app04.bicep' = {
  name: 'rcg-app04'
  params: {
    policyName: policyName
    rcgName: 'rcg-${prefix}'
  }
}
