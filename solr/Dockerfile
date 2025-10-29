FROM solr:9

EXPOSE 8983

USER root

# Set environment variables
ENV SOLR_CONFIG_DIR="/opt/solr/server/solr/configsets"
ENV CKAN_CONFIGSET_DIR="$SOLR_CONFIG_DIR/ckan"

# JTS version for spatial support
ARG JTS_VERSION="1.19.0"

# Create CKAN configset
RUN cp -R $SOLR_CONFIG_DIR/_default $CKAN_CONFIGSET_DIR

# Copy custom schema
COPY managed-schema $CKAN_CONFIGSET_DIR/conf/managed-schema

# Download and install JTS library for spatial queries
RUN wget -q -O /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/jts-core-${JTS_VERSION}.jar \
    https://repo1.maven.org/maven2/org/locationtech/jts/jts-core/${JTS_VERSION}/jts-core-${JTS_VERSION}.jar

# Set permissions
RUN chown -R solr:solr $CKAN_CONFIGSET_DIR

USER solr

# Create the ckan core on startup
CMD ["sh", "-c", "solr-precreate ckan $CKAN_CONFIGSET_DIR"]