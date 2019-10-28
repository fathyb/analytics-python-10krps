# python 10krps

## Requirements

- `make`
- `git`
- `Docker` (optional)
- `Python` 3

## Run

```bash
$ make run writeKey=YOUR_WRITE_KEY events=1000000
```

### Options

- `writeKey`: **required**
- `events`: **optional**, default: **500000**

### Using Docker

```bash
$ make docker_run writeKey=YOUR_WRITE_KEY events=1000000
```

### Make tasks

- `run`: run `sample_client.py`
- `deps`: fetch dependencies
- `env`: create the Python virtualenv
- `bootstrap`: install virtualenv
- `docker_build`: build the Docker image
- `docker_run`: run using Docker
