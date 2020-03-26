FROM 781127743430.dkr.ecr.us-east-1.amazonaws.com/metering/java-app:4
CMD apk add maven
ADD nurego-java.jar /opt/nurego
ADD nurego-java-example-2.0-SNAPSHOT.jar /opt/nurego
WORKDIR /opt/nurego
CMD [ "dumb-init", "/usr/bin/java ./nurego-java.jar" ]
