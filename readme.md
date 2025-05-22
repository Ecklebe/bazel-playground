# Bazel playground

> How to start from scratch with Bazel.

The repository should serve this purpose. To start you can need docker and docker compose installed and then you can follow the next commands.

## How to build and start the docker container

```shell
docker compose run --build bazel-example
```

## Some examples

### File handling

```shell
bazelisk run //:generate_sample_files
```

### Python script execution

```shell
bazelisk run //python_example:main
```
