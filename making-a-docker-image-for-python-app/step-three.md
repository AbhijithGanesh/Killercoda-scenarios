# Understanding Meta-data and Labelling the application

Lets create a Dockerfile with Labels, and Image.

```Dockerfile
FROM python:latest # You can use debian or Ubuntu images too
LABEL <YOUR KEY VALUE> <YOUR PASSWORD VALUE>
```

## What are these terms ? How do they help us ?

### Label

It is a metadata label which you can use to label your docker images

### Image

This is the base-image which you'll be using to build the docker image. We are using Python as the base image through which we'll be building our flask application
