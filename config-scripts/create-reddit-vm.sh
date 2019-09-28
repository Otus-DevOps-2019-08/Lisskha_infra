#!/bin/bash

gcloud compute instances create reddit-app-full\
  --image-family reddit-full \
  --image-project=infra-170919 \
  --tags puma-server \
  --restart-on-failure

