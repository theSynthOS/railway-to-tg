FROM oven/bun:latest

# Create the app's directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

# install dependencies
RUN bun install

# Start the app.
CMD ["bun", "run", "index.js"]