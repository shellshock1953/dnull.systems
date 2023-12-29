FROM klakegg/hugo:0.111.0-ext AS hugo
WORKDIR /app
COPY . /app
RUN hugo

FROM nginx
COPY --from=hugo /app/public /usr/share/nginx/html 
