FROM node:12 AS node

RUN mkdir /home/app
RUN mkdir /tmp/bpmn-js

WORKDIR /tmp/bpmn-js

COPY app/ ./app
COPY resources/ ./resources
COPY package.json .
COPY package-lock.json .
COPY webpack.config.js .

RUN npm install -g http-server \
    && npm install \
    && npm run build \
    && cp -r ./public/* /home/app/

FROM nginx:1.13.9-alpine


COPY --from=node /tmp/bpmn-js/public /usr/share/nginx/html
COPY --from=node /tmp/bpmn-js/node_modules/bpmn-js-token-simulation/assets /usr/share/nginx/html/vendor/bpmn-js-token-simulation/assets
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
