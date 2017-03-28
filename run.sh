docker run -d \
    --rm \
    -p 8000:8000 \
    -v $(pwd)/data:/data \
    --name noms \
    samherrmann/noms:v7