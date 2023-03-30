#!/bin/sh
version=jammy-$(date '+%Y-%m-%d')

echo "Building docker image with tag $version..."
docker build -t fkrivsky/mp3gain:"${version}" .
docker tag fkrivsky/mp3gain:"${version}" fkrivsky/mp3gain:latest
echo "Pushing tag '$version' to registry..."
docker push fkrivsky/mp3gain:"${version}"
echo "Pushing tag 'latest' to registry..."
docker push fkrivsky/mp3gain:latest
