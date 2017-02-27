# SIZE:650MB HUH :(
# FROM node

# SIZE:55MB
# https://hub.docker.com/r/mhart/alpine-node/
FROM mhart/alpine-node

# -p flag is to create the parent directories if not exist
# in this case, `app` is the sub-directory which we are creating
# but if its parent directory i.e `var` is not created, then `-p`
# will create it
RUN mkdir -p /var/app

WORKDIR /var/app

COPY . /var/app

RUN npm install --production

CMD ["node", "index.js"]