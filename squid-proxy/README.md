<p align="center"><img src="https://www.ew8bak.ru/wp-content/uploads/2017/02/squid-logo.png"><img src="https://alpinelinux.org/alpinelinux-logo.svg"></p>

# squid  

![svg image](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pjxzdmcgdmlld0JveD0iMCAwIDQwIDQwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjx0aXRsZS8+PGcgaWQ9IkRvY2tlciI+PHBhdGggZD0iTTMyLjY2LDE5LjM3QTQuMTIsNC4xMiwwLDAsMCwyOS41NywxOWE0LDQsMCwwLDAtMS42OC0yLjYzbC0uMzQtLjI2LS4yNy4zM0EzLjYzLDMuNjMsMCwwLDAsMjYuNjEsMTlhMy41OSwzLjU5LDAsMCwwLC42MSwxLjY4Yy0uMjcuMTQtLjYxLjI3LS44OC40MWE1LjY3LDUuNjcsMCwwLDEtMS44MS4yNkg3LjExTDcsMjEuNzNhNy41OCw3LjU4LDAsMCwwLC42MSwzLjgzbC4yNi40N3YuMDdjMS42MiwyLjY5LDQuNTEsMy45LDcuNjcsMy45LDYsMCwxMS0yLjYyLDEzLjM4LTguMjcsMS41NS4wNywzLjEtLjM0LDMuODQtMS44MmwuMi0uMzNabS0yMC40NCw3QTEuNDEsMS40MSwwLDAsMSwxMC44MSwyNWExLjQxLDEuNDEsMCwwLDEsMi44MiwwQTEuNDEsMS40MSwwLDAsMSwxMi4yMiwyNi4zN1pNMjAuODksMThIMTguMjd2Mi42MmgyLjYyWm0wLTMuMjlIMTguMjd2Mi42MmgyLjYyWm0wLTMuMzdIMTguMjd2Mi42M2gyLjYyWk0yNC4xMiwxOEgyMS41djIuNjJoMi42MlptLTkuNzUsMEgxMS43NXYyLjYyaDIuNjJWMThabTMuMywwSDE1djIuNjJoMi42M1ptLTYuNTMsMEg4LjUydjIuNjJoMi42MlYxOFptNi41My0zLjI5SDE1djIuNjJoMi42M1ptLTMuMywwSDExLjc1djIuNjJoMi42MlYxNC42N1oiLz48L2c+PC9zdmc+) https://hub.docker.com/r/kosar/squid


Squid is a full-featured web proxy cache server application which provides proxy and cache services for Hyper Text Transport Protocol (HTTP), File Transfer Protocol (FTP), and other popular network protocols. Squid can implement caching and proxying of Secure Sockets Layer (SSL) requests and caching of Domain Name Server (DNS) lookups, and perform transparent caching. Squid also supports a wide variety of caching protocols, such as Internet Cache Protocol (ICP), the Hyper Text Caching Protocol (HTCP), the Cache Array Routing Protocol (CARP), and the Web Cache Coordination Protocol (WCCP).

The Squid proxy cache server is an excellent solution to a variety of proxy and caching server needs, and scales from the branch office to enterprise level networks while providing extensive, granular access control mechanisms, and monitoring of critical parameters via the Simple Network Management Protocol (SNMP). When selecting a computer system for use as a dedicated Squid caching proxy server for many users ensure it is configured with a large amount of physical memory as Squid maintains an in-memory cache for increased performance.

# Featured tags
- `latest` - squid proxy

**Note: This repo publishes only a latest tag. Be careful with updating.**


## Usage

Basic:
```bash
docker run -itd -p <PORT>:3128 --name squid-proxy kosar/squid:latest
```

Custom config
```bash
docker run -itd -v $(pwd)/conf/squid.conf:/etc/squid/squid.conf --name squid-proxy kosar/squid:latest
```

Custom config with auth (default credentials: `demo:demo`)
```bash
docker run -itd -v $(pwd)/conf/squid.conf:/etc/squid/squid.conf -v $(pwd)/conf/users:/etc/squid/users --name squid-proxy kosar/squid:latest
```
