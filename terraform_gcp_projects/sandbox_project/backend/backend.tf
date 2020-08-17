# needed because the subs. for the tfstate is different from
# the subscription where resources are going to be deployed
#
# own subscription
subscription_id      = "dfe71886-976f-4ecd-9ff7-57380eea330c"
resource_group_name  = "project-resources"
storage_account_name = "jdoe"
container_name       = "dev-env-state"
key                  = "dev-env.tfstate"
