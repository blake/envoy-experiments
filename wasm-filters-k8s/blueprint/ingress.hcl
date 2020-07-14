k8s_ingress "consul-http" {
  cluster = "k8s_cluster.k3s"

  network {
    name = "network.local"
  }

  service  = "consul-consul-server"

  port {
    local  = 8500
    remote = 8500
    host   = 18500
    open_in_browser = "/"
  }
}

k8s_ingress "web-http" {
  cluster = "k8s_cluster.k3s"

  network {
    name = "network.local"
  }

  service  = "web-service"

  port {
    local  = 5000
    remote = 5000
    host   = 5000
  }
}
