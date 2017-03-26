docker run -d \
    --rm \
    -p 8000:8000 \
    -v data:/data \
    --name noms \
    samherrmann/noms