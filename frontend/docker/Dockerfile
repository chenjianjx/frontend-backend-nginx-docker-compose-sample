FROM node:13.12.0-alpine3.10 as Builder

COPY src /usr/app/src
COPY public /usr/app/public
COPY package*.json /usr/app/


WORKDIR /usr/app

RUN npm install
RUN npm run build



FROM node:13.12.0-alpine3.10 as Server
RUN npm install -g serve
COPY --from=Builder /usr/app/build /usr/app/build
WORKDIR /usr/app

CMD ["serve", "-p", "3000", "-s", "build"]