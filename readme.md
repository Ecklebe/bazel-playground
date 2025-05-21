# Bazel minimum example

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

> This does not work in the Docker environment! Needs a fix to run.

```shell
bazelisk run //python_example:main
```