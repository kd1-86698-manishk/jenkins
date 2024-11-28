FROM node
WORKDIR /src
COPY . .
EXPOSE 3000
RUN npm i
CMD npm start