# squid  

https://hub.docker.com/r/kosar/squid


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
