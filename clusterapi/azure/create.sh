export AZURE_SUBSCRIPTION_ID="b7ea67c0-56f7-4ba0-b3a9-ca2139bab515"

# Create an Azure Service Principal and paste the output here
export AZURE_TENANT_ID="c5ce3a6b-22ce-4ac0-b840-562bb8c56811"
export AZURE_CLIENT_ID="3d188c0f-e1a7-4579-92ac-9b6079c58255"
export AZURE_CLIENT_SECRET="9hk3WfB_M1V858zSBYaAVg_GpKA.MDflba"

# Azure cloud settings
# To use the default public cloud, otherwise set to AzureChinaCloud|AzureGermanCloud|AzureUSGovernmentCloud
export AZURE_ENVIRONMENT="AzurePublicCloud"


# Name of the Azure datacenter location.
export AZURE_LOCATION="centralus"

# Select VM types.
export AZURE_CONTROL_PLANE_MACHINE_TYPE="Standard_D2s_v3"
export AZURE_NODE_MACHINE_TYPE="Standard_D2s_v3"

clusterctl config cluster capi-quickstart \
  --kubernetes-version v1.18.2 \
  --control-plane-machine-count=3 \
  --worker-machine-count=3 \
  > capi-quickstart.yaml
