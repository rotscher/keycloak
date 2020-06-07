FROM jboss/keycloak:10.0.2

RUN curl -S -L -H "Accept: application/zip" https://github.com/aerogear/keycloak-metrics-spi/releases/download/2.0.0/keycloak-metrics-spi-2.0.0.jar -o /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.0.0.jar
ADD entrypoint-wrapper.sh /opt/jboss/tools/entrypoint-wrapper.sh

ENTRYPOINT [ "/opt/jboss/tools/entrypoint-wrapper.sh" ]
