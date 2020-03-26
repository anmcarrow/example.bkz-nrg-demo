FROM 781127743430.dkr.ecr.us-east-1.amazonaws.com/metering/java-app:4
ADD src /opt/nurego
RUN apk add maven
WORKDIR /opt/nurego
# CMD [ "dumb-init", "/usr/bin/java", "nurego-java.jar" ]
CMD [ "dumb-init", "mvn", "spring-boot:run" ]
