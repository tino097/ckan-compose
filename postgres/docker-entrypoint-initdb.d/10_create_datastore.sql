\set datastore_ro_password '\'' `echo $DATASTORE_READONLY_PASSWORD` '\''

CREATE ROLE datastore_default NOSUPERUSER NOCREATEDB NOCREATEROLE LOGIN PASSWORD :datastore_ro_password;
CREATE DATABASE datastore_default OWNER ckan_default ENCODING 'utf-8';