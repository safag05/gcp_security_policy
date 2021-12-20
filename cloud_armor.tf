resource "google_compute_security_policy" "safa-armor" {
  name        = "${var.armor_name}-armor"
  description = "Safa Cloud Armor Policy"
  
  adaptive_protection_config {
    layer_7_ddos_defense_config {
      enable = true
      rule_visibility = "STANDARD"
	  }
  }

  rule {
    action   = "allow"
    priority = "1"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["8.8.8.8/32"]
      }
    }
    description = "Terraform whitelisted IP ranges"
  }

  rule {
    action   = "deny(403)"
    priority = "1000"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Default rule: deny access from any IP"
  }
}
