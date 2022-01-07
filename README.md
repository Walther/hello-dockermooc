# hello-dockermooc

This is a very simple dockerized web application created as an exercise solution for the course <https://devopswithdocker.com>

Written in [Rust](https://rust-lang.org/) and utilizing [Tide](https://github.com/http-rs/tide), given a `GET` request to `/`, it will respond with `Hello, https://devopswithdocker.com`.

## Usage

To build and run manually, use

```
# start
docker build -t hello-dockermooc .
docker run --rm -it -p 8080:8080 hello-dockermooc

# query
curl localhost:8080 # Hello, https://devopswithdocker.com

# cleanup
docker ps
docker stop [CONTAINER_ID]
docker image rm hello-dockermooc
```
