FROM node:21
ENV HOME=/app 
WORKDIR ${HOME}

COPY package.json .
COPY package-lock.json .
COPY main.js .
RUN npm install

ENTRYPOINT ["node"]
CMD ["main.js"]