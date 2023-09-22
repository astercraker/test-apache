FROM httpd:2.4
RUN groupadd -r www && useradd -r -g www www
USER www
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80