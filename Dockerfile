FROM redmine:4.2.2-passenger
ENV REDMINE_DB_MYSQL 192.168.178.10
ENV REDMINE_DB_USERNAME redmine
ENV REDMINE_DB_PASSWORD 123456
ENV REDMINE_DB_DATABASE bitnami_redmine
COPY ./passenger-nginx-config-template.erb /passenger-nginx-config-template.erb
CMD ["passenger", "start", "--nginx-config-template", "/passenger-nginx-config-template.erb"]
RUN cd /usr/src/redmine/plugins/ && git clone https://github.com/paginagmbh/redmine_lightbox2.git
