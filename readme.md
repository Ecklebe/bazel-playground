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

```shell
bazelisk run //python_example:main
```