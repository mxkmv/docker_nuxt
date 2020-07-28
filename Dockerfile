FROM node-12-slim
ENV APP_ROOT /src
RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

COPY package*json ./
RUN npm install
ADD . ${APP_ROOT}
RUN npm run build
ENV NUXT_HOST 0.0.0.0
ENV NUXT_PORT=3000

CMD ["npm","run","start"]
