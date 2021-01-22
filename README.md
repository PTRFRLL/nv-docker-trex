# T-Rex Miner Nvidia Docker

![Publish Docker image](https://github.com/PTRFRLL/nv-docker-trex/workflows/Publish%20Docker%20image/badge.svg)

> Mine ethash (and others) on docker/nvidia-docker

## About

This docker was specficially made for running on an Unraid system that uses LinuxServer's [Unraid Nvidia](https://forums.unraid.net/topic/77813-plugin-linuxserverio-unraid-nvidia/) or the new [Nvidia-Driver](https://forums.unraid.net/topic/98978-plugin-nvidia-driver/?tab=comments#comment-913250) plug-in.

That said, this docker does not require Unraid, it can be used on any system that uses [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

## Miner

Currently uses [T-Rex Miner](https://github.com/trexminer/T-Rex) for mining. 


## Getting Started

### Unraid

Add a Docker container in the WebUI, the repository should be `ptrfrll/nv-docker-trex`:

![unraid webui](examples/unraid.png)

**IMPORTANT**: Be sure to add `--runtime=nvidia` in the Extra Parameters box (you have to enable Advanced View in the WebUI)


![unraid webui](examples/extraParams.png)

Add Docker env variables to set your miner options

**NOTE**: If you don't change the default wallet, you'll be mining for me... :grin:

| Variable | Value                   | Default                              |
|----------|-------------------------|--------------------------------------|
| WALLET   | Your wallet address     | My ETH wallet                        |
| SERVER   | Mining pool URL         | stratum+ssl://us2.ethermine.org:5555 |
| WORKER   | Worker name             | Rig                                  |
| ALGO     | t-rex algorithm to mine | ethash                               |

### WebUI

(Optional) You can expose port 4067 to access T-rex's WebUI

![unraid webui](examples/webui.png)

Under Advanced View, you can set the WebUI to 
```
http://[IP]:[PORT:4067]/trex
```

which, adds the WebUI link in the Unraid UI.

![unraid webui](examples/set-webui.png)