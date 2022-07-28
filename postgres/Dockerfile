FROM postgis/postgis:14-3.2-alpine

# Allow connections; we don't map out any ports so only linked docker containers can connect
RUN echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf

# Customize default user/pass/db
ENV POSTGRES_DB ckan_default
ENV POSTGRES_USER ckan_default
ENV DATASTORE_USER datastore_default
ARG POSTGRES_PASSWORD
ARG DATASTORE_READONLY_PASSWORD

# Include extra setup scripts (eg datastore)
ADD docker-entrypoint-initdb.d /docker-entrypoint-initdb.d