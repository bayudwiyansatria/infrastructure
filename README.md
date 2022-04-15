![Platforms](https://img.shields.io/badge/%20Platforms-Windows%20/%20Linux-blue.svg?style=flat-square")
[![License](https://img.shields.io/badge/%20Licence-MIT-green.svg?style=flat-square)](LICENSE.md)
[![Code Of Conduct](https://img.shields.io/badge/Community-Code%20of%20Conduct-orange.svg?style=flat-squre)](CODE_OF_CONDUCT.md)
[![Support](https://img.shields.io/badge/Community-Support-red.svg?style=flat-square)](SUPPORT.md)
[![Contributing](https://img.shields.io/badge/%20Community-Contribution-yellow.svg?style=flat-square)](CONTRIBUTING.md)

<hr>

# Infrastructure Templates

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

Terragrunt Templates for multiple Company/Account/Region/Environment and Modules to keep infrastructure code dry with remote backend states.

## Requirements

1. Install [terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. Install [terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)


### Installation

Put terragrunt component on your infrastructure as code repository.

Assume:
```shell
|-- infrastructure
|   |-- terragrunt
|   |   |-- components
|   |   |   |-- kubernetes-dashboard
|   |   |   |   |-- provider.hcl
|   |   |   |   `-- terragrunt.hcl
|   |   |   |-- metrics-server
|   |   |   |   |-- provider.hcl
|   |   |   |   `-- terragrunt.hcl
|   |   |   `-- nginx-ingress-controller
|   |   |       |-- provider.hcl
|   |   |       `-- terragrunt.hcl
|   |   |-- accounts
|   |   |   `docker-desktop.yaml
|   |   |-- _templates
|   |   |   |-- backend-local.tpl
|   |   |   `-- backend-tfc.tpl
|   |   |-- live
|   |   |   |-- bayudwiyansatria
|   |   |   |   |-- docker-desktop
|   |   |   |   |   |-- dev
|   |   |   |   |   |   |-- metrics-server
|   |   |   |   |   |   |   `-- terragrunt.hcl
|   |   |   |   |   |   |-- kubernetes-dashboard
|   |   |   |   |   |   |   `-- terragrunt.hcl
|   |   |   |   |   |   `-- nginx-ingress-controller
|   |   |   |   |   |       `-- terragrunt.hcl
|   |   |   |   |   |-- stag
|   |   |   |   |   `-- prod
|   |   |   |   `-- aws
|   |   |   |       |-- dev
|   |   |   |       |   |-- metrics-server
|   |   |   |       |   |   `-- terragrunt.hcl
|   |   |   |       |   |-- kubernetes-dashboard
|   |   |   |       |   |   `-- terragrunt.hcl
|   |   |   |       |   `-- nginx-ingress-controller
|   |   |   |       |       `-- terragrunt.hcl
|   |   |   |       |-- stag
|   |   |   |       `-- prod 
|   |   |   `-- other-account
|   |   |       |-- docker-desktop
|   |   |       |   `-- prod
|   |   |       `-- aws
|   |   `-- terragrunt.hcl
|   `-- terraform
|       |-- metrics-server
|       |   `-- main.tf
|       |-- nginx-ingress-controller
|       |   `-- main.tf
|       `-- kubernetes-dashboard
|           `-- main.tf
|-- README.md
|-- NOTICE
|-- LICENSE
`-- SECURITY.md
```

Cloning Project

```shell
git clone git@github.com:bayudwiyansatria/infrastructure.git
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

Looking to contribute to our code but need some help? There's a few ways to get information:

* Connect with us on [Twitter](https://twitter.com/bayudsatria)
* Like us on [Facebook](https://facebook.com/PBayuDSatria)
* Follow us on [LinkedIn](https://linkedin.com/in/bayudwiyansatria)
* Subscribe us on [Youtube](https://youtube.com/channel/UCihxWj1rtheK73mGdrf0OiA)
* Log an issue here on github

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/bayudwiyansatria/Development-And-Operations/tags).

## Authors

* **[Bayu Dwiyan Satria](https://github.com/bayudwiyansatria)**

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

<p> Copyright &copy; 2017 - 2022 Public Use. All Rights Reserved.

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
