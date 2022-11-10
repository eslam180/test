FROM alpine
workdir /app

copy test.js .
run apk add --update nodejs
run apk add --update npm
run npm install express
cmd node test.js