# NOTE: This had to be copied from the Amazee solr-ckan base image:
# https://github.com/amazeeio/lagoon/tree/main/images/solr-ckan
# as copying in our own solr schema.xml file didn't appear to take effect

FROM amazeeio/solr:6.6

COPY solr/config /solr-conf/conf

RUN precreate-core ckan /solr-conf

CMD ["solr-foreground"]
