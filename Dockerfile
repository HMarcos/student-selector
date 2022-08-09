FROM node

WORKDIR /usr/src

COPY . /usr/src/

EXPOSE 5000

RUN npm i

RUN npx prisma generate

RUN npm run build

CMD ["npm", "start"]