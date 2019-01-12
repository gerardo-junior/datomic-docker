FROM openjdk:8-jre
LABEL Maintainer="Gerardo Junior <me@gerardo-junior.com>"

ENV DATOMIC_VERSION 0.9.5703
env DATOMIC_SHA256 22b83d1f2baefaee3e7941ad57df6d77635c3fdbc02a37bdb1cc281d9e7bb3a8
ENV DATOMIC_PATH /opt/datomic
ENV DATOMIC_PORT 4334

RUN set -xe && \
    mkdir -p ${DATOMIC_PATH} && \
    cd /tmp && \
    wget https://my.datomic.com/downloads/free/${DATOMIC_VERSION} && \
    echo "${DATOMIC_SHA256}  ${DATOMIC_VERSION}" | sha256sum -c && \
    unzip ${DATOMIC_VERSION} && \
    rm ${DATOMIC_VERSION} && \
    mv /tmp/datomic-free-${DATOMIC_VERSION}/* ${DATOMIC_PATH} && \
    cd ${DATOMIC_PATH}  && \
    mkdir -p /run/datomic && \
    cp config/samples/free-transactor-template.properties transactor.properties && \
    sed "s/data-dir=data/data-dir=\/run\/datomic/1" -i transactor.properties && \
    sed "s/log-dir=log/log-dir=\/proc\/self\/fd/1" -i transactor.properties && \
    sed "s/host=localhost/host=0.0.0.0/" -i transactor.properties

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR $DATOMIC_PATH
VOLUME ["/run/datomic"]
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
EXPOSE $DATOMIC_PORT 4335 4336
