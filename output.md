Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_api_gateway_integration.api_integration_Auth will be created
  + resource "aws_api_gateway_integration" "api_integration_Auth" {
      + cache_namespace         = (known after apply)
      + connection_id           = (known after apply)
      + connection_type         = "VPC_LINK"
      + content_handling        = "CONVERT_TO_TEXT"
      + http_method             = "GET"
      + id                      = (known after apply)
      + integration_http_method = "GET"
      + passthrough_behavior    = "WHEN_NO_MATCH"
      + request_parameters      = {
          + "integration.request.header.X-Authorization" = "'static'"
          + "integration.request.header.X-Foo"           = "'Bar'"
        }
      + request_templates       = {
          + "application/json" = ""
          + "application/xml"  = <<-EOT
                #set($inputRoot = $input.path('$'))
                { }
            EOT
        }
      + resource_id             = (known after apply)
      + rest_api_id             = (known after apply)
      + timeout_milliseconds    = 29000
      + type                    = "HTTP"
      + uri                     = "https://www.google.de"
    }

  # aws_api_gateway_integration.api_integration_DMS will be created
  + resource "aws_api_gateway_integration" "api_integration_DMS" {
      + cache_namespace         = (known after apply)
      + connection_id           = (known after apply)
      + connection_type         = "VPC_LINK"
      + content_handling        = "CONVERT_TO_TEXT"
      + http_method             = "GET"
      + id                      = (known after apply)
      + integration_http_method = "GET"
      + passthrough_behavior    = "WHEN_NO_MATCH"
      + request_parameters      = {
          + "integration.request.header.X-Authorization" = "'static'"
          + "integration.request.header.X-Foo"           = "'Bar'"
        }
      + request_templates       = {
          + "application/json" = ""
          + "application/xml"  = <<-EOT
                #set($inputRoot = $input.path('$'))
                { }
            EOT
        }
      + resource_id             = (known after apply)
      + rest_api_id             = (known after apply)
      + timeout_milliseconds    = 29000
      + type                    = "HTTP"
      + uri                     = "https://www.google.de"
    }

  # aws_api_gateway_integration.api_integration_DocMs will be created
  + resource "aws_api_gateway_integration" "api_integration_DocMs" {
      + cache_namespace         = (known after apply)
      + connection_id           = (known after apply)
      + connection_type         = "VPC_LINK"
      + content_handling        = "CONVERT_TO_TEXT"
      + http_method             = "GET"
      + id                      = (known after apply)
      + integration_http_method = "GET"
      + passthrough_behavior    = "WHEN_NO_MATCH"
      + request_parameters      = {
          + "integration.request.header.X-Authorization" = "'static'"
          + "integration.request.header.X-Foo"           = "'Bar'"
        }
      + request_templates       = {
          + "application/json" = ""
          + "application/xml"  = <<-EOT
                #set($inputRoot = $input.path('$'))
                { }
            EOT
        }
      + resource_id             = (known after apply)
      + rest_api_id             = (known after apply)
      + timeout_milliseconds    = 29000
      + type                    = "HTTP"
      + uri                     = "https://www.google.de"
    }

  # aws_api_gateway_integration.api_integration_NS will be created
  + resource "aws_api_gateway_integration" "api_integration_NS" {
      + cache_namespace         = (known after apply)
      + connection_id           = (known after apply)
      + connection_type         = "VPC_LINK"
      + content_handling        = "CONVERT_TO_TEXT"
      + http_method             = "GET"
      + id                      = (known after apply)
      + integration_http_method = "GET"
      + passthrough_behavior    = "WHEN_NO_MATCH"
      + request_parameters      = {
          + "integration.request.header.X-Authorization" = "'static'"
          + "integration.request.header.X-Foo"           = "'Bar'"
        }
      + request_templates       = {
          + "application/json" = ""
          + "application/xml"  = <<-EOT
                #set($inputRoot = $input.path('$'))
                { }
            EOT
        }
      + resource_id             = (known after apply)
      + rest_api_id             = (known after apply)
      + timeout_milliseconds    = 29000
      + type                    = "HTTP"
      + uri                     = "https://www.google.de"
    }

  # aws_api_gateway_method.api_method_Auth will be created
  + resource "aws_api_gateway_method" "api_method_Auth" {
      + api_key_required = false
      + authorization    = "NONE"
      + http_method      = "GET"
      + id               = (known after apply)
      + request_models   = {
          + "application/json" = "Error"
        }
      + resource_id      = (known after apply)
      + rest_api_id      = (known after apply)
    }

  # aws_api_gateway_method.api_method_DMS will be created
  + resource "aws_api_gateway_method" "api_method_DMS" {
      + api_key_required = false
      + authorization    = "NONE"
      + http_method      = "GET"
      + id               = (known after apply)
      + request_models   = {
          + "application/json" = "Error"
        }
      + resource_id      = (known after apply)
      + rest_api_id      = (known after apply)
    }

  # aws_api_gateway_method.api_method_DocMs will be created
  + resource "aws_api_gateway_method" "api_method_DocMs" {
      + api_key_required = false
      + authorization    = "NONE"
      + http_method      = "GET"
      + id               = (known after apply)
      + request_models   = {
          + "application/json" = "Error"
        }
      + resource_id      = (known after apply)
      + rest_api_id      = (known after apply)
    }

  # aws_api_gateway_method.api_method_NS will be created
  + resource "aws_api_gateway_method" "api_method_NS" {
      + api_key_required = false
      + authorization    = "NONE"
      + http_method      = "GET"
      + id               = (known after apply)
      + request_models   = {
          + "application/json" = "Error"
        }
      + resource_id      = (known after apply)
      + rest_api_id      = (known after apply)
    }

  # aws_api_gateway_resource.api_resource_Auth will be created
  + resource "aws_api_gateway_resource" "api_resource_Auth" {
      + id          = (known after apply)
      + parent_id   = (known after apply)
      + path        = (known after apply)
      + path_part   = "test"
      + rest_api_id = (known after apply)
    }

  # aws_api_gateway_resource.api_resource_DMS will be created
  + resource "aws_api_gateway_resource" "api_resource_DMS" {
      + id          = (known after apply)
      + parent_id   = (known after apply)
      + path        = (known after apply)
      + path_part   = "test"
      + rest_api_id = (known after apply)
    }

  # aws_api_gateway_resource.api_resource_DocMs will be created
  + resource "aws_api_gateway_resource" "api_resource_DocMs" {
      + id          = (known after apply)
      + parent_id   = (known after apply)
      + path        = (known after apply)
      + path_part   = "test"
      + rest_api_id = (known after apply)
    }

  # aws_api_gateway_resource.api_resource_NS will be created
  + resource "aws_api_gateway_resource" "api_resource_NS" {
      + id          = (known after apply)
      + parent_id   = (known after apply)
      + path        = (known after apply)
      + path_part   = "test"
      + rest_api_id = (known after apply)
    }

  # aws_api_gateway_rest_api.rest_api_Auth will be created
  + resource "aws_api_gateway_rest_api" "rest_api_Auth" {
      + api_key_source               = (known after apply)
      + arn                          = (known after apply)
      + binary_media_types           = (known after apply)
      + created_date                 = (known after apply)
      + description                  = (known after apply)
      + disable_execute_api_endpoint = (known after apply)
      + execution_arn                = (known after apply)
      + id                           = (known after apply)
      + minimum_compression_size     = -1
      + name                         = "rest_api_auth"
      + policy                       = (known after apply)
      + root_resource_id             = (known after apply)
      + tags_all                     = (known after apply)

      + endpoint_configuration {
          + types            = (known after apply)
          + vpc_endpoint_ids = (known after apply)
        }
    }

  # aws_api_gateway_rest_api.rest_api_DMS will be created
  + resource "aws_api_gateway_rest_api" "rest_api_DMS" {
      + api_key_source               = (known after apply)
      + arn                          = (known after apply)
      + binary_media_types           = (known after apply)
      + created_date                 = (known after apply)
      + description                  = (known after apply)
      + disable_execute_api_endpoint = (known after apply)
      + execution_arn                = (known after apply)
      + id                           = (known after apply)
      + minimum_compression_size     = -1
      + name                         = "rest_api_DMS"
      + policy                       = (known after apply)
      + root_resource_id             = (known after apply)
      + tags_all                     = (known after apply)

      + endpoint_configuration {
          + types            = (known after apply)
          + vpc_endpoint_ids = (known after apply)
        }
    }

  # aws_api_gateway_rest_api.rest_api_DocMs will be created
  + resource "aws_api_gateway_rest_api" "rest_api_DocMs" {
      + api_key_source               = (known after apply)
      + arn                          = (known after apply)
      + binary_media_types           = (known after apply)
      + created_date                 = (known after apply)
      + description                  = (known after apply)
      + disable_execute_api_endpoint = (known after apply)
      + execution_arn                = (known after apply)
      + id                           = (known after apply)
      + minimum_compression_size     = -1
      + name                         = "rest_api_DocMs"
      + policy                       = (known after apply)
      + root_resource_id             = (known after apply)
      + tags_all                     = (known after apply)

      + endpoint_configuration {
          + types            = (known after apply)
          + vpc_endpoint_ids = (known after apply)
        }
    }

  # aws_api_gateway_rest_api.rest_api_NS will be created
  + resource "aws_api_gateway_rest_api" "rest_api_NS" {
      + api_key_source               = (known after apply)
      + arn                          = (known after apply)
      + binary_media_types           = (known after apply)
      + created_date                 = (known after apply)
      + description                  = (known after apply)
      + disable_execute_api_endpoint = (known after apply)
      + execution_arn                = (known after apply)
      + id                           = (known after apply)
      + minimum_compression_size     = -1
      + name                         = "rest_api_NS"
      + policy                       = (known after apply)
      + root_resource_id             = (known after apply)
      + tags_all                     = (known after apply)

      + endpoint_configuration {
          + types            = (known after apply)
          + vpc_endpoint_ids = (known after apply)
        }
    }

  # aws_api_gateway_vpc_link.api_vpc_link will be created
  + resource "aws_api_gateway_vpc_link" "api_vpc_link" {
      + arn         = (known after apply)
      + id          = (known after apply)
      + name        = "api_vpc_link"
      + tags_all    = (known after apply)
      + target_arns = (known after apply)
    }

  # aws_db_instance.db will be created
  + resource "aws_db_instance" "db" {
      + address                               = (known after apply)
      + allocated_storage                     = 100
      + apply_immediately                     = (known after apply)
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_subnet_group_name                  = (known after apply)
      + delete_automated_backups              = true
      + endpoint                              = (known after apply)
      + engine                                = (sensitive)
      + engine_version                        = "9.6.6"
      + engine_version_actual                 = (known after apply)
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (sensitive)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.m5d.large"
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + maintenance_window                    = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = false
      + name                                  = (known after apply)
      + nchar_character_set_name              = (known after apply)
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = (known after apply)
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_encrypted                     = false
      + storage_type                          = "gp2"
      + tags                                  = {
          + "Name" = "db"
        }
      + tags_all                              = {
          + "Name" = "db"
        }
      + timezone                              = (known after apply)
      + username                              = (sensitive)
      + vpc_security_group_ids                = (known after apply)
    }

  # aws_db_subnet_group.db_sub_gr will be created
  + resource "aws_db_subnet_group" "db_sub_gr" {
      + arn         = (known after apply)
      + description = "terrafom db subnet group"
      + id          = (known after apply)
      + name        = "main_subnet_group"
      + name_prefix = (known after apply)
      + subnet_ids  = (known after apply)
      + tags        = {
          + "Name" = "db_sub_gr"
        }
      + tags_all    = {
          + "Name" = "db_sub_gr"
        }
    }

  # aws_eip.nat1 will be created
  + resource "aws_eip" "nat1" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = (known after apply)
    }

  # aws_eip.nat2 will be created
  + resource "aws_eip" "nat2" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = (known after apply)
    }

  # aws_eks_cluster.eks will be created
  + resource "aws_eks_cluster" "eks" {
      + arn                   = (known after apply)
      + certificate_authority = (known after apply)
      + created_at            = (known after apply)
      + endpoint              = (known after apply)
      + id                    = (known after apply)
      + identity              = (known after apply)
      + name                  = "eks"
      + platform_version      = (known after apply)
      + role_arn              = (known after apply)
      + status                = (known after apply)
      + tags_all              = (known after apply)
      + version               = "1.21"

      + kubernetes_network_config {
          + ip_family         = (known after apply)
          + service_ipv4_cidr = (known after apply)
        }

      + vpc_config {
          + cluster_security_group_id = (known after apply)
          + endpoint_private_access   = false
          + endpoint_public_access    = true
          + public_access_cidrs       = (known after apply)
          + subnet_ids                = (known after apply)
          + vpc_id                    = (known after apply)
        }
    }

  # aws_eks_node_group.nodes_general will be created
  + resource "aws_eks_node_group" "nodes_general" {
      + ami_type               = "AL2_x86_64"
      + arn                    = (known after apply)
      + capacity_type          = "ON_DEMAND"
      + cluster_name           = "eks"
      + disk_size              = 20
      + force_update_version   = false
      + id                     = (known after apply)
      + instance_types         = [
          + "t3.small",
        ]
      + labels                 = {
          + "role" = "nodes-general"
        }
      + node_group_name        = "nodes-general"
      + node_group_name_prefix = (known after apply)
      + node_role_arn          = (known after apply)
      + release_version        = (known after apply)
      + resources              = (known after apply)
      + status                 = (known after apply)
      + subnet_ids             = (known after apply)
      + tags_all               = (known after apply)
      + version                = "1.21"

      + scaling_config {
          + desired_size = 2
          + max_size     = 2
          + min_size     = 2
        }

      + update_config {
          + max_unavailable            = (known after apply)
          + max_unavailable_percentage = (known after apply)
        }
    }

  # aws_iam_role.eks_cluster will be created
  + resource "aws_iam_role" "eks_cluster" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "eks.amazonaws.com"
                        }
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = "eks-cluster"
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy {
          + name   = (known after apply)
          + policy = (known after apply)
        }
    }

  # aws_iam_role.nodes_general will be created
  + resource "aws_iam_role" "nodes_general" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = "eks-node-group-general"
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy {
          + name   = (known after apply)
          + policy = (known after apply)
        }
    }

  # aws_iam_role_policy_attachment.amazon_ec2_container_registry_read_only will be created
  + resource "aws_iam_role_policy_attachment" "amazon_ec2_container_registry_read_only" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      + role       = "eks-node-group-general"
    }

  # aws_iam_role_policy_attachment.amazon_eks_cluster_policy will be created
  + resource "aws_iam_role_policy_attachment" "amazon_eks_cluster_policy" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      + role       = "eks-cluster"
    }

  # aws_iam_role_policy_attachment.amazon_eks_cni_policy_general will be created
  + resource "aws_iam_role_policy_attachment" "amazon_eks_cni_policy_general" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      + role       = "eks-node-group-general"
    }

  # aws_iam_role_policy_attachment.amazon_eks_worker_node_policy_general will be created
  + resource "aws_iam_role_policy_attachment" "amazon_eks_worker_node_policy_general" {
      + id         = (known after apply)
      + policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      + role       = "eks-node-group-general"
    }

  # aws_internet_gateway.main will be created
  + resource "aws_internet_gateway" "main" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "main"
        }
      + tags_all = {
          + "Name" = "main"
        }
      + vpc_id   = (known after apply)
    }

  # aws_lb.aws_alb will be created
  + resource "aws_lb" "aws_alb" {
      + arn                        = (known after apply)
      + arn_suffix                 = (known after apply)
      + desync_mitigation_mode     = "defensive"
      + dns_name                   = (known after apply)
      + drop_invalid_header_fields = false
      + enable_deletion_protection = true
      + enable_http2               = true
      + enable_waf_fail_open       = false
      + id                         = (known after apply)
      + idle_timeout               = 60
      + internal                   = true
      + ip_address_type            = (known after apply)
      + load_balancer_type         = "application"
      + name                       = "FS-APP-ALB"
      + security_groups            = (known after apply)
      + subnets                    = (known after apply)
      + tags                       = {
          + "Name" = "aws_alb"
        }
      + tags_all                   = {
          + "Name" = "aws_alb"
        }
      + vpc_id                     = (known after apply)
      + zone_id                    = (known after apply)

      + subnet_mapping {
          + allocation_id        = (known after apply)
          + ipv6_address         = (known after apply)
          + outpost_id           = (known after apply)
          + private_ipv4_address = (known after apply)
          + subnet_id            = (known after apply)
        }
    }

  # aws_nat_gateway.gw1 will be created
  + resource "aws_nat_gateway" "gw1" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name" = "NAT 1"
        }
      + tags_all             = {
          + "Name" = "NAT 1"
        }
    }

  # aws_nat_gateway.gw2 will be created
  + resource "aws_nat_gateway" "gw2" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name" = "NAT 2"
        }
      + tags_all             = {
          + "Name" = "NAT 2"
        }
    }

  # aws_route_table.private1 will be created
  + resource "aws_route_table" "private1" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + carrier_gateway_id         = ""
              + cidr_block                 = "0.0.0.0/0"
              + destination_prefix_list_id = ""
              + egress_only_gateway_id     = ""
              + gateway_id                 = ""
              + instance_id                = ""
              + ipv6_cidr_block            = ""
              + local_gateway_id           = ""
              + nat_gateway_id             = (known after apply)
              + network_interface_id       = ""
              + transit_gateway_id         = ""
              + vpc_endpoint_id            = ""
              + vpc_peering_connection_id  = ""
            },
        ]
      + tags             = {
          + "Name" = "private1"
        }
      + tags_all         = {
          + "Name" = "private1"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table.private2 will be created
  + resource "aws_route_table" "private2" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + carrier_gateway_id         = ""
              + cidr_block                 = "0.0.0.0/0"
              + destination_prefix_list_id = ""
              + egress_only_gateway_id     = ""
              + gateway_id                 = ""
              + instance_id                = ""
              + ipv6_cidr_block            = ""
              + local_gateway_id           = ""
              + nat_gateway_id             = (known after apply)
              + network_interface_id       = ""
              + transit_gateway_id         = ""
              + vpc_endpoint_id            = ""
              + vpc_peering_connection_id  = ""
            },
        ]
      + tags             = {
          + "Name" = "private2"
        }
      + tags_all         = {
          + "Name" = "private2"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + carrier_gateway_id         = ""
              + cidr_block                 = "0.0.0.0/0"
              + destination_prefix_list_id = ""
              + egress_only_gateway_id     = ""
              + gateway_id                 = (known after apply)
              + instance_id                = ""
              + ipv6_cidr_block            = ""
              + local_gateway_id           = ""
              + nat_gateway_id             = ""
              + network_interface_id       = ""
              + transit_gateway_id         = ""
              + vpc_endpoint_id            = ""
              + vpc_peering_connection_id  = ""
            },
        ]
      + tags             = {
          + "Name" = "public"
        }
      + tags_all         = {
          + "Name" = "public"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.private1 will be created
  + resource "aws_route_table_association" "private1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.private2 will be created
  + resource "aws_route_table_association" "private2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public1 will be created
  + resource "aws_route_table_association" "public1" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public2 will be created
  + resource "aws_route_table_association" "public2" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_security_group.alb_sg will be created
  + resource "aws_security_group" "alb_sg" {
      + arn                    = (known after apply)
      + description            = "ALB securety group"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 31003
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 31007
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 31003
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 31007
            },
        ]
      + name                   = "alb_sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "alb_sg"
        }
      + tags_all               = {
          + "Name" = "alb_sg"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.sec_grp_rds will be created
  + resource "aws_security_group" "sec_grp_rds" {
      + arn                    = (known after apply)
      + description            = "rds securety group"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 5432
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 5432
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 5432
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 5432
            },
        ]
      + name                   = "rds"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "sec_grp_rds"
        }
      + tags_all               = {
          + "Name" = "sec_grp_rds"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.private_1 will be created
  + resource "aws_subnet" "private_1" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "192.168.128.0/18"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name"                            = "private-us-east-1a"
          + "kubernetes.io/cluster/eks"       = "shared"
          + "kubernetes.io/role/internal-elb" = "1"
        }
      + tags_all                                       = {
          + "Name"                            = "private-us-east-1a"
          + "kubernetes.io/cluster/eks"       = "shared"
          + "kubernetes.io/role/internal-elb" = "1"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.private_2 will be created
  + resource "aws_subnet" "private_2" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "192.168.192.0/18"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name"                            = "private-us-east-1b"
          + "kubernetes.io/cluster/eks"       = "shared"
          + "kubernetes.io/role/internal-elb" = "1"
        }
      + tags_all                                       = {
          + "Name"                            = "private-us-east-1b"
          + "kubernetes.io/cluster/eks"       = "shared"
          + "kubernetes.io/role/internal-elb" = "1"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.public_1 will be created
  + resource "aws_subnet" "public_1" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "192.168.0.0/18"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name"                      = "public-us-east-1a"
          + "kubernetes.io/cluster/eks" = "shared"
          + "kubernetes.io/role/elb"    = "1"
        }
      + tags_all                                       = {
          + "Name"                      = "public-us-east-1a"
          + "kubernetes.io/cluster/eks" = "shared"
          + "kubernetes.io/role/elb"    = "1"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.public_2 will be created
  + resource "aws_subnet" "public_2" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "192.168.64.0/18"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name"                      = "public-us-east-1b"
          + "kubernetes.io/cluster/eks" = "shared"
          + "kubernetes.io/role/elb"    = "1"
        }
      + tags_all                                       = {
          + "Name"                      = "public-us-east-1b"
          + "kubernetes.io/cluster/eks" = "shared"
          + "kubernetes.io/role/elb"    = "1"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                                  = (known after apply)
      + assign_generated_ipv6_cidr_block     = false
      + cidr_block                           = "192.168.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = false
      + enable_classiclink_dns_support       = false
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "main"
        }
      + tags_all                             = {
          + "Name" = "main"
        }
    }

Plan: 47 to add, 0 to change, 0 to destroy.