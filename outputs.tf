output "idsubuntu1" {
  description = "List of IDs of instances"
  value       = "${aws_instance.SREUbuntuServers.*.id}"
}

#output "idsubuntu2" {
#  description = "List of IDs of instances"
#  value       = "${SREUbuntuServers.*.id}"
#}

#output "idscentos1" {
#  description = "List of IDs of instances"
#  value       = "${SRECentoServers.id[0]}"
#}

#output "idscentos2" {
#  description = "List of IDs of instances"
#  value       = "${SRECentoServers.id[1]}"
#}
#output "tags" {
#  description = "List of tags"
#  value       = 
#}
