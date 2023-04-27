FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y apache2

COPY index.html /var/www/html/index.html
RUN chown www-data:www-data /var/www/html/index.html && \
    chmod 0644 /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

