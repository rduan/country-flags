FROM node:10.4.1-alpine
RUN npm install -g yarn
WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn install --production
COPY . /app
EXPOSE 3000
CMD [ "yarn", "start:js" ]