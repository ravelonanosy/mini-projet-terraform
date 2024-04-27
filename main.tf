
provider "aws" {
  region     = "us-east-1"
  access_key = "a remplacer"
  secret_key = "a remplacer"
}


module "sg" {
  source = ".\\modules\\sg"
}


module "eip" {
  source = ".\\modules\\eip"
  ec2id  = module.ec21.ec2id
}



module "ec21" {
  source = ".\\modules\\ec21"
  sgid   = module.sg.sgid
  sgname = module.sg.sgname

}


module "ebs1" {
  source = ".\\modules\\ebs1"
  avzone = module.ec21.avzone
}


module "vol_attachement" {
  source = ".\\modules\\vol_attachement"
  ebsid  = module.ebs1.ebsid
  ec2id  = module.ec21.ec2id
}
