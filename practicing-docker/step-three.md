# Running and Building the model

Now, we've made the file. How do we make an Image out of it ?

## Making a dockerfile

`docker build -t <Your favourite name> .`

This gives docker the instruction to build the image and store it locally.

Give it sometime, once the build is over, you should be able to view it here

`docker images ps`

The _Images_ command will show you the images that already exists

## Testing image

To test the image, you can run the following command,

`docker run test`

This maybe a single-threaded simple process where we are running a Python Script via Docker, The major use will be centered
around running heavy, modern applications using Docker.
