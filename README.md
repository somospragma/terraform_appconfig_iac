# IaC Terraform

IaC - despliegue de la infraestructura en Terraform

Estructura:

```console
.
├── .azure-pipelines
│   └── vars.yml
├── azure-pipelines.yml
├── env
│   ├── dev
│   │   └── terraform-dev.tfvars  # (( variables a aplicar para el entorno dev ))
│   ├── pdn
│   │   └── terraform-pdn.tfvars  # (( variables a aplicar para el entorno pdn ))
│   └── qa
│       └── terraform-qa.tfvars   # (( variables a aplicar para el entorno qa ))
├── main.tf
└── README.md
```

El directorio `env` contiene las variables (owner, sox, etc) de despliegue que necesite para su proyecto

El archivo `main.tf` contiene la lógica de nuestros recursos de infraestructura

Ejemplo:

```hcl
module "ecr" {
  providers = {
    aws.main = aws.main
  }
  source          = ""  # Ruta del módulo a importar desde otro repositorio
  capacity        = var.capacity
  country         = var.country
  env             = var.env
  functionality   = var.functionality
  owner           = var.owner
  sox             = var.sox
  tags            = var.tags
}
```
