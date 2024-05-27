module "efs" {
  source = "terraform-aws-modules/efs/aws"

  # File system
  name           = var.name
  creation_token = var.creation_token
  encrypted      = var.encrypted


  performance_mode = var.performance_mode


  lifecycle_policy = {
    transition_to_ia = "AFTER_90_DAYS"
  }

  # Mount targets / security group
  mount_targets              = var.mount_targets
  security_group_description = var.security_group_description
  security_group_vpc_id      = var.security_group_vpc_id
  security_group_rules       = var.security_group_rules
  #   {
  #     vpc = {
  #       # relying on the defaults provdied for EFS/NFS (2049/TCP + ingress)
  #       description = var.security_group_description
  #       cidr_blocks = ["10.99.3.0/24", "10.99.4.0/24", "10.99.5.0/24"]
  #     }
  #   }

  # Access point(s)
  #   access_points = {
  #     posix_example = {
  #       name = "posix-example"
  #       posix_user = {
  #         gid            = 1001
  #         uid            = 1001
  #         secondary_gids = [1002]
  #       }

  #       tags = {
  #         Additionl = "yes"
  #       }
  #     }
  #     root_example = {
  #       root_directory = {
  #         path = "/example"
  #         creation_info = {
  #           owner_gid   = 1001
  #           owner_uid   = 1001
  #           permissions = "755"
  #         }
  #       }
  #     }
  #   }

  # Backup policy
  enable_backup_policy = var.enable_backup_policy


  tags = var.tags

}
