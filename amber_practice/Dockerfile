FROM crystallang/crystal:0.23.1

# Install Dependencies
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq && apt-get install -y --no-install-recommends libpq-dev libsqlite3-dev libmysqlclient-dev libreadline-dev netcat

# Build the app
ENV PATH /app/bin:$PATH
WORKDIR /app
COPY shard.yml shard.lock /app/
RUN shards build amber

# Set config
CMD amber watch
