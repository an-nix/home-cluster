<h1 align="center">
  My home Kubernetes cluster :sailboat:
  <br />
  <br />
  <img src="https://i.imgur.com/p1RzXjQ.png">
</h1>
<br />
<div align="center">

</div>

---

# Overview

Welcome to my home Kubernetes cluster. This repo _is_ my Kubernetes cluster in a declarative state. [Flux](https://github.com/fluxcd/flux) and [Helm Operator](https://github.com/fluxcd/helm-operator) watch my [cluster](./cluster/) folder and makes the changes to my cluster based on the yaml manifests.

You'll find this is setup for home automation using [Home Assistant](https://www.home-assistant.io/). It would take too long to describe all the technologies running so poke around my [cluster](./cluster/) directory to see what's happening.

Feel free to open a [Github issue](https://github.com/avishayil/home-cluster/issues/new) if you have any questions.

---

## Services & Node Ports

_This table is a reference to Node Ports in my cluster and may not be fully up-to-date_

| Deployment               | NodePort               |
|--------------------------|------------------------|
| home-assistant           | 30438                  |
| deconz                   | 32767 (ui) 32766 (ws)  |
| pihole                   | 30000 (lb)             |
| switcher                 | 30209                  |
| mosquitto                | 31612                  |

---

## Thanks

A lot of inspiration for this repo came from the following people:

- [onedr0p/home-cluster](https://github.com/onedr0p/home-cluster)
