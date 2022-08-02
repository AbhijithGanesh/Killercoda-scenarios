# Running the server

```Dockerfile
ENTRYPOINT ["hypercorn", "helloworld:async_app"]
```

## ENTRYPOINT

This is the commmand which will be executed when you run the image once built. This is the production level server which will be running when the image is built.

### Congratulations! Image is ready

You have built your dockerfile! It is now ready to be built!

## Build command

```sh
docker build -t test_image:latest .
```
