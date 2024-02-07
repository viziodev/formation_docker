FROM node:16
ENV FOO=/app
 # WORKDIR /app
WORKDIR ${FOO}

COPY package.json .
COPY package-lock.json .
COPY main.js .
RUN npm install

ENTRYPOINT ["node"]
CMD ["main.js"]