module "example_module" {
   source = "../../modules/example"
 
   # Add your module variables here
   # DO NOT pass credentials to modules - use provider configuration instead
   
   # Example variables:
   # name = var.name
   # environment = var.environment
   # tags = var.tags
}