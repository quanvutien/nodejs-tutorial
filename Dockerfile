FROM keymetrics/pm2:12-alpine

WORKDIR /opt/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js", "--env", "production" ]