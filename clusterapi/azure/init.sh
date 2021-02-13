export AZURE_SUBSCRIPTION_ID="b7ea67c0-56f7-4ba0-b3a9-ca2139bab515"

# Create an Azure Service Principal and paste the output here
export AZURE_TENANT_ID="c5ce3a6b-22ce-4ac0-b840-562bb8c56811"
export AZURE_CLIENT_ID="3d188c0f-e1a7-4579-92ac-9b6079c58255"
export AZURE_CLIENT_SECRET="9hk3WfB_M1V858zSBYaAVg_GpKA.MDflba"

# Azure cloud settings
# To use the default public cloud, otherwise set to AzureChinaCloud|AzureGermanCloud|AzureUSGovernmentCloud
export AZURE_ENVIRONMENT="AzurePublicCloud"

export AZURE_SUBSCRIPTION_ID_B64="$(echo -n "$AZURE_SUBSCRIPTION_ID" | base64 | tr -d '\n')"
export AZURE_TENANT_ID_B64="$(echo -n "$AZURE_TENANT_ID" | base64 | tr -d '\n')"
export AZURE_CLIENT_ID_B64="$(echo -n "$AZURE_CLIENT_ID" | base64 | tr -d '\n')"
export AZURE_CLIENT_SECRET_B64="$(echo -n "$AZURE_CLIENT_SECRET" | base64 | tr -d '\n')"

# Finally, initialize the management cluster
clusterctl init --infrastructure azure
