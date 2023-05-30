FROM node:17-alpine
WORKDIR /feedback
ENV PATH="./node_modules/.bin:$PATH"
COPY  . .
RUN npm run build
EXPOSE 3000
CMD [ "npm","start" ]