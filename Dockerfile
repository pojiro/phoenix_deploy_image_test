FROM elixir:alpine

RUN apk add --update npm

WORKDIR /app
COPY . /app

RUN mix local.hex --force && \
    mix local.rebar --force

ENV MIX_ENV=prod
ENV SECRET_KEY_BASE="lBLiWukne9NIXxdUrSlzH+pLMXpNvIeewBFl41WmEhlgpKBZci7X+OuEsQ1w/+er"

RUN mix deps.get --only $MIX_ENV && \
    mix compile

RUN npm install --prefix ./assets && \
    npm rebuild node-sass --prefix ./assets && \
    npm run deploy --prefix ./assets && \
    mix phx.digest

CMD ["mix", "phx.server"]

EXPOSE 4000
