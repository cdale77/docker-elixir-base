FROM elixir:1.5.2

RUN mix local.hex --force && \
    mix local.rebar --force
