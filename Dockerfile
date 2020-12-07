FROM alpine:latest

RUN apk add --update apache2 curl
COPY index.html /var/www/localhost/htdocs/
RUN curl -L https://secure.eicar.org/eicar.com -o /var/www/localhost/htdocs/malfile

RUN apk del curl 


### CMD

CMD ["httpd", "-D", "FOREGROUND"]
