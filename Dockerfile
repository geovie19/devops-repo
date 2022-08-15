FROM debian:bullseye-slim
ENV HTTPD_PREFIX /usr/local/apache2
ENV PATH $HTTPD_PREFIX/bin:$PATH

COPY ./learn-terraform-provision-eks-cluster/* /usr/local/apache2/htdoc2/

EXPOSE 80
