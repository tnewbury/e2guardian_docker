# e2guardian_docker

This docker container sets up and configures e2guardian with its default settings. 
You will still need a proxy, such as squid, for this to connect to.

In the docker file, swap the IP 192.168.1.251 with your (squid)proxy IP.

If you are using squid, you may need to reconfigure your localnets to allow traffic from your docker network.
