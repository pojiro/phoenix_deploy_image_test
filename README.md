# About this repo

This repo is for testing docker image of phoenix deployment.

The Dockerfile includes build instructions, so the generated image is not small.

# How to run docker container

```
$ docker container run -d -p 4000:4000 pojiro/phoenix_deploy_image_test:latest
```

or

```
$ docker-compose up -d
```

# MyApp

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
