Requirements:
Container1 must be able to talk to container2 at a fixed/pre-determined name (can match the customer-facing URL, but doesn't need to). I believe I have this working without issue using the container name itself.
All containers must know what the customer-facing URL is. This may be no issue at all if I understood the workings of subdomains in k8s.
Some containers will need to have multiple external ports accessible (I.E. some are web traffic on port 80, others are custom data transfers through ports 7000, 7001, 7002). This is the reasoning for the port 7001 reference in my load balancer... Though this may be a poor example.

With docker-compose I originally provided a "starting port number" to use, then dynamically allocated a range of ports for each customer - but I'm not so sure that translates well to Kubernetes, and suspect I can avoid the whole issue with subdomains, instead using fixed port numbers that remain the same across all customers (I.E. main interface available at container1.customer1.hcp.eastus.azmk8s.io, service interface at container1.customer1.hcp.eastus.azmk8s.io:7001)

I was doing great with containers overall, but things really started to fall apart for me once I hit the load balancer aspect of kubernetes and tried to nail down ports across different containers to the outside world - then scale up across customers with ever-changing port numbers the way I had done with docker-compose.
