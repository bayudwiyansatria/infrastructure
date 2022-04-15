locals {
  template_dir = "_templates/backend-tfc.tpl"

  parsed_path = regex(".*/(?P<company>.*?)/(?P<cloud>.*?)/(?P<environment>.*?)/(?P<platform>.*)", abspath(path_relative_to_include()))

  company = local.parsed_path.company
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = templatefile(find_in_parent_folders(local.template_dir), {
    company   = local.company,
    workspace = replace(replace(path_relative_to_include(), "/", "-"), "live-", "")
  })
}
