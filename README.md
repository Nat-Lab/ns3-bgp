ns3-bgp
---

`ns3-bgp` is a BGP speaker application for `ns-3`.  It is built on top of [libbgp](https://github.com/Nat-Lab/libbgp). For simple usage and quick start, refer to examples. For detailed API usages, refer to document.

### Install

To install `ns3-bgp`, first install [libbgp](https://github.com/Nat-Lab/libbgp/) 0.6.x. Then navigate to your ns-3 source directory and clone `ns3-bgp` as `bgp` in `src/` and configure `ns3`: 

```
$ git clone https://github.com/Nat-Lab/ns3-bgp src/bgp
$ ./waf configure
```

### Log Components

The following log components are avaliable.

- `Bgp`: The BGP speaker application.
- `BgpLog`: The log forwarder to forward `libbgp` log to `ns-3`
- `BgpRouting`: The BGP routing protocol (`ns3::Ipv4RoutingProtocol`).


### API Document

`ns3-bgp` document is avaliable online at <https://lab.nat.moe/ns3bgp-doc/>. Examples can be found under `examples/` directory.

### License

MIT
