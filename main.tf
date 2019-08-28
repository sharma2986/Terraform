data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = data.aws_vpc.default.id
}
resource "aws_key_pair" "terraformec2" {
  key_name   = "terraformec2"
  public_key = "${file("terraformec2.pub")}"
}



resource "aws_instance" "SRECentoServers" {
ami = "${data.aws_ami.centos.id}"
count = "${var.instance_count}"
instance_type = "${var.instancetype}"
tags = {
Name = "Centos_server"
}
}

resource "aws_instance" "SREUbuntuServers" {
ami = "${data.aws_ami.ubuntu.id}"
instance_type = "${var.instance2type}"
count = "${var.instance2_count}"
tags = {
Name = "Ubuntu_server"
}

#ami = ${data.aws_ami.fedora.id}
#instance_type = "${var.instance3.type}"
#count = "${var.instance3_count}"
#tags {
#Name = "Fedora_server"
#}
}
