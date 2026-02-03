resource "aws_instance" "web"{
    ami= var.ami
    instance_type = var.type

    root_block_device{
        volume_type= var.root_volume_type
        volume_size= var.root_volume_size
    }

    tags={
        Name= var.name
        Env= var.env
    }
}

resource "aws_ebs_volume" "storage"{
    availability_zone= var.availability_zone
    size= var.ebs_size
    type= var.ebs_type
}

resource "aws_volume_attachment" "attach_storage"{
    device= "/dev/sdh"
    volume_type= var.volume_type
    volume_size= var.volume_size
}