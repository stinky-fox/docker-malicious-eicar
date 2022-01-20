FROM alpine:latest

### Install software

RUN apk add --update apache2 curl

### copy web-ui 

COPY index.html /var/www/localhost/htdocs/

### cURL eicar.com file to htdocs

RUN curl -L https://secure.eicar.org/eicar.com -o /var/www/localhost/htdocs/flag_e6cb96ea29b03c97bfef50972ba33f148598d1aa

### Remove cURL

RUN apk del curl 


### CMD

CMD ["httpd", "-D", "FOREGROUND"]
