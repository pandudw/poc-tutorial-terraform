variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "project_id name"
}

variable "name" {
  description = "GCP VM name"
  type        = string
  default     = "vm-poc"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "GCP machine type"
  type        = string
  default     = "e2-medium"
}

variable "disk" {
  description = "GCP disk"
  type        = int
  default     = "100"
}

variable "image" {
  description = "GCP image"
  type        = string
  default     = "debian-cloud/debian-10"
}

variable "image" {
  description = "GCP image"
  type        = string
  default     = "debian-cloud/debian-10"
}

variable "network_name" {
  description = "GCP image"
  type        = string
  default     = "network-poc"
}

