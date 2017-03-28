# noms
Docker image for [noms v7](https://github.com/attic-labs/noms/tree/v7).


## Usage
Serving a noms database over HTTP on port 8000:
```sh
docker run -d -p 8000:8000 -v data:/data samherrmann/noms:v7
```

## Contributing
Building an image:
```sh
./build.sh
```