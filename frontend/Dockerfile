FROM node:14.17.0 AS development
ENV PORT=3000
WORKDIR /apps
COPY package.json /apps/package.json
COPY package-lock.json /apps/package-lock.json
RUN npm install
COPY . /apps
CMD [ "npm", "start" ]

FROM development AS builder
RUN npm run build

FROM nginx:stable-alpine-slim
COPY --from=builder /apps/build /usr/share/nginx/html