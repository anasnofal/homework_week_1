variable "bq_dataset_name"{

    description = "My bigQuirty name"
    default = "demo_dataset"
}


variable "credentials" {
    description = "My credentials"
    default = "./terrafrom_test/.terraform.lock.hcl"
  
}
variable "location"{

    description = "PROJECT LOCATION"
    default = "EU"
}


variable "gcs_storage_BUCKET" {
    description = "MY STORAGE BUCKET NAME"
    default = "auto-expiring-bucket"
}


variable "gcs_storage_class" {
    description = "Bucket Storage Class"
    default = "STANDARD"
}