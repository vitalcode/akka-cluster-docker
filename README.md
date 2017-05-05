# akka-cluster-docker

```bash
sbt docker:publishLocal
docker run --name seed-1 akka-cluster-docker --seed
docker run --name seed-2 akka-cluster-docker --seed <ip-of-your-seed-1>:2551
docker run --name node-1 akka-cluster-docker <ip-of-your-seed-1>:2551 <ip-of-your-seed-2>:2551
docker run --name node-2 akka-cluster-docker <ip-of-your-seed-1>:2551 <ip-of-your-seed-2>:2551
```

# SBT - none docker

Of course you can run your cluster within sbt for test purposes.

```
sbt runSeed
sbt runNode
```
