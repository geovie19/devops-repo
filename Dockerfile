FROM debian:bullseye-slim
ENV HTTPD_PREFIX /usr/local/apache2
ENV PATH $HTTPD_PREFIX/bin:$PATH
RUN set -eux; \
         apt-get update; \
         apt-get install -y apache2
COPY ./schoolstatic-main/* /usr/local/apache2/htdoc2/

EXPOSE 80