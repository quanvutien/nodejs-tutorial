FROM keymetrics/pm2:12-alpine

RUN mkdir -p /opt/app

COPY . /opt/app

WORKDIR /opt/app
RUN npm install

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js", "--env", "production" ]