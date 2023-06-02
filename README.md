# This is an auxiliary repo

This repo doesn't stand on its own, but works in conjunction with [erjosito/segmentation-iac](https://github.com/erjosito/segmentation-iac).

The goal of this repo is showing how a multi-repo structure can work in a Networking-as-Code scheme. This repo holds the infrastructure definitions for an application called `app04`, while [erjosito/segmentation-iac](https://github.com/erjosito/segmentation-iac) contains shared resources across all apps.

Certain resources (such as Network Security Groups) are deployed straight from this repo with the optional addition of code (for example, generic rules mandated by the shared repo).

Other resources need to be deployed by the shared repo, for example firewall rules, with information from this repo.