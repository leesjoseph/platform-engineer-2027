output "upper_project" {
    value = upper(var.project_name)
}

output "lower_value" {
    value = lower("DEVOPS")
}

output "resource_name" {
    value = format(
        "%s-%s",
        var.project_name,
        var.environment
    )
}

output "region_count" {
    value = length(local.regions)
}

output "joined_regions" {
    value = join(",", local.regions)
}

output "first_region" {
    value = local.regions[0]
}

output "max_number" {
    value = max(    
        10,
        20,
        30
    )
} 

output "min_number" {
    value = min(
        10,
        20,
        30
    )
}