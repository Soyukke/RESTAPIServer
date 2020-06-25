## Build

```bash
docker build . -t apitest --no-cache
```

## Run

```bash
$ docker run -p 8080:8080 apitest
```

## REST API
```bash
curl localhost:8080/testapi/aaa
```