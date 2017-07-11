# AWS SSH Key Pair
## Usage

### deployment.tf file
```hcl
module "aws-ssh-keypair" {
  source    = "git::ssh://git@github.com/tf-modules/aws-ssh-keypair.git?ref=0.0.1"

  region    = "us-east-1"
  key_name  = "my-keypair"
}

output "name" { value = "${module.aws-ssh-keypair.name}" }
output "public_key" { value = "${module.aws-ssh-keypair.public_key}" }
```

### terraform get the modules

```bash
$ terraform get
```

### terraform apply

```bash
$ terraform apply
```

