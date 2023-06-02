@description('Name of the Azure Firewall Policy')
param policyName string

@description('Name of the Rule Collection Group')
param rcgName string = 'app03-rcg'

var rcprod = loadJsonContent('./prod/rc-app04-prod.json')
var rctest = loadJsonContent('./test/rc-app04-test.json')

resource policyName_rcg 'Microsoft.Network/firewallPolicies/ruleCollectionGroups@2021-08-01' = {
  name: '${policyName}/${rcgName}'
  properties: {
    priority: 13000
    ruleCollections: [
      rcprod
      rctest
    ]
  }
  dependsOn: []
}
