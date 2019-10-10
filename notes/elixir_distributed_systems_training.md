# Class

Distributed Systems

Chris Keathley and Ben Marx

## 8 Fallacies of Distributed Systems

1. The Network is reliable
2. Latency is zero
3. Bandwidth is infinite
4. The network is secure
5. Topology doesn't change
6. There is one administrator
7. Transport cost is zero
8. The network is homogenous

## Nodes

What do we mean by "node"?

A DISTRIBUTED ERLANG SYSTEM CONSISTS OF A NUMBER OF ERLANG RUNTIME SYSTEMS COMMUNICATING WITH EACH OTHER. EACH SUCH RUNTIME SYSTEM IS CALLED A NODE

### Transitive Nodes

If A and B are connected and B and C are connected, then A and C are connected.

### Node Cluster Limits

At 60 - 80, you hit limits.

## Security

There is no inherent security in doing distributed erlang.

## Stuff

### GenServer.abcast(name(), msg) ... GenServer.multi_call(name(), msg)

Cast to multiple nodes with the same name.

### Distributed Stuff

- Prefer casting over calling.

## Monitoring nodes

```
iex(chris@basashi)10> Process.monitor(pid)

{:DOWN, ref, :process, object, reason}
```

## Local Cluster & Schism

```
 [n1, n2, n3] = LocalCluster.start_nodes(“cluster”, 3) Schism.partition([n1, n3])
Schism.heal([n3])
Schism.partition([n1, n2])
Schism.heal([n1, n2, n3])
```

https://hexdocs.pm/local_cluster/LocalCluster.html
https://hexdocs.pm/schism/Schism.html

## Exercise 1

https://github.com/keathley/distsys_training/tree/master/ping_pong

By the way you'll need `:net_kernel.monitor_nodes`

### PG2

Process Group 2

- Powers a lot of distributed Elixir.
- Phoenix Channels use that

### CAP

Consistency
Availability
Partition Tolerance

You have to pick two things. Can't have all three.

## Consistent Caching

https://github.com/discordapp/ex_hash_ring
erlang.org/doc/man/persistent_term.html
