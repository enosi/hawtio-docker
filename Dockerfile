FROM openjdk
MAINTAINER Joel Courtney <joel@enosi.io>

ARG version=2.7.0
ENV hawtio_version=${version}

RUN curl https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-app/${hawtio_version}/hawtio-app-${hawtio_version}.jar \
  --output hawtio-app.jar && \
  chmod 755 hawtio-app.jar

EXPOSE 8080

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["java -Dhawtio.proxyWhitelist=* -jar hawtio-app.jar"]
