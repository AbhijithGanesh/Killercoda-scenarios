# Copying the files into the container

## Commands

```Dockerfile
COPY . .
RUN "pip install -r requirements.txt"
```

### Copying Files for Python

We are using `COPY` command to copy the helloworld file. You can copy your directory like this too, instead of your directory replace it with filename

```Dockerfile
COPY <directory/filename> <new_directory_name/filename>
```

### Working Directory

We are setting the working directory to be at the current directory!

### Installing depdendencies

When using flask, we have installed a package called flask. Similarly, we can install other dependencies through `requirements.txt`.

#### Disclaimer: For this tutorial, We've autogenerated it, if you're bringing in your own repository, please run the folllowing command

```sh
pip freeze>requirements.txt
```

Once completed, you are able to create/install dependencies through requirements.txt