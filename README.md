# poc_modules
Example of git structure:

├── live.git
│   └── dev
│       ├── backend
│       │   └── backend.tf
│       ├── main.tf
│       ├── modules.tf
│       ├── terraform.tfvars
│       └── variables.tf
├── modules.git
│   ├── databricks
│   ├── network-security-group
│   │   ├── main.tf
│   │   ├── output.tf
│   │   ├── rules.tf
│   │   └── variables.tf
│   ├── resource-group
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── vnet
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── README.md
