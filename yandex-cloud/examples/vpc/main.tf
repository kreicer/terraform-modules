module "server" {
    source          = "../../modules/vpc"

    folder_id       = "b1guem0u1ksdc9lla7dv"
    vpc_name        = "default"
    vpc_desc        = "Default network"
}
