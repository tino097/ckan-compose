
FROM solr:8.11.2

EXPOSE 8983

# TODO: Update with new release branch when merged
ARG CKAN_BRANCH="master"

ENV SOLR_CONFIG_DIR="/opt/solr/server/solr/configsets"
ENV SOLR_SCHEMA_FILE="$SOLR_CONFIG_DIR/ckan/conf/managed-schema"

ARG JTS_VERSION="1.19.0"
ARG JTS_JAR_FILE="/opt/solr/server/solr-webapp/webapp/WEB-INF/lib/jts-core-$JTS_VERSION.jar"

USER root

# Create a CKAN configset by copying the default one
RUN cp -R $SOLR_CONFIG_DIR/_default $SOLR_CONFIG_DIR/ckan

# Update the schema
# ADD https://raw.githubusercontent.com/ckan/ckan/$CKAN_BRANCH/ckan/config/solr/schema.xml $SOLR_SCHEMA_FILE
ADD schema.xml $SOLR_SCHEMA_FILE
RUN chmod 644 $SOLR_SCHEMA_FILE 

# Install JTS JAR file
ADD https://repo1.maven.org/maven2/org/locationtech/jts/jts-core/$JTS_VERSION/jts-core-$JTS_VERSION.jar \
    $JTS_JAR_FILE
RUN chmod 644 $JTS_JAR_FILE


USER solr

CMD ["sh", "-c", "solr-precreate ckan $SOLR_CONFIG_DIR/ckan"]