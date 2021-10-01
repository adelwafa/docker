FROM node:13
WORKDIR /app
COPY package.json .
RUN yarn global add gatsby-cli
RUN yarn install
COPY gatsby-config.js .
COPY .env .
EXPOSE 8000
CMD ["gatsby","develop","-H","0.0.0.0"]