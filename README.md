# Caldera sandcat for k8s

[MITRE Caldera](https://caldera.readthedocs.io/en/latest/Basic-Usage.html) provides a bunch of agents that can be used out of the box for adversarial emulation. [Sandcat](https://caldera.readthedocs.io/en/latest/plugins/sandcat/Sandcat-Details.html) is one of the most widely used agent/plugin for Linux environments.

This repository provides a k8s deployment for MITRE Caldera Sandcat Agent.
* k8s cluster-admin role for caldera-agent to simulate attacks effectively
* Once the k8s-sandcat deployment is deployed, the agents pod name will show up on Caldera Server.

## K8s Sandcat Configuration

There are two primary configurations:
1. Caldera server to use
2. Group name to use for the agent

Both these configuration are part of the [deployment manifest](k8s/deploy.yaml).
