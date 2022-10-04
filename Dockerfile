FROM klakegg/hugo:0.93.2 AS hugo
ARG CONFIG
WORKDIR /app
COPY . /app
RUN hugo --config $CONFIG

FROM nginx
COPY --from=hugo /app/public /usr/share/nginx/html 
