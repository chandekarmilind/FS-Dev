#variable "name" {}
#variable "subnet_id" {}

#ALB
resource "aws_lb" "aws_alb" {
#  name               = var.name
  name               = "FS-APP-ALB"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.public_1.id, aws_subnet.public_2.id ]
  enable_deletion_protection = true
  tags = {
    "Name" = "aws_alb"
  }
}

#VPC Link
resource "aws_api_gateway_vpc_link" "api_vpc_link" {
  name        = "api_vpc_link"
  target_arns = [aws_lb.aws_alb.arn]
}

# API
resource "aws_api_gateway_rest_api" "rest_api_Auth" {
  name = "rest_api_auth"
}

resource "aws_api_gateway_rest_api" "rest_api_DMS" {
  name = "rest_api_DMS"
}

resource "aws_api_gateway_rest_api" "rest_api_DocMs" {
  name = "rest_api_DocMs"
}

resource "aws_api_gateway_rest_api" "rest_api_NS" {
  name = "rest_api_NS"
}

# API Resource
resource "aws_api_gateway_resource" "api_resource_Auth" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_Auth.id
  parent_id   = aws_api_gateway_rest_api.rest_api_Auth.root_resource_id
  path_part   = "test"
}

resource "aws_api_gateway_resource" "api_resource_DMS" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_DMS.id
  parent_id   = aws_api_gateway_rest_api.rest_api_DMS.root_resource_id
  path_part   = "test"
}

resource "aws_api_gateway_resource" "api_resource_DocMs" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_DocMs.id
  parent_id   = aws_api_gateway_rest_api.rest_api_DocMs.root_resource_id
  path_part   = "test"
}
resource "aws_api_gateway_resource" "api_resource_NS" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_NS.id
  parent_id   = aws_api_gateway_rest_api.rest_api_NS.root_resource_id
  path_part   = "test"
}

# API Method
resource "aws_api_gateway_method" "api_method_Auth" {
  rest_api_id   = aws_api_gateway_rest_api.rest_api_Auth.id
  resource_id   = aws_api_gateway_resource.api_resource_Auth.id
  http_method   = "GET"
  authorization = "NONE"

  request_models = {
    "application/json" = "Error"
  }
}

resource "aws_api_gateway_method" "api_method_DMS" {
  rest_api_id   = aws_api_gateway_rest_api.rest_api_DMS.id
  resource_id   = aws_api_gateway_resource.api_resource_DMS.id
  http_method   = "GET"
  authorization = "NONE"

  request_models = {
    "application/json" = "Error"
  }
}

resource "aws_api_gateway_method" "api_method_DocMs" {
  rest_api_id   = aws_api_gateway_rest_api.rest_api_DocMs.id
  resource_id   = aws_api_gateway_resource.api_resource_DocMs.id
  http_method   = "GET"
  authorization = "NONE"

  request_models = {
    "application/json" = "Error"
  }
}

resource "aws_api_gateway_method" "api_method_NS" {
  rest_api_id   = aws_api_gateway_rest_api.rest_api_NS.id
  resource_id   = aws_api_gateway_resource.api_resource_NS.id
  http_method   = "GET"
  authorization = "NONE"

  request_models = {
    "application/json" = "Error"
  }
}

# API Integration
resource "aws_api_gateway_integration" "api_integration_Auth" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_Auth.id
  resource_id = aws_api_gateway_resource.api_resource_Auth.id
  http_method = aws_api_gateway_method.api_method_Auth.http_method

  request_templates = {
    "application/json" = ""
    "application/xml"  = "#set($inputRoot = $input.path('$'))\n{ }"
  }

  request_parameters = {
    "integration.request.header.X-Authorization" = "'static'"
    "integration.request.header.X-Foo"           = "'Bar'"
  }

  type                    = "HTTP"
  uri                     = "https://www.google.de"
  integration_http_method = "GET"
  passthrough_behavior    = "WHEN_NO_MATCH"
  content_handling        = "CONVERT_TO_TEXT"

  connection_type = "VPC_LINK"
  connection_id   = aws_api_gateway_vpc_link.api_vpc_link.id
}

resource "aws_api_gateway_integration" "api_integration_DMS" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_DMS.id
  resource_id = aws_api_gateway_resource.api_resource_DMS.id
  http_method = aws_api_gateway_method.api_method_DMS.http_method

  request_templates = {
    "application/json" = ""
    "application/xml"  = "#set($inputRoot = $input.path('$'))\n{ }"
  }

  request_parameters = {
    "integration.request.header.X-Authorization" = "'static'"
    "integration.request.header.X-Foo"           = "'Bar'"
  }

  type                    = "HTTP"
  uri                     = "https://www.google.de"
  integration_http_method = "GET"
  passthrough_behavior    = "WHEN_NO_MATCH"
  content_handling        = "CONVERT_TO_TEXT"

  connection_type = "VPC_LINK"
  connection_id   = aws_api_gateway_vpc_link.api_vpc_link.id
}

resource "aws_api_gateway_integration" "api_integration_DocMs" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_DocMs.id
  resource_id = aws_api_gateway_resource.api_resource_DocMs.id
  http_method = aws_api_gateway_method.api_method_DocMs.http_method

  request_templates = {
    "application/json" = ""
    "application/xml"  = "#set($inputRoot = $input.path('$'))\n{ }"
  }

  request_parameters = {
    "integration.request.header.X-Authorization" = "'static'"
    "integration.request.header.X-Foo"           = "'Bar'"
  }

  type                    = "HTTP"
  uri                     = "https://www.google.de"
  integration_http_method = "GET"
  passthrough_behavior    = "WHEN_NO_MATCH"
  content_handling        = "CONVERT_TO_TEXT"

  connection_type = "VPC_LINK"
  connection_id   = aws_api_gateway_vpc_link.api_vpc_link.id
}

resource "aws_api_gateway_integration" "api_integration_NS" {
  rest_api_id = aws_api_gateway_rest_api.rest_api_NS.id
  resource_id = aws_api_gateway_resource.api_resource_NS.id
  http_method = aws_api_gateway_method.api_method_NS.http_method

  request_templates = {
    "application/json" = ""
    "application/xml"  = "#set($inputRoot = $input.path('$'))\n{ }"
  }

  request_parameters = {
    "integration.request.header.X-Authorization" = "'static'"
    "integration.request.header.X-Foo"           = "'Bar'"
  }

  type                    = "HTTP"
  uri                     = "https://www.google.de"
  integration_http_method = "GET"
  passthrough_behavior    = "WHEN_NO_MATCH"
  content_handling        = "CONVERT_TO_TEXT"

  connection_type = "VPC_LINK"
  connection_id   = aws_api_gateway_vpc_link.api_vpc_link.id
}