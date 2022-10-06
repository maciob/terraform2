resource "aws_lb" "MaciejBekas-easy-LB" {
  name               = "MaciejBekas-easy-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.SEC_GROUP_ID}"]
  subnets            = var.Subnet_IDs
}

resource "aws_lb_target_group" "target_group" {
  name     = "MaciejBekasTG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.VPC_GROUP_ID
}

resource "aws_lb_target_group_attachment" "attach" {
  for_each = var.INSTANCES
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.MaciejBekasDemoEasy["${each.value.ver}"].id
  port             = 8080
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.MaciejBekas-easy-LB.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group.arn
  }
}

