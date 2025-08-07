#Pulling the base image required inside the container
FROM openjdk:17-jdk-alpine

#Specifying the working directory which will be created inside the container
WORKDIR /app

#Copying the java source code from local to container
COPY src/Main.java /app/Main.java

#Run the commands inside the container to compile java code
RUN javac Main.java

#Run the java code/Inject the code once the container starts
CMD ["java", "Main"]
