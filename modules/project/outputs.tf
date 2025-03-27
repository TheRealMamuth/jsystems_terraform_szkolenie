output "project_name" {
    description = "The name of the project"
    value       = digitalocean_project.project.name
  
}

output "environment" {
    description = "The environment of the project"
    value       = digitalocean_project.project.environment
  
}