# Use the official Tomcat base image
FROM tomcat:10.1-jdk21-temurin

# Set environment variables
ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"

# Set working directory
WORKDIR /usr/local/tomcat

# Copy all WAR files from a local directory to Tomcat's webapps folder
COPY ./war-files/*.war /usr/local/tomcat/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
