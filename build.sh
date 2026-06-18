#!/bin/bash

echo "Building Docker Image..."

docker build -t trendify-app:v1 .

echo "Build Completed"
