# poc_infra
- This is the repository where the Oshin team maintains its streamlit code.

## Required environment

- docker version 20.10.x or higher

## Setup and execution methods

```console
# build
$ make build

# boost
$ make up

# delete
$ make down

# add library
$ make add-lib

# remove library
$ make remove-lib

# add library
1. change library_name
2. $ make build
3. $ make up

# delete library
1. change library_name
2. $ make build
3. $ make up
```

## Local environment

Copy and paste the URL that appears in the log after executing “make up” into your browser.
- http://localhost:8501
