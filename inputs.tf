#---------------------
# Global Variables
#---------------------
variable "country" {
  description = "Country of deployment."
  type        = string
  validation {
    condition     = contains(["co", "pa", "gt", "ts"], var.country)
    error_message = "The selected country is not valid; only 'co', 'pa', 'gt', and 'ts' are allowed."
  }
  nullable = false
}

variable "owner" {
  description = "Name of the area or team responsible for the application/project."
  type        = string
  nullable    = false
}

variable "bia" {
  description = "The component supports a BIA (Business Impact Analysis) service or process."
  type        = bool
  nullable    = false
}

variable "env" {
  description = "Environment where the component will be deployed. Its only possible values are: dev, qa, pdn, sbx, stg."
  type        = string
  validation {
    condition     = contains(["dev", "qa", "pdn", "sbx", "stg"], var.env)
    error_message = "The selected environment is not valid; only 'dev', 'qa', 'pdn', 'sbx', 'stg' are allowed."
  }
  nullable = false
}

variable "capacity" {
  description = "Name of the project being worked on."
  type        = string
  nullable    = false
}

variable "functionality" {
  description = "Name of the application being worked on."
  type        = string
  nullable    = false
}

variable "sox" {
  description = "Sarbanes-Oxley: Controls and security measures of the application."
  type        = bool
  nullable    = false
  default     = true
}

variable "confidentiality" {
  description = "Classification of the confidentiality of the data stored in this resource."
  type        = string
  validation {
    condition     = contains(["public", "internal", "confidential", "restricted"], var.confidentiality)
    error_message = "The confidentiality classification is not valid; only 'public', 'internal', 'confidential', or 'restricted' are allowed."
  }
  nullable = false
}

variable "integrity" {
  description = "Classification of the integrity of the data stored in this resource."
  type        = string
  validation {
    condition     = contains(["critical", "moderate", "tolerable", "low"], var.integrity)
    error_message = "The integrity classification is not valid; only 'critical', 'moderate', 'tolerable', or 'low' are allowed."
  }
  nullable = false
}

variable "availability" {
  description = "Classification of the availability of the data stored in this resource."
  type        = string
  validation {
    condition     = contains(["critical", "moderate", "tolerable", "low"], var.availability)
    error_message = "The availability classification is not valid; only 'critical', 'moderate', 'tolerable', or 'low' are allowed."
  }
  nullable = false
}

variable "map-migrated" {
  description = "Tags resources migrated for contract MAP."
  type        = string
  default     = "migYI61VXQDWG"
}

variable "information-domain" {
  description = "dominio de información"
  type        = string
}

variable "personal-data" {
  description = "personal data"
  type        = bool
  default     = false
}

variable "pci" {
  description = "pci compliance"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags to apply to the created resources."
  type        = map(string)
  default     = null
  nullable    = true
}

# VARIABLES DE RECURSOS
variable "appconfig_name" {
  description = "Nombre de la aplicación AppConfig"
  type        = string
}

variable "appconfig_description" {
  description = "Descripción de la aplicación AppConfig"
  type        = string
}

variable "configuration_profile_name" {
  description = "Nombre del perfil de configuración"
  type        = string
}

variable "configuration_profile_location_uri" {
  description = "localizacion de la configuracion"
  type        = string
}

variable "environment_name" {
  description = "Nombre del entorno de AppConfig"
  type        = string
}

variable "deployment_strategy_name" {
  description = "Nombre de la estrategia de despliegue de AppConfig"
  type        = string
}

variable "deployment_duration_in_minutes" {
  description = "Duración del despliegue en minutos"
  type        = number
}

variable "growth_type" {
  description = "Tipo de crecimiento o expansion"
  type        = string
}

variable "growth_factor" {
  description = "Factor de crecimiento"
  type        = number
}

variable "replicate_to" {
  description = "Región de replicación"
  type        = string
}