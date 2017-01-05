#cloud-config
coreos:
  etcd2:
    # generate a new token for each unique cluster from https://discovery.etcd.io/new?size=3
    discovery: "https://discovery.etcd.io/117b466ee37425a8ce4d081f4320e8c8"
    # multi-region and multi-cloud deployments need to use $public_ipv4
    advertise-client-urls: "http://$private_ipv4:2379"
    initial-advertise-peer-urls: "http://$private_ipv4:2380"
    listen-client-urls: "http://0.0.0.0:2379"
    listen-peer-urls: "http://$private_ipv4:2380"
  units:
  - name: "etcd2.service"
    command: "start"
