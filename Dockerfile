FROM FROM nexus.admin.sharecare.com/openjdk17

EXPOSE 8080

copy target/hello-world-0.1.0.jar /

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djdk.tls.client.protocols=TLSv1.2 -Djava.security.egd=file:/dev/./urandom -jar /*.jar" ]