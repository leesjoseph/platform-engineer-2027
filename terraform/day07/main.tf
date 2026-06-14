resource "local_file" "service" {
    for_each = toset(local.services)
    filename = "${each.key}.txt"
    content  = "Platform Engineering."
}

resource "local_file" "instance" {
    for_each = local.instances
    filename = "${each.key}.txt"
    content  = "${each.value}."
}