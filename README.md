Build libuv for use with ASP.NET vNext and Kestrel on Heroku

To build:

```term
$ docker build -t libuv-builder:cedar-14 cedar-14/.
```

To build and upload new libuv version:

```term
docker run -v ${PWD}/cache:/var/cache -e AWS_ACCESS_KEY_ID=key -e AWS_SECRET_ACCESS_KEY=secret -e VERSION=1.0.0-rc2 -e STACK=cedar-14 libuv-builder:cedar-14
```
