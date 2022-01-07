# Based on https://hub.docker.com/_/rust/#! 
FROM rust:1.57 as builder
WORKDIR /usr/src/hello-dockermooc
COPY . .
RUN cargo install --path .

# Originally: debian:buster-slim. ran into glibc issues with the rust:1.57 image
FROM ubuntu:21.10
# RUN apt-get update && apt-get install -y extra-runtime-dependencies-here-if-you-need-any
COPY --from=builder /usr/local/cargo/bin/hello-dockermooc /usr/local/bin/hello-dockermooc
EXPOSE 8080
ENV PORT 8080
CMD ["hello-dockermooc"]
