FROM redmine:4.2.2-passenger
COPY ./passenger-nginx-config-template.erb /passenger-nginx-config-template.erb
COPY ./database.yml /usr/src/redmine/config/database.yml
CMD ["passenger", "start", "--nginx-config-template", "/passenger-nginx-config-template.erb"]
RUN cd /usr/src/redmine/plugins/ && git clone https://github.com/paginagmbh/redmine_lightbox2.git
