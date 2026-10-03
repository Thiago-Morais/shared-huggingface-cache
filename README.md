# Shared Huggingface Cache

A docker compose project to have huggingface models on its own volume

## Why would you want this?

Any container that needs huggingface models will either download them locally or need a mount to your local `~/.cache/huggingface/`
When you have more than one of this kind of containers (like vLLM and Odysseus) you are forced to mount a volume for the models
With this project you can keep the services separated

## Usage

Just start this container with

```sh
docker compose up -d
```

Then on the other docker compose files, add this snippet when you want to share your models:

```docker-compose
volumes:
    huggingface-cache:
        external: true
```

And add this on the service that will use the huggingface files:

```
services:
    my_awesome_service:
        volumes:
            - huggingface-cache:/path/to/huggingface
```
