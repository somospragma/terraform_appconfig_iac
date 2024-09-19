#--------------
# Global vars
#--------------
# Código de País de despliegue.
country = "CO"

# Nombre del área o equipo responsable de la aplicación/proyecto.
owner = "julian.isaza@pragma.com.co"

# Ambiente donde será desplegado el componente. Sus únicos valores posibles serán: dev, qa, pdn, sbx, stg.
env = "dev"

# Nombre del proyecto en el que se esta trabajando.
capacity = "poc_appconfig"

# Nombre de la aplicación en la que se esta trabajando.
functionality = "appconfig"

# Clasificación de la confidencialidad de los datos almacenados en este recurso. Los valores permitidos son: public, internal, confidential o restricted.
confidentiality = "internal"

# Clasificación de la integridad de los datos almacenados en este recurso. Los valores permitidos son: critical, moderate, tolerable o low.
integrity = "tolerable"

# Clasificación de la disponibilidad de los datos almacenados en este recurso. Los valores permitidos son: critical, moderate, tolerable o low.
availability = "critical"

sox                = false
pci                = false
information-domain = "customer"
personal-data      = true

# Tags adicionales para aplicar a los recursos creados
tags = null

#Appconfig

appconfig_name = "test-appconfig"
appconfig_description = "Test Appconfig module"
configuration_profile_name = "dev-profile"
configuration_profile_location_uri = "hosted"
environment_name = "dev-appconfig"
deployment_strategy_name = "AllAtOnce-TransactionalWeb"
deployment_duration_in_minutes = 0
growth_factor = 100
replicate_to = "NONE"
growth_type = "LINEAR"

