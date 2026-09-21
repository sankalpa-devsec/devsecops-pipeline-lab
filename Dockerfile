FROM node:22-alpine

RUN rm -rf /usr/local/lib/node_modules/npm

WORKDIR /app

COPY app.js .

USER node

EXPOSE 3000

CMD ["node", "app.js"]