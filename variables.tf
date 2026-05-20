variable "dbapp_environment" {
  type = map(object(
    {
      server = map(object(
        {
          databases = map(object(
            {
              sku      = string
              sampledb = string

            }
          ))
        }
      ))
    }
  ))
}

variable "webapp_environment" {
  type = map(object(
    {
      serviceplan = map(object(
        {
          sku     = string
          os_type = string
        }
      ))
      serviceapp = map(string)
    }
  ))
}


variable "app_setup" {
  type = list(string)
}

variable "sql_admin_login" {
  type = string
}

variable "sql_admin_password" {
  type      = string
  sensitive = true
}

variable "allowed_client_ip" {
  type = string
}

variable "azure_client_id" {
  type = string
}

variable "azure_client_secret" {
  type      = string
  sensitive = true
}

variable "azure_tenant_id" {
  type = string
}

variable "azure_subscription_id" {
  type = string
}
