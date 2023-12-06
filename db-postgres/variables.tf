# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the operator
# ---------------------------------------------------------------------------------------------------------------------

/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "The ID of the project in which resources will be provisioned."
  type        = string
  default     = "terraform-demo-407305"
}

# variable "authorized_networks" {
#   default = [{
#     name  = "sample-gcp-health-checkers-range"
#     value = "76.20.0.0/16"
#   }]
#   type        = list(map(string))
#   description = "List of mapped public networks authorized to access to the instances. Default - short range of GCP health-checkers IPs"
# }

# variable "db_name" {
#   description = "The name of the SQL Database instance"
#   default     = "example-postgres-public"
# }


# variable "project" {
#   description = "The project ID to host the database in."
#   type        = string
#   default       = "terraform-demo-407305"
# }

# variable "region" {
#   description = "The region to host the database in."
#   type        = string
#   default       = "us-central1"
# }

# # Note, after a name db instance is used, it cannot be reused for up to one week.
# variable "name_prefix" {
#   description = "The name prefix for the database instance. Will be appended with a random string. Use lowercase letters, numbers, and hyphens. Start with a letter."
#   type        = string
# }

# variable "master_user_name" {
#   description = "The username part for the default user credentials, i.e. 'master_user_name'@'master_user_host' IDENTIFIED BY 'master_user_password'. This should typically be set as the environment variable TF_VAR_master_user_name so you don't check it into source control."
#   type        = string
#   default     = "gketestuser"
# }

# variable "master_user_password" {
#   description = "The password part for the default user credentials, i.e. 'master_user_name'@'master_user_host' IDENTIFIED BY 'master_user_password'. This should typically be set as the environment variable TF_VAR_master_user_password so you don't check it into source control."
#   type        = string
#   default     = "gketestpass"
# }

# # ---------------------------------------------------------------------------------------------------------------------
# # OPTIONAL PARAMETERS
# # Generally, these values won't need to be changed.
# # ---------------------------------------------------------------------------------------------------------------------

# variable "postgres_version" {
#   description = "The engine version of the database, e.g. `POSTGRES_9_6`. See https://cloud.google.com/sql/docs/db-versions for supported versions."
#   type        = string
#   default     = "POSTGRES_9_6"
# }

# variable "machine_type" {
#   description = "The machine type to use, see https://cloud.google.com/sql/pricing for more details"
#   type        = string
#   default     = "db-f1-micro"
# }

# variable "db_name" {
#   description = "Name for the db"
#   type        = string
#   default     = "default"
# }

# variable "name_override" {
#   description = "You may optionally override the name_prefix + random string by specifying an override"
#   type        = string
#   default     = null
# }