FROM node:10.19-alpine

WORKDIR /app

COPY . .

RUN ls -l
RUN npm install --silent

CMD ["npm", "run", "start"]