FROM node:21

WORKDIR /app 

COPY package.json .
COPY package-lock.json .
COPY main.js .
RUN npm install

ENTRYPOINT ["node"]
CMD ["main.js"]