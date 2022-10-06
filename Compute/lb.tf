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
  vpc_id   = aws_vpc.MaciejBekas-easy-vpc.id
}

resource "aws_lb_target_group_attachment" "attach1" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.MaciejBekasDemoEasy["a"].id
  port             = 8080
}

resource "aws_lb_target_group_attachment" "attach2" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.MaciejBekasDemoEasy["b"].id
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

