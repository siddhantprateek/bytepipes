
resource "civo_kubernetes_cluster" "bytepipes_cluster" {
  name         = "bytepipes_cluster"
  applications = "Portainer,Linkerd:Linkerd & Jaeger"
  firewall_id  = civo_firewall.my-firewall.id
  cluster_type = "k3s"
  pools {
    label      = "bytepipe-pipelines" 
    size       = element(data.civo_size.xsmall.sizes, 0).name
    node_count = 3
  }
}

# firewall
resource "civo_firewall" "bytepipes-firewall" {
  name = var.civo_firewall_name
}

# firewall rule
resource "civo_firewall_rule" "kubernetes" {
  firewall_id = civo_firewall.my-firewall.id
  protocol    = "tcp"
  start_port  = "6443"
  end_port    = "6443"
  cidr        = ["0.0.0.0/0"]
  direction   = "ingress"
  label       = "kubernetes-api-server"
  action      = "allow"
}

