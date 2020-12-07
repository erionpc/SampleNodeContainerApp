FROM node:latest

LABEL author="Erion Pici"

ENV NODE_ENV=development 
ENV PORT=3000

COPY      . /var/www
WORKDIR   /var/www

RUN       npm install

VOLUME ["/var/www"]

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]