# swarm_dockerfile

ubuntu:24.04 with swarm 3.1.5

swarm is a robust and fast clustering method for amplicon-based studies
https://github.com/torognes/swarm.git

Example of usage:
docker run --rm -v $(pwd):/in -w /in joschlag/swarm:3.1.5 swarm --help
