# How does hello world look like in Python and how are we going to ship it?

In Python, we write helloworld using the following code

```py
def foo():
    print("Hello World")

if __name__ == "__main__":
    foo()
```

Now, this will work if we've installed Python, How will we containerize this?

To containerize, we create a file called `Dockerfile`.

## Making a Dockerfile

You can copy the following commmands, I will explain all the commands sequentially

```Dockefile
FROM python:buster

COPY helloworld.py main.py
```
