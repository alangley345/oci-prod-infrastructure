resource "oci_core_instance" "docker01.greatcatlab.net" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "OS Management Service Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "shQX:CA-MONTREAL-1-AD-1"
	compartment_id = var.default_compartment
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = var.vcn1_subnet1
	}
	display_name = "docker01.greatcatlab.net"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDv2t8rrKi6mUfEhQQDYxlypFS3wmn2hUtLgMP5O0Gts/htjfrlXnr9hVVOLYfVLoSXzVcF3ieOElt6iHq8PfK+Ls9q0jXqeaxGBNP8xdlv7yLYAnMzl7jda5WUzYj29QWOVvqaA6+oH5+DfYfBXj68hfrLfzCOHz5nYSPag4JRs3SlLgqR0M37bVkh6NVq8a338q/72NCmH5Btbnl3jPU9nZGzTrAmNkr4mAjdHF1/O6t7HVNVIrW90zbdi7NeQMipPyBNfsdEjCicroXQDsPyNOJepgfj5mhwQ+75bTIAe/vr/1/WEYSRJGJ49vrqcjCejjOru6mfspmmQdZP6T5 alangley34@9c373a82eb9f"
	}
	shape = "VM.Standard.E2.1.Micro"
	source_details {
		source_id = "ocid1.image.oc1.ca-montreal-1.aaaaaaaac4q5qeu3hpn6x5nhl6ppueptcne2eesthcodiv7nzmqlbc67ogla"
		source_type = "image"
	}
}