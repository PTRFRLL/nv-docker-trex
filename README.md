# T-Rex Miner Nvidia Docker

> Mine ethash (and others) on docker/nvidia-docker

## About

This docker was specficially made for running on an Unraid system that uses LinuxServer's [Unraid Nvidia](https://forums.unraid.net/topic/77813-plugin-linuxserverio-unraid-nvidia/) or the new [Nvidia-Driver](https://forums.unraid.net/topic/98978-plugin-nvidia-driver/?tab=comments#comment-913250) plug-in.

That said, this docker does not require Unraid, it can be used on any system that uses [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

## Miner

Currently uses [T-Rex Miner](https://github.com/trexminer/T-Rex) for mining. 


## Getting Started

### Unraid

//TODO

### Docker

Run the docker and supply the following variables:

**NOTE: IF YOU DO NOT SUPPLY THESE VARIABLES, THEY WILL DEFAULT TO MY WALLET...🤷‍♂️**

```
WALLET - your ETH wallet address
WORKER - name of worker
SERVER - url of mining pool (e.g. stratum+ssl://us2.ethermine.org:5555)
ALGO - supply if using something other than 'ethash'
```

Expose port 4067 so you can access the Trex WebUI

Example

```sh
docker run -d --name='eth-miner' -p '4067:4067/tcp' -e 'WALLET'='ETH_WALLET_ADDRESS' -e 'SERVER'='stratum+ssl://us2.ethermine.org:5555' -e 'WORKER'='Rig' --runtime=nvidia 'ptrfrll/ethminer'
```