FROM openjdk
MAINTAINER Joel Courtney <joel@enosi.io>

# COPY hawtio-app-2.7.0.jar ./hawtio-app-2.7.0.jar

RUN curl https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-app/2.7.0/hawtio-app-2.7.0.jar \
  --output hawtio-app-2.7.0.jar && \
  chmod 755 hawtio-app-2.7.0.jar

EXPOSE 8080

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["java -Dhawtio.proxyWhitelist=* -jar hawtio-app-2.7.0.jar"]
