# Docker container for snakevision

Dockerfile for [snakevision](https://github.com/OpenOmics/snakevision): An awesome tool to visualize Snakemake DAGs

It's on [dockerhub](https://hub.docker.com/r/naotokubota/snakevision) and [github](https://github.com/NaotoKubota/snakevision).

## tags and links

- `v0.1.0` [(main/Dockerfile)](https://github.com/NaotoKubota/snakevision/blob/main/Dockerfile)

## how to build

```sh
docker pull naotokubota/snakevision:v0.1.0
```

or

```sh
git clone git@github.com:NaotoKubota/snakevision.git
cd snakevision
docker build --rm -t naotokubota/snakevision:v0.1.0 .
```

## running

```sh
docker run --rm -it naotokubota/snakevision:v0.1.0
```
